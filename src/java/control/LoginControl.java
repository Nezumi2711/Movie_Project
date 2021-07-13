/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import DAO.DAO;
import entity.Account;
import java.io.IOException;
import java.util.Arrays;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author phanh
 */
@WebServlet(name = "LoginControl", urlPatterns = {"/signin"})
public class LoginControl extends HttpServlet {

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
        Cookie arr[] = request.getCookies();
        for (Cookie o : arr) {
            if (o.getName().equals("email")) {
                request.setAttribute("email", o.getValue());
            }
            if (o.getName().equals("rememberMe") && o.getValue().equalsIgnoreCase("[yes]")) {
                request.setAttribute("rememberMe", "1");
            }
        }
        request.getRequestDispatcher("signin.jsp").forward(request, response);
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
        String email = request.getParameter("email");
        String passWord = request.getParameter("password");
        String[] remember = request.getParameterValues("rememberMe");
        String remembers = Arrays.toString(remember);
        DAO dao = new DAO();
        Account a = dao.login(email, passWord);
        if (a == null) {
            request.setAttribute("mess", 1);
            request.getRequestDispatcher("signin.jsp").forward(request, response);
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("acc", a);
            Cookie e = new Cookie("email", email);
            Cookie r = new Cookie("rememberMe", "");
            if ("[yes]".equals(remembers)) {
                r = new Cookie("rememberMe", "[yes]");
            }
            e.setMaxAge(60 * 60 * 24);
            r.setMaxAge(60 * 60 * 24);
            response.addCookie(e);
            response.addCookie(r);
            request.getRequestDispatcher("redirect").forward(request, response);
        }

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
