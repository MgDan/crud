/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelos;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author DanVz
 */
public class UsuariosOperaciones {
    public ArrayList<Usuarios> getUsuarios(){
        ArrayList<Usuarios> arreglo = new ArrayList<Usuarios>();
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session sesion = sf.openSession();
        Transaction ts = sesion.beginTransaction();
        Query q = sesion.createQuery("from Usuarios");
        List<Usuarios> lista = q.list();
        Iterator<Usuarios> items = lista.iterator();
        ts.commit();
        sesion.close();
        while(items.hasNext()){
            Usuarios temp = items.next();
            arreglo.add(temp);
        }
        
        return arreglo;
    }
    
    public void addUsuarios(Usuarios user){
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session sesion = sf.openSession();
        Transaction ts = sesion.beginTransaction();
        sesion.save(user);
        ts.commit();
        sesion.close();
        
    }
    
    public void updateUsuarios(int id, String name){
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session sesion = sf.openSession();
        Transaction ts = sesion.beginTransaction();
        Usuarios usr = (Usuarios) sesion.get(Usuarios.class, id);
        usr.setName(name);
        sesion.update(usr);
        ts.commit();
        sesion.close();
    }
    
    public void deleteUsuarios(int id){
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session sesion = sf.openSession();
        Transaction ts = sesion.beginTransaction();
        Usuarios usr = (Usuarios) sesion.get(Usuarios.class, id);
        sesion.delete(usr);
        ts.commit();
        sesion.close();
        
    }
    
    public Usuarios getById(int id){
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session sesion = sf.openSession();
        Transaction ts = sesion.beginTransaction();
        Usuarios usr = (Usuarios) sesion.get(Usuarios.class, id);
        //sesion.delete(usr);
        ts.commit();
        sesion.close();
        return usr;
    }
}
