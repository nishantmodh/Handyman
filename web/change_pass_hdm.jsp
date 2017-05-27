<%-- 
    Document   : change_pass_hdm
    Created on : 29 Mar, 2014, 4:41:01 PM
    Author     : Nishant
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
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
<title>Change Password</title>
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
<body id="page5">
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
                                                    <li><a href="#"><img src="images/h_logo.png"><%= session.getAttribute("usr") %></a></li>
							</ul>
                                                </nav>
					</div>
				</div>
				
				<nav id="menu">
					<ul>
						<li class="nav1"><a href="index_hdm.jsp">Home</a></li>
						<li class="nav2"><a href="status_hdm.jsp">Status</a></li>
						<li class="nav3"><a href="order_hdm.jsp">Order</a></li>
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
					<figure class="left"><img src="images/letter5.png" alt=""></figure>
					<h2>Change Your <span>Password Here</span>!</h2>
                                        <table><tr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</tr>
                                                <tr>
                                                    <td id="active"><a href="up_pr_hdm.jsp"><strong>Update Profile</a>&nbsp;&nbsp;&nbsp;&nbsp;</strong></td>
                                                    
                                                    <td><strong><a href="change_pass_hdm.jsp">Change Password</a>&nbsp;&nbsp;&nbsp;&nbsp;</strong></td>
                                                </tr>
                                            </table>
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
							<br/><br/>
                                                        <form id="ContactForm" name="form" action="ch_pass">
								<div>
									<div  class="wrapper">
										Old Password:<br/>
                                                                                <div class="bg"><input type="password" class="input" name="opass"></div>
    
									</div><b>
    <%
        if(request.getParameter("msg2")!=null)
        {
            
         out.write(request.getParameter("msg2"));
        }

%>                                                                           
    
                                                                        </b>
									<div  class="wrapper">
										New Password:<br/>
                                                                                <div class="bg"><input type="password" class="input" name="npass">	</div>							
									</div>
									<div  class="wrapper">
										Retype Password:<br/>
                                                                                <div class="bg"><input type="password" class="input" name="rpass">	</div>	
<b>                                                                     </div>
    <%
        if(request.getParameter("msg1")!=null)
        {
            
         out.write(request.getParameter("msg1"));
        }

%>                                                                           
    
                                                                        </b><br/>  
   
                                                                                <input class="button" type="submit" name="up" value="Submit">&nbsp;&nbsp;
                                                                                <input class="button" type="reset" value="Clear">
 						
								</div>
							</form>
						</div>	
						
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
               <li><a href="index_hdm.jsp">Home</a></li>
               <li><a href="status_hdm.jsp">Status</a></li>
               <li><a href="order_hdm.jsp">Order</a></li>
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

