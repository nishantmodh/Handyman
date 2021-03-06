<%-- 
    Document   : up_service
    Created on : 25 Feb, 2014, 11:39:29 AM
    Author     : Nishant
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <% 
    if(session.getAttribute("usr")==null)
    {
        response.sendRedirect("index.jsp");
    }
%>
<head>
<title>Services</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.4.2.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>  
<script type="text/javascript" src="js/Copse_400.font.js"></script>
<script type="text/javascript" src="js/imagepreloader.js"></script>
<script type="text/javascript">
	preloadImages([
	'images/menu1_active.gif',
	'images/menu2_active.gif',
	'images/menu3_active.gif',
	'images/menu4_active.gif',
	'images/menu5_active.gif']);
</script>


<!--[if lt IE 9]>
	<script type="text/javascript" src="http://info.template-help.com/files/ie6_warning/ie6_script_other.js"></script>
	<script type="text/javascript" src="js/html5.js"></script>
<![endif]-->
</head>
<body id="page3">
    
<div class="body1">
	<div class="body2">
		<div class="main">
<!-- header -->
			<header>
				<div class="wrapper">
					<h1><a href="index.jsp" id="logo">First</a></h1>
					<div class="right">
						<nav>
                                                <ul id="top_nav">
                                                    <li><a href="logout.jsp">Logout</a></li>
                                                    <li><img src="images/border.gif"></li>
                                                    <li><a href="#"><img src="images/a_logo.png"><%= session.getAttribute("usr") %></a></li>
							</ul>
                                                </nav>
					</div>
				</div>
				<nav id="menu">
					<ul>
						<li class="nav1"><a href="index_adm.jsp">Home</a></li>
						<li class="nav2"id="active"><a href="service_adm.jsp">Services</a></li>
                                                <li class="nav3"><a href="offer_adm.jsp">Offers</a></li>
						<li class="nav4"><a href="order_adm.jsp">Order</a></li>
						<li class="nav5"><a href="feedback_adm.jsp">Feedback</a></li>
					</ul>
				</nav>
			</header><div class="ic">More Website Templates at TemplateMonster.com!</div>
			</div>
		</div>
	</div>
<!-- / header -->
<!-- content -->
<div class="body5">
		<div class="body6">
			<div class="main">
				<div class="wrapper">
					<!--<figure class="left"><img src="images/letter3.png" alt=""></figure>-->
                                        
                                        <div>
                                        <table>
                                                <tr>
                                                    <td id="active"><a href="service_adm.jsp"><strong>Add Service</a>&nbsp;&nbsp;&nbsp;</strong></td>
                                                    
                                                    <td><strong><a href="del_service.jsp">Delete Service(s)</a>&nbsp;&nbsp;&nbsp;</strong></td>
                                                    <td><strong><a href="up_service.jsp">Update Service</a>&nbsp;&nbsp;&nbsp;</strong></td>
                                                </tr>
                                            </table>
                                        </div>
				</div>
			</div>
		</div>
	</div>
	<div class="body7">
		<div class="main">
			<section id="content">
                            <div class="wrapper">
                                <article class="col2">
						<div class="pad1">
                                                     <div class="main">
                                           
                                        </div>
                                                    
                                                        <h2>Update Services:</h2><br/>
                                                        <form id="ContactForm" name="frm1">
                                                            
								<div>
									<div  class="wrapper">
                                                                             <strong>Service ID:</strong>
										
                                                                                      <select name="combo" onchange="submit()">
                                                                                        <%
if(request.getParameter("combo")!=null)
{
    %>
    <option> <%= request.getParameter("combo") %> </option>
    <%
}
else
{  
%>                                                                    
<option>-Select- </option>
<%}
Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/handyman?zeroDateTimeBehavior=convertToNull","root","");
Statement st=cn.createStatement();

try {
String s="select service_id from services_details_adm ";
ResultSet rs=st.executeQuery(s);
while(rs.next()){
    %>
   <option> <%= rs.getString(1) %> </option>
<%
    }  
}catch(Exception e)
{  
}
%> 
                                                                                    </select></div>                                                                          
<div class="wrapper">
<%
                 if(request.getParameter("combo")!=null)
                 {
              String f="select * from services_details_adm where service_id='"+request.getParameter("combo")+"'";  
              %>
              <input type="hidden" name="hd" value="<%=request.getParameter("combo") %>"
              <%
              ResultSet rs2=st.executeQuery(f);
              if(rs2.next())
              {
%>
</div>  <br/>

	<div  class="wrapper">
            Service Icon:<br/>
            <div class="bg"><input type="file" name="icon" value="<%=rs2.getString(2) %>" >	</div>					
									</div><br/>
             
                                                                       
         <div  class="textarea_box">
          Service Description:<br/>
            <div class="bg"><textarea name="descript"><%=rs2.getString(4) %></textarea>	</div>						
									</div>
         <div  class="wrapper">
            Service Image:<br/>
            <div class="bg"><input type="file" name="ser_im" value="<%=rs2.getString(5) %>" >	</div>					
									</div>                                                               
                <%
              }  }
                   %>
                                                                     
                                                                      </div>  <br/>
                   <input type="submit"class="button" name="up" value="Update"> &nbsp;&nbsp;
                   <input type="submit"class="button" value="Cancel">
                                                                  
                   
                   <%
                 if(request.getParameter("up")!=null)
                 {
                    String f="update services_details_adm set service_type='"+request.getParameter("icon")+"', service_description='"+request.getParameter("descript")+"', Service_Image='"+request.getParameter("ser_im")+"' where service_id='"+request.getParameter("hd")+"'";
                     st.executeUpdate(f);
                     response.sendRedirect("service_adm.jsp?msg=Service Details updated Successfully.....");
                 }
                 
                 
                 %>
                            </div>
                                                        </form>
			</section>
		</div>
	</div>
<!-- / content -->
<!-- footer -->
	<div class="body8">
	<div class="body9">
		<div class="main">
			<footer>
				<div class="col_1">
					<!--<h3>Social Networks</h3>
					<ul class="list3">
						<li><a href="#">Twitter</a></li>
						<li><a href="#">Facebook</a></li>
						<li><a href="#">Flickr</a></li>
						<li><a href="#">Blogger</a></li>
					</ul>-->
				</div>
				<div class="col_2 pad_left1">
					<h3>Quick Links</h3>
					<div class="wrapper">
						<ul class="list3 col_1">
							<li><a href="index_adm.jsp">Home</a></li>
							<li><a href="service_adm.jsp">Services</a></li>
							<li><a href="order_adm.jsp">Order</a></li>
                                                </ul>
					</div>
				</div>
				<div class="col_3">
					<!--<a href="index.html" id="footer_logo">First</a><a rel="nofollow" href="http://www.templatemonster.com/" target="_blank">Website template</a><br>
						designed by TemplateMonster.com
					<p class="center">
							<a href="http://www.templates.com/product/3d-models/" target="_blank">3D Models</a><br>
							provided by Templates.com</p>-->
					</div>
				</footer>
			</div>
<!-- / footer -->
		</div>
	</div>
<script type="text/javascript"> Cufon.now(); </script>
</body>
</html>
