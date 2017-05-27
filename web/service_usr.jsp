<%-- 
    Document   : service_usr
    Created on : 14 Feb, 2014, 10:57:28 AM
    Author     : Nishant
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
                                                    <li><a href="#"><img src="images/u_logo.png"><%= session.getAttribute("usr") %></a></li>
							</ul>	
                                                </nav>
					</div>
				</div>
				<nav id="menu">
					<ul>
						<li class="nav1"><a href="index_usr.jsp">Home</a></li>
						<li class="nav2"><a href="about_us_usr.jsp">ABOUT Us</a></li>
						<li class="nav3" id="active"><a href="service_usr.jsp">Services</a></li>
						<li class="nav4"><a href="order_usr.jsp">Order</a></li>
						<li class="nav5"><a href="feedback_usr.jsp">Feedback</a></li>
                                                
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
					<figure class="left"><img src="images/letter3.png" alt=""></figure>
					<h2>These We Can Do <span>For You</span></h2>
                                        <table>
                                                <tr>
                                                    <td><a href="up_pr.jsp"><strong>Update Profile</a>&nbsp;&nbsp;&nbsp;&nbsp;</strong></td>                                                   
                                                    <td><strong><a href="change_pass.jsp">Change Password</a>&nbsp;&nbsp;&nbsp;&nbsp;</strong></td>
                                                    <td><strong><a href="status_usr.jsp">Order Status</a>&nbsp;&nbsp;&nbsp;&nbsp;</strong></td>
                                                </tr>
                                            </table>
                                       <!-- <div class="right">
                                            <a href="offer_usr.jsp"><span><span><strong><b>Click Here to see Available Offers On Services</b></strong></span></span></a></div>-->
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
							<h2>Our Services</h2>
						</div>	
                                            
                                            
                                            <div><form> 
      <table name="tab">                                                                                  
<%
Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/handyman?zeroDateTimeBehavior=convertToNull","root","");
Statement st=cn.createStatement();
try {

String s="select * from services_details_adm ";
ResultSet rs=st.executeQuery(s);
while(rs.next()){
    %>
   
    <tr>
    <list>
    <td><li><li>
        <div class="box2">
							<div class="box2_top">	
								<div class="box2_bot">	
									<div class="pad">
										<div class="wrapper">
											<figure class="left"><img src="images/<%=rs.getString(2) %>" alt=""></figure>
											
                                                                                        <br/><h4><%=rs.getString(3) %></h4><br/>
                                                                                                <p><center><img src="images/<%=rs.getString(5) %>"></center></p>
                                                                                                <p> &nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(4) %></p>
                                                                                            
											</div>
										</div>
									</div>
								</div>
                                                                                            </div>
							</div>
						
       </li></li></td>
     
    </tr> 
    <%
    }
  
}catch(Exception e)
{
    
}
%> 
</table>
                                                </form>	</div>
						</article>
<article class="col1 pad_left1">
    <h2>Offers On Services</h2><br/>
    
    <%
    try {

String f="select * from offer_details_adm ";
ResultSet rs1=st.executeQuery(f);
while(rs1.next()){
    %>
<div class="box1"><div class="box1_bot">
        <div class="box1_top"><figure class="left"><img src="images/marker_3.png" alt=""></figure>
						<div class="pad">
                                                    
                                                    <div class="pad1">
											
                                                                                            <h2><%= rs1.getString(1) %></h2>
                                                                                            &nbsp;&nbsp;<p><%=rs1.getString(4) %></p>
                                                                                            <strong>On Minimum Cost: Rs.</strong><%=rs1.getString(5) %><br/>
                                                                                            <strong>Start Date: </strong><%=rs1.getString(6) %><br/>
                                                                                            <strong>End Date: </strong><%=rs1.getString(7) %>
                                                                                        </div></div>							</div>
					</div></div><br/>
                                        
    <%
    }
  
}catch(Exception e)
{
    
}
    %>
    
     
</article>
						</div>
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
        <h3>Quick Links</h3>
	  <ul class="list3">
               <li><a href="index_usr.jsp">Home</a></li>
	       <li><a href="about_us_usr.jsp">About Us</a></li>
	       <li><a href="service_usr.jsp">Services</a></li>
               <li><a href="order_usr.jsp">Order</a></li>
	       <li><a href="feedback_usr.jsp">Feedback</a></li>
	  </ul>
</div>
<div class="col_2 pad_left1">
           <h3>Benefits</h3>
           <ul class="list3 col_1" >
			<li>- Better Services</li>
			<li>- Have Skilled Handymen</li>
			<li>- Provide Feedback Services</li>
                        <li>- 24x7 Service</li>
                  </ul>
						
					
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