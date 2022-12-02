<%-- 
    Document   : cadastroUsuario
    Created on : 2 de dez. de 2022, 14:32:30
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
        <%--
        <jsp:useBean id="usuarioB"  scope="session" class="br.com.senacrs.bean.UsuarioBean"/>
        <jsp:setProperty name="usuarioB" property="*"/>
        --%>
        <form name="cadastroUsuario" action="CadastroUsuarioServlet" method="POST">
            <table border="0">
                <thead>
                    <tr>
                        <th colspan="2">Cadastro de Usuário</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Nome:</td>
                        <td><input type="text" name="nome" value="" size="20" /></td>
                    </tr>
                    <tr>
                        <td>Email:</td>
                        <td><input type="email" name="email" value="" size="20" /></td>
                    </tr>
                    <tr>
                        <td>Endereço</td>
                        <td><input type="text" name="endereco" value="" size="20" /></td>
                    </tr>
                    <tr>
                        <td>Bairro</td>
                        <td><input type="text" name="bairro" value="" size="20" /></td>
                    </tr>
                    <tr>
                        <td>Cidade</td>
                        <td><input type="text" name="cidade" value="" size="20" /></td>
                    </tr>
                    <tr>
                        <td>Login</td>
                        <td><input type="text" name="login" value="" size="20" /></td>
                    </tr>
                    <tr>
                        <td>Senha</td>
                        <td><input type="password" name="senha" value="" size="20" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Cadastrar" name="botaoCadastrar" /></td>
                        <td></td>
                
                </tbody>
            </table>

        </form>
        <%--
        <jsp:getProperty name="usuarioB" property="nome"/>
        --%>
    </body>
</html>
