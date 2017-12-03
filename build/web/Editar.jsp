<%-- 
    Document   : Editar
    Created on : 03-dic-2017, 13:27:35
    Author     : DanVz
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Editar Usuario</h1>
        
        <form name="form" action="<%=request.getContextPath()%>/editar_post" method="post">
            
            <div class="form-group">
              <label for="nombre">Nombre: </label>
              <input type="text" class="form-control" id="nombre" placeholder="Nombre" name="nombr" value="<c:out value='${user.name}' />">
            </div>
            <div class="form-group">
                <input type="hidden" name="id" value="${user.id}"/>
            </div>
            <button type="submit" class="btn btn-primary">Enviar</button>
        </form>
    </body>
</html>
