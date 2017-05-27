<%-- 
    Document   : contact_usr
    Created on : 14 Feb, 2014, 10:54:03 AM
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
<title>Contact</title>
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
                                                    <li><a href="#"><img src="images/u_logo.png"><%= session.getAttribute("usr") %></a></li>
							</ul>	
                                                </nav>
					</div>
				</div>
				
				<nav id="menu">
					<ul>
						<li class="nav1"><a href="index_usr.jsp">Home</a></li>
						<li class="nav2"><a href="about_us_usr.jsp">ABOUT Us</a></li>
						<li class="nav3"><a href="service_usr.jsp">Services</a></li>
						<li class="nav4"><a href="order_usr.jsp">Order</a></li>
						<li class="nav5" id="active"><a href="feedback_usr.jsp">Feedback</a></li>
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
					<h2>Your Comments <span>Highly Appreciated</span>!</h2>
                                        <table><tr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</tr>
                                                <tr>
                                                    <td><a href="up_pr.jsp"><strong>Update Profile</a>&nbsp;&nbsp;&nbsp;&nbsp;</strong></td>                                                   
                                                    <td><strong><a href="change_pass.jsp">Change Password</a>&nbsp;&nbsp;&nbsp;&nbsp;</strong></td>
                                                    <td><strong><a href="status_usr.jsp">Order Status</a>&nbsp;&nbsp;&nbsp;&nbsp;</strong></td>
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
							<h2>Complain Box</h2><br/>
                                                        <form id="ContactForm" name="frm" action="fd_usr">
								<div>
									<div  class="wrapper">
                                                                            <b>Ordered Service:</b><br/>
										<select name="cb">
                                                                                    <option>-Select-</option>
                                                                                    <%
Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/handyman?zeroDateTimeBehavior=convertToNull","root","");
Statement st=cn.createStatement();

try {
String s="select Service_type from order_details where User_ID='"+session.getAttribute("usr")+"'";
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
                                                                                    
                                                                                </select>							
									</div>
                                                                       									
									<div  class="textarea_box">
                                                                            <b>Your Complain:</b>
										<div class="bg"><textarea name="comp" cols="1" rows="1"></textarea>	</div>						
									</div><br/>
									<input class="button" type="submit" value="Submit">&nbsp;&nbsp;
                                                                        <input class="button" type="reset" value="Clear">
								</div>
							</form>
						</div>	
						
					</article><br/><br/>
                                    <article class="col1 pad_left1">
                    
                                        <strong><b>Handyman Head Office</b></strong><br/><br/>
                                  <form name="fm" action="cn">
				  <p><span class="bg">
				   <strong>Address:</strong> <br/>
                                   <span>110 E. Safal Plaza,<br/>
                                       Modhera Cross-Road,<br/> 
                                       Mehsana-384001 </span>
			      </p>
				  <p><span class="bg"><strong>Contact No:</strong>  
                                          <span>395-5249</span>
                                      </span></p>
                                      <p><span class="bg"><strong>Email:</strong>  
                                              <span>info@handyman.com</span>
                                      </span></p><br/><br/>
                                  </form>
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