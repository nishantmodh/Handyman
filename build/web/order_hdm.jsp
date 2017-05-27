<%-- 
    Document   : order_hdm
    Created on : 14 Feb, 2014, 10:56:09 AM
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
<title>Order</title>
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
<body id="page4">
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
						<li class="nav3" id="active"><a href="order_hdm.jsp">Order</a></li>
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
					<figure class="left"><img src="images/letter4.png" alt=""></figure>
					<h2>Check Your <span> Order Here</span></h2>
                                        <table><tr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</tr>
                                                <tr>
                                                    <td><a href="up_pr_hdm.jsp"><strong>Update Profile</a>&nbsp;&nbsp;&nbsp;&nbsp;</strong></td>
                                                    
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
                                                     <div class="main">
                                           <h2>Your Order:</h2>
                                                        <form id="ContactForm" name="frm1" action="track_order.jsp">
                                                            
								<div>
                                                                    <strong>Order:</strong><br/>
										<select name="combo">
                                                                                    <option>-Select-</option>
                                                                                    <%
Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/handyman?zeroDateTimeBehavior=convertToNull","root","");
Statement st=cn.createStatement();

try {
String s="select Order_ID from order_details_adm where Handyman_ID='"+session.getAttribute("usr")+"'and Status='pending'";
ResultSet rs=st.executeQuery(s);
while(rs.next()){
    %>
    <option value="<%= rs.getInt(1) %>"> <%= rs.getInt(1) %> </option>
<%
    }  
}catch(Exception ee)
{  
}
%> 
                                                                                    
                                                                                </select>
<br/><br/>
                                                                    <input type="submit"class="button" value="Track Order"> &nbsp;
                                                                    <input type="submit"class="button" value="Cancel">
									</div>
        
   
                                        
        
							<!--<h2>FAQs</h2>
							<p class="pad_bot2">Sed quia consequuntur magni dolores eosqui ratione voluptatem sequi nes ciunt neque porro quisiquam est, qui dolorem ipsum quia doloirs consectetur adipisci velit, sed quia non numquam eiusquidem rerum facilis:</p>-->
							<div class="wrapper line1 marg_bot1"></div>
							<!--At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus.-->
						</div>	
					</article>
				</div>
			</section>
		</div>
	</div>
<!-- content -->
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