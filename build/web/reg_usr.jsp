<%-- 
    Document   : reg_usr
    Created on : 14 Feb, 2014, 10:56:26 AM
    Author     : Nishant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
   <script>
    function validate()
    {
                
                if(document.getElementById("unm").value==""){
                 document.getElementById("nm").innerHTML="<b>Please Enter The Name!</b>";
                 return false;
                }
                if(document.getElementById("email").value==""){
                document.getElementById("eid").innerHTML="<b>Please Enter The Email ID!</b>";
                return false;
            }
            
                if(document.getElementById("email").value.indexOf("@")=="-1"){
                document.getElementById("eid").innerHTML="<b>Missing @ in Email ID!</b>";
                return false;
                }
                
                if(document.getElementById("user").value==""){
                document.getElementById("us").innerHTML="<b>Please Enter The User ID!</b>";  
                return false;
                }
                
                if(document.getElementById("user").value.length<8){
                document.getElementById("us").innerHTML="<b>User ID should be atleast 8 character long!</b>";
                return false;
                }
                
                if(document.getElementById("combo").value=="select"){
                document.getElementById("cb").innerHTML="<b>Please select one From list!</b>"; 
                return false;
            }
            
                if(document.getElementById("pass").value==""){
                document.getElementById("ps").innerHTML="<b>Password should not be empty!</b>"; 
                return false;
                }
                
                if(document.getElementById("pass").value.length<8 || document.getElementById("pass").value.length>16){
                document.getElementById("ps").innerHTML="<b>Password length incorrect!</b>"; 
                return false;
                }
                
                if(document.getElementById("pass").value.length!=document.getElementById("repass").value.length){
                document.getElementById("ps").innerHTML="<b>Password Doesn't match!</b>";   
                return false;
                }
                
                if(document.getElementById("phone").value==""){
                document.getElementById("ph").innerHTML="<b>Please Enter your Phone Number!</b>";
                return false;
                }
                
                if(document.getElementById("address").value==""){
                document.getElementById("ad").innerHTML="<b>Address should not be empty!</b>";
                return false;
                }
                
                if(document.getElementById("city").value==""){
                document.getElementById("ct").innerHTML="<b>Please Enter your city!</b>";
                return false;
                }
                
                if(document.getElementById("state").value==""){
                document.getElementById("st").innerHTML="<b>Please Enter your State name!</b>";
                return false;
                }
                
                if(document.getElementById("cnt").value==""){
                document.getElementById("cn").innerHTML="<b>Country Box should not be empty!</b>";
                return false;
                }
                
                if(document.getElementById("zip").value==""){
                document.getElementById("zp").innerHTML="<b>Please enter correct zip code!</b>"; 
                return false;
                }
                
            }
            
            
            
            
    
        </script>
<title>Registration User</title>
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
						<li class="nav5"><a href="contact.jsp">Contact</a></li>
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
					<h2>Please Fill <span>The Details</span>!</h2>
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
							<h2>Registration Form (User)</h2>
                                                        <form id="ContactForm" name="frm" onsubmit="return validate()" action="rg_us">
                                                            
								<div>
									<div  class="wrapper">
                                                                            <strong>Name:</strong><br/>
                                                                                <div class="bg"><input type="text" class="input" id="unm" name="unm"><p id="nm"></p></div>
									</div>
									<div  class="wrapper">
										<strong>Email ID:</strong><br/>
                                                                                <div class="bg"><input type="text" class="input" id="email" name="email" ><p id="eid"></p>	</div>							
									</div>
                                    <div  class="wrapper">
										<strong>User ID:</strong><br/>
                                                                                <div class="bg"><input type="text" class="input"id="user" name="user" ><p id="us"></p>	</div>							
									</div>
                                  <div  class="wrapper">
										<strong>Gender:</strong><br/>
                                                                                <div class="bg"><select name="combo" id="combo">
                                                                                        <option value="select">-Select-</option>
                                                                                                <option>Male</option>
                                                                                                <option>Female</option>
                                                                                    </select>	</div>		&nbsp;<p id="cb"></p>					
									</div>                                  
                                     <div  class="wrapper">
										<strong>Password:</strong><br/>
                                                                                <div class="bg"><input type="password" class="input" id="pass" name="pass" ><p id="ps"></p>	</div>							
									</div>
                                     <div  class="wrapper">
										Retype Password:<br/>
                                                                                <div class="bg"><input type="password" class="input" id="repass" name="repass" ><p id="rps"></p>	</div>							
									</div>
                                     <div  class="wrapper">
										<strong>Phone:</strong><br/>
                                                                                <div class="bg"><input type="text" class="input" id="phone" name="phone"><p id="ph"></p>	</div>							
									</div>
									<div  class="textarea_box">
										<strong>Address:</strong><br/>
                                                                                <div class="bg"><textarea name="address" id="address" cols="1" rows="1"></textarea><p id="ad"></p>	</div>						
									</div>
                                     <div  class="wrapper">
										<strong>City:</strong><br/>
                                                                                <div class="bg"><input type="text" class="input" id="city" name="city" ><p id="ct"></p>	</div>	
                                        						
									</div>
                                     <div  class="wrapper">
										<strong>State:</strong><br/>
                                                                                <div class="bg"><input type="text" class="input"id="state" name="state"><p id="st"></p>	</div>							
									</div>
                                     <div  class="wrapper">
										<strong>Country:</strong><br/>
                                                                                <div class="bg"><input type="text" class="input" id="cnt" name="cnt"><p id="cn"></p>	</div>							
									</div>
                                     <div  class="wrapper">
										<strong>Zip:</strong><br/>
                                                                                <div class="bg"><input type="text" class="input" id="zip" name="zip"><p id="zp"></p>	</div>							
									</div>
                                                                    
                                                                  <input class="button" type="submit" value="Submit"> &nbsp;&nbsp;
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

</body>
</html>