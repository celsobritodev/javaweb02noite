<%-- 
    Document   : apresentaCadastro
    Created on : 2 de dez. de 2022, 16:18:51
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
        <jsp:useBean id="usuarioB" scope ="session" class="br.com.senacrs.bean.UsuarioBean"/>
        Nome: <jsp:getProperty name="usuarioB" property="nome"/>
        Senha: <jsp:getProperty name="usuarioB" property="senha"/>
        Login: <jsp:getProperty name="usuarioB" property="login"/>
        Email: <jsp:getProperty name="usuarioB" property="email"/>
        Endereço: <jsp:getProperty name="usuarioB" property="endereco"/>
        Cidade: <jsp:getProperty name="usuarioB" property="cidade"/>
        Bairro: <jsp:getProperty name="usuarioB" property="bairro"/>
    </body>
</html>
