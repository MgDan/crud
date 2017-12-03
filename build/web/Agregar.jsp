<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuarios</title>
        <%@include file="header.jsp" %>
    </head>
    <body>
        <nav aria-label="breadcrumb" role="navigation">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="<%=request.getContextPath()%>/index">Home</a></li>
              <li class="breadcrumb-item"><a href="#">Library</a></li>
            </ol>
        </nav>
        <h1>Agregar Usuario</h1>
        
        <form name="form" action="<%=request.getContextPath()%>/agregar_post" method="post">
            
            <div class="form-group">
              <label for="nombre">Nombre: </label>
              <input type="text" class="form-control" id="nombre" placeholder="Nombre" name="nombr">
            </div>

            <button type="submit" class="btn btn-primary">Enviar</button>
        </form>
        
    </body>
</html>
