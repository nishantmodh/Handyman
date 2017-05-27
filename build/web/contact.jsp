<%-- 
    Document   : contact
    Created on : 14 Feb, 2014, 10:53:47 AM
    Author     : Nishant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
						<nav> </nav>
					</div>
				</div>
				
				<nav id="menu">
					<ul>
						<li class="nav1"><a href="index.jsp">Home</a></li>
						<li class="nav2"><a href="about_us.jsp">ABOUT Us</a></li>
						<li class="nav3"><a href="service.jsp">Services</a></li>
                                                <li class="nav4" id="active"><a href="contact.jsp">Contact</a></li>
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
					<h2>Your Comments Are <span>Highly Appreciated</span>!</h2>
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
							<h2>Contact Form</h2><br/>
                                                        <form id="ContactForm" name="form" action="contact">
								<div>
									<div  class="wrapper">
										<strong>Name:</strong><br/>
                                                                                <div class="bg"><input type="text" class="input" name="nm" ></div>
									</div>
									<div  class="wrapper">
										<strong>Email ID:</strong><br/>
                                                                                <div class="bg"><input type="text" class="input" name="eid">	</div>							
									</div>
                                                                        <div  class="wrapper">
										<strong>Phone:</strong><br/>
										<div class="bg"><input type="text" class="input" name="ph">	</div>							
									</div>
									<div  class="textarea_box">
										<strong>Comment:</strong><br/>
										<div class="bg"><textarea name="comm" cols="1" rows="1"></textarea>	</div>						
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
               <li><a href="index.jsp">Home</a></li>
               <li><a href="about_us.jsp">About Us</a></li>
	       <li><a href="service.jsp">Services</a></li>
               <li><a href="contact.jsp">Contact</a></li>
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