/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

/**
 *
 * @author Nishant
 */
@WebServlet(urlPatterns = {"/ch_pass"})
public class ch_pass extends HttpServlet {
    

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
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. 
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ch_pass</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ch_pass at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");*/
        } finally {
            out.close();
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
       // processRequest(request, response);
         PrintWriter out=response.getWriter();
     try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/handyman?zeroDateTimeBehavior=convertToNull","root","");
            Statement st=cn.createStatement();
            HttpSession sess=request.getSession();
           // sess.setAttribute("usr", out);
           String s= "select * from login_data where password='"+request.getParameter("opass")+"' and User_ID='"+sess.getAttribute("usr")+"'";
           // out.println(sess.getAttribute("usr"));
            ResultSet rs=st.executeQuery(s);
            if (rs.next()) {
                
                          if (request.getParameter("npass").equals(request.getParameter("rpass"))) 
                {
                   
                       String f="update login_data set Password='"+request.getParameter("npass")+"' where User_ID='"+sess.getAttribute("usr")+"'";
                       st.executeUpdate(f);
                      // JOptionPane.showMessageDialog(null, "Password Changed Succesfully...");
                       response.sendRedirect("index_usr.jsp?msg=Password changed Successfully...");
                        
                }
                    else{
                    //out.println();try
                   //JOptionPane.showMessageDialog(null, "New password and confirm new password is not matching Try again.. ");
                     response.sendRedirect("change_pass.jsp?msg1=New password and confirm new password is not matching Try again...");   
                    }
                    
                }else{
                    //out.println("Old password Doesn't match");
                  // JOptionPane.showMessageDialog(null, "Old password Doesn't match try again");
                    response.sendRedirect("change_pass.jsp?msg2=Old password Doesn't match try again...");
                
                }
             
         
     }
     catch(Exception e)
     {
         System.out.println("Error");
     }
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
