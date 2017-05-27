<%-- 
    Document   : status_adm
    Created on : 6 Apr, 2014, 4:11:29 PM
    Author     : lenovo
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
           String s="update complain set Status='Confirm' where Complain_ID='"+request.getParameter("k")+"' ";
        stt.executeUpdate(s);
        response.sendRedirect("feedback_adm.jsp");
        %>
    </body>
</html>
