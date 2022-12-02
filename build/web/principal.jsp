<%-- 
    Document   : principal
    Created on : 2 de dez. de 2022, 14:10:50
    Author     : Celso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Bem vindo, <%=request.getAttribute("user")%></h1>
    </body>
</html>
