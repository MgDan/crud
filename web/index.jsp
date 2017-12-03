<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="header.jsp" %>
    </head>
    <body>
        <h1>Hello World!</h1>
        <p>
            <a href="<%= request.getContextPath() %>/Agregar" class="btn btn-success" >Agregar</a>
        </p>
        <table class="table table-striped table-dark">                
                    <thead>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Acciones</th>
                    </thead>

            <c:forEach items="${todos}" var="it">

            <tr>
                <td>
                    <c:out value="${it.id}"/>
                </td>
                <td>
                    <c:out value="${it.name}"/>
                </td>
                <td>
                    <a href="<%= request.getContextPath() %>/Editar?id=${it.id}" > Editar </a>
                    <a href="<%= request.getContextPath() %>/Eliminar?id=${it.id}" > Eliminar </a>
                    
                </td>
            </tr>
            </c:forEach>
        </table>
    </body>
</html>
