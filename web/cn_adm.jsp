<%-- 
    Document   : cn_adm
    Created on : 16 Apr, 2014, 11:38:32 AM
    Author     : Nishant
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%   
            
         Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/handyman?zeroDateTimeBehavior=convertToNull","root","");
            Statement stt=con.createStatement();
           String s="update contact set Status='Confirm' where Contact_ID='"+request.getParameter("k")+"' ";
        stt.executeUpdate(s);
        response.sendRedirect("feedback_adm.jsp");
        %>
    </body>
</html>

