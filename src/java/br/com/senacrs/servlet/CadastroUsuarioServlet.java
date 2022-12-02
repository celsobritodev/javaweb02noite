/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package br.com.senacrs.servlet;

import br.com.senacrs.bean.UsuarioBean;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Enumeration;

/**
 *
 * @author Celso
 */
@WebServlet(name = "CadastroUsuarioServlet", urlPatterns = {"/CadastroUsuarioServlet"})
public class CadastroUsuarioServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        UsuarioBean usr = new UsuarioBean();
        usr.setNome(request.getParameter("nome"));
        usr.setEmail(request.getParameter("email"));
        usr.setEndereco(request.getParameter("endereco"));
        usr.setBairro(request.getParameter("bairro"));
        usr.setCidade(request.getParameter("cidade"));
        usr.setLogin(request.getParameter("login"));
        usr.setSenha(request.getParameter("senha"));
        
        request.setAttribute("usuarioB", usr);
        
        request.getRequestDispatcher("apresentaCadastro.jsp").forward(request, response);
        
        /*
        
        String nome = ;
       String email = request.getParameter("email");
       String endereco = request.getParameter("endereco");
       String bairro = request.getParameter("bairro");
       String cidade = request.getParameter("cidade");
       String login = request.getParameter("login");
       String senha = request.getParameter("senha");
       
       request.setAttribute("nome", nome);
       */
        
       Enumeration valor = request.getParameterNames();
       while(valor.hasMoreElements()) {
           String param = (String) valor.nextElement();
           log(param+"  =  "+request.getParameter(param));
       }
       
       
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
