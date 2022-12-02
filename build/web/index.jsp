<%-- 
    Document   : index
    Created on : 2 de dez. de 2022, 13:35:12
    Author     : Celso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <% 
           if (request.getAttribute("falha") !=null) {
        %>
        <script type="text/javascript"> alert("<%=request.getAttribute("falha")%>");</script>
        <%
            }
         %>
    </head>
    <body>
    <center>
        <img src="login.png" width="346" height="346" alt="login"/>

        <form name="formCad" action="Authentication">
            <table border="0">
                <thead>
                    <tr>
                        <th colspan="2">AUTENTICAÇÃO</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Login:</td>
                        <td><input type="text" name="login" value="" size="20" /></td>
                    </tr>
                    <tr>
                        <td>Senha:</td>
                        <td><input type="password" name="senha" value="" size="20" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Entrar" name="botaoAuth" /></td>
                        <td></td>
                    </tr>
                     <tr>
                         <td><a href="cadastroUsuario.jsp">Cadastre-se</a></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>

        </form>
        
    </center>
        
            </body>
</html>
