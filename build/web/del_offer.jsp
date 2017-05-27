<%-- 
    Document   : del_offer
    Created on : 25 Feb, 2014, 1:29:08 PM
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
<title>Offers</title>
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
						<li class="nav2"><a href="service_adm.jsp">Services</a></li>
                                                <li class="nav3"id="active"><a href="offer_adm.jsp">Offers</a></li>
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
                                        
					
                                        <table>
                                                <tr>
                                                    <td><a href="offer_adm.jsp"><strong>Add Offer</a>&nbsp;&nbsp;&nbsp;</strong></td>
                                                    
                                                    <td><strong><a href="del_offer.jsp">Delete Offer(s)</a>&nbsp;&nbsp;&nbsp;</strong></td>
                                                    <td><strong><a href="up_offer.jsp">Update Offer</a>&nbsp;&nbsp;&nbsp;</strong></td>
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
                                           
                                        
							<h2>Delete Offers:</h2>
                                                        
                                                        <form id="ContactForm" name="fm1">
                                                            <div  class="wrapper">
                                                               <strong>Service ID:</strong><br/>
                                                                <select name="comb">
                                                               <%
Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/handyman?zeroDateTimeBehavior=convertToNull","root","");
Statement st=cn.createStatement();

try {
String s="select offer_id from offer_details_adm ";
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
   
                   <%
if(request.getParameter("comb")!=null)
{
                   String g="delete from offer_details_adm where offer_id='"+request.getParameter("comb")+"'";
                   st.executeUpdate(g);
                  
} 
                   %>
           
                                                                </select>  
                                                            </div>

								<div>
									<!--<div  class="wrapper">
                                                                            <div class="bg"><span id="opt0"><input type="checkbox" name="selection"><br></span></div>
									</div><br/>
									<div  class="wrapper">
										
										<div class="bg"><span id="opt1"><input type="checkbox" name="selection"> Option 2<br></span>	</div>							
									</div><br/>
                                                                       
                                                                    <div  class="wrapper">
										
										<div class="bg"><span id="opt2"><input type="checkbox" name="selection"> Option 3<br></span>	</div>						
									</div><br/>
                                                                     <div  class="wrapper">
										
                                                                                <div class="bg"><span id="opt3"><input type="checkbox" name="selection"> Option 4<br></span>	</div>						
                                                                     </div>--><br/><br/>
                                                                        
                                                                    <input type="submit"class="button" value="Delete">&nbsp;
                                                                    <input type="submit"class="button" value="Cancel">

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