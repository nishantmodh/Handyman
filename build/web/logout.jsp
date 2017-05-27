<%-- 
    Document   : logout
    Created on : 14 Feb, 2014, 10:55:34 AM
    Author     : Nishant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <% 
    if(session.getAttribute("usr")==null)
    {
        response.sendRedirect("index.jsp");
    }
%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.invalidate();
            %>
            <script>
                alert("Successfully logged out....");
                
            </script>
            <%
            response.sendRedirect("index.jsp");
            %>
    </body>
</html>
