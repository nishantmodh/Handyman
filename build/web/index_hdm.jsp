<%-- 
    Document   : index_hdm
    Created on : 14 Feb, 2014, 10:55:22 AM
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
<title>Home</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.4.2.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>  
<script type="text/javascript" src="js/Copse_400.font.js"></script>
<script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
<script type="text/javascript" src="js/imagepreloader.js"></script>
<script type="text/javascript">
	preloadImages([
	'images/menu1_active.gif',
	'images/menu2_active.gif',
	'images/menu3_active.gif',
	'images/menu4_active.gif',
	'images/marker_right_active.jpg',
	'images/marker_left_active.jpg',
	'images/menu5_active.gif']);
</script>
<!--[if lt IE 9]>
	<script type="text/javascript" src="http://info.template-help.com/files/ie6_warning/ie6_script_other.js"></script>
	<script type="text/javascript" src="js/html5.js"></script>
<![endif]-->
</head>
<body id="page1">
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
						<li class="nav1"id="active"><a href="index_hdm.jsp">Home</a></li>
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
					<figure class="left"><img src="images/letter1.png" alt=""></figure>
					<h2>Welcome <span><%= session.getAttribute("usr") %></span></h2>
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
                                                        <form id="ContactForm" name="frm">
                                                            
								<div>
                                                                   
<%
Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/handyman?zeroDateTimeBehavior=convertToNull","root","");
Statement st=cn.createStatement();

try {
String s="select count(Order_ID) from order_details_adm where Handyman_ID='"+session.getAttribute("usr")+"'";
ResultSet rs=st.executeQuery(s);
while(rs.next()){
    %>
  <div class="box2">
							<div class="box2_top">	
								<div class="box2_bot">	
									<div class="pad">
										<div class="wrapper">
											<figure class="left"><img src="images/marker_1.gif" alt=""></figure>
											<div class="cols">
                                                                                                <h4> Your Total Order : <%=rs.getInt(1) %></h4>
                                                                                            </div>
											</div>
										</div>
									</div>
								</div>
							</div>
<%
    }  
}catch(Exception ee)
{  
}
%>

<%
try {
String s="select count(Status) from order_details_adm where Handyman_ID='"+session.getAttribute("usr")+"' and Status='pending'";
ResultSet rs=st.executeQuery(s);
while(rs.next()){
    %>
  <div class="box2">
							<div class="box2_top">	
								<div class="box2_bot">	
									<div class="pad">
										<div class="wrapper">
											<figure class="left"><img src="images/marker_1.gif" alt=""></figure>
											<div class="cols">
                                                                                                <h4> Your Pending Order : <%=rs.getInt(1) %></h4>
                                                                                            </div>
											</div>
										</div>
									</div>
								</div>
							</div>
<%
    }  
}catch(Exception ee)
{  
}
%>

                                                                </div>
					</article>
				<article class="col1 pad_left1">
                    
				  <!--<h2>Please Login Here</h2>
				  <p><span class="bg">
				   <strong>Username:</strong> <br/>&nbsp;&nbsp;&nbsp;
                   <input type="text" class="input" >
			      </p>
				  <p><span class="bg"><strong>Password:</strong>  <br/>&nbsp;&nbsp;&nbsp;
			       <input type="password" class="input" maxlength="10" >
			      </span>
 
				  <form method="post" id="sign_up" autocomplete="on">
				    
				      <p><a href="#" onClick="document.getElementById('sign_up').submit()">Submit</a>
                         <a href="#" onClick="document.getElementById('sign_up').reset()">Clear</a></p>
                 
				     
                           
			      </form>
                  <p><span style="text-align: justify"></span><span style="text-align: right"></span><span style="text-align: justify"></span><br/>
                    <a href="#" class="button"><span><span>Forgot Password</span></span></a></p>
                  <p><strong>IF NOT REGISTERED</strong>&nbsp;
                  <a href="reg.html"><strong>Click Here</strong></a></p>-->
				</article>
				<p>&nbsp;</p>
				<p>&nbsp;</p>
				<p>&nbsp;</p>
				<p>&nbsp;</p>
				<p>&nbsp;</p>
				<p>&nbsp;</p>
				<p>&nbsp;</p>
				<p>&nbsp;</p>
			  </div>
			  <p>&nbsp;</p>
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
				</footer>		
					
				</div>
				<div class="col_3">
					<!--<a href="index.html" id="footer_logo">First</a><a rel="nofollow" href="http://www.templatemonster.com/" target="_blank">Website template</a><br>
						designed by TemplateMonster.com
					<p class="center">
							<a href="http://www.templates.com/product/3d-models/" target="_blank">3D Models</a><br>
							provided by Templates.com</p>-->
				</div>
			
		</div>
<!-- / footer -->
	</div>
</div>
<script type="text/javascript"> Cufon.now(); </script>
<script type="text/javascript">
	$(window).load(function() {
	$('#slider').nivoSlider({
        effect:'sliceDown', //Specify sets like: 'fold,fade,sliceDown, sliceDownLeft, sliceUp, sliceUpLeft, sliceUpDown, sliceUpDownLeft'    
        slices:20,
        animSpeed:300,
        pauseTime:9999999999,
        startSlide:0, //Set starting Slide (0 index)
        directionNav:true, //Next & Prev
        directionNavHide:false, //Only show on hover
        controlNav:false, //1,2,3...
        controlNavThumbs:false, //Use thumbnails for Control Nav
        controlNavThumbsFromRel:false, //Use image rel for thumbs
        controlNavThumbsSearch: '.jpg', //Replace this with...
        controlNavThumbsReplace: '_thumb.jpg', //...this in thumb Image src
        keyboardNav:true, //Use left & right arrows
        pauseOnHover:true, //Stop animation while hovering
        manualAdvance:false, //Force manual transitions
        captionOpacity:1, //Universal caption opacity
        beforeChange: function(){},
        afterChange: function(){},
        slideshowEnd: function(){} //Triggers after all slides have been shown
    });
    });
</script>
</body>
</html>