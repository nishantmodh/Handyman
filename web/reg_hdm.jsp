<%-- 
    Document   : reg_hdm
    Created on : 14 Feb, 2014, 10:56:46 AM
    Author     : Nishant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <script>
    function validate(){
        
        var a=document.frm.name.value;
        if(a==""){
            alert("Please enter valid name!"); 
            return false;
        }
        var b=document.frm.email.value;
        if(b==""){
            alert("Email Id should not be blank!");
            return false;
        }
        var b=document.frm.email.value.indexOf("@");
        if(b==-1){
            alert("Email ID doesn't have @!");
            return false;
        }
        var c=document.frm.user.value.length;
        if(c==""){
            alert("Please enter the User ID!");
            return false;
        }
        if(c<8 || c>16){
            alert("User ID should be between 8 & 16 character!");
            return false;
        }
        var d=document.frm.combo.value;
        if(d==""){
            alert("Please select one option from combobox!");
            return false;
        }
        var e=document.frm.pass.value.length;
        var f=document.frm.repass.value.length;
        if(e==""){
            alert("Please enter password!!!");
            return false;
        }
        if(e<8 || e>16){
            alert("Password length should be between 8 & 16 character!");
            return false;
        }
        if(e!=f){
            alert("Password and Retype Password do not match!");
            return false;
        }
        var g=document.frm.phone.value;
        if(g==""){
            alert("Please Enter valid Phone Number!");
            return false;
        }
        var h=document.frm.address.value;
        if(h==""){
            alert("Please enter your Address!");
            return false;
        }
        var i=document.frm.city.value;
        if(i==""){
            alert("Please enter your City!");
            return false;
        }
        var j=document.frm.state.value;
        if(j==""){
            alert("Please enter your State!");
            return false;
        }
        var k=document.frm.cnt.value;
        if(k==""){
            alert("Please enter your Country Name!");
            return false;
        }
        var l=document.frm.zip.value;
        if(l==""){
            alert("Please enter your Zip Code!");
            return false;
        }
        var m=document.frm.work.value;
        if(m==""){
            alert("Work Type should not be empty!");
            return false;
        }
        var n=document.frm.exp.value;
        if(n==""){
            alert("Please enter your Experience Details!");
            return false;
        }
        var o=document.frm.skill.value;
        if(o==""){
            alert("Write about your Skills!");
            return false;
        }
      
    }
    
    
    
</script>
<title>Registration Handyman</title>
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
							<h2>Registration Form (Handyman)</h2>
                                                        <form id="ContactForm" name="frm" onsubmit="return validate()" action="rg_hm">
								<div>
									<div  class="wrapper">
										<strong>Name:</strong><br/>
										<div class="bg"><input type="text" class="input" name="name"></div>
									</div>
									<div  class="wrapper">
										<strong>Email ID:</strong><br/>
										<div class="bg"><input type="text" class="input" name="email" >	</div>							
									</div>
                                    <div  class="wrapper">
										<strong>User ID:</strong><br/>
										<div class="bg"><input type="text" class="input" name="user" >	</div>							
									</div>
                                     <div  class="wrapper">
										<strong>Gender:</strong><br/>
                                                                                <div class="bg"><select name="combo">
                                                                                        <option value="">-Select One-</option>
                                                                                        <option value="male">Male</option>
                                                                                        <option value="female">Female</option>
                                                                                    </select>	</div>							
									</div>                                
                                     <div  class="wrapper">
										<strong>Password:</strong><br/>
										<div class="bg"><input type="password" class="input" name="pass" >	</div>							
									</div>
                                     <div  class="wrapper">
										Retype Password:<br/>
										<div class="bg"><input type="password" class="input" name="repass" >	</div>							
									</div>
                                     <div  class="wrapper">
										<strong>Phone:</strong><br/>
										<div class="bg"><input type="text" class="input" name="phone">	</div>							
									</div>
									<div  class="textarea_box">
										<strong>Address:</strong><br/>
										<div class="bg"><textarea name="address" cols="1" rows="1"></textarea>	</div>						
									</div>
                                     <div  class="wrapper">
										<strong>City:</strong><br/>
										<div class="bg"><input type="text" class="input" name="city" >	</div>	
                                        						
									</div>
                                     <div  class="wrapper">
										<strong>State:</strong><br/>
										<div class="bg"><input type="text" class="input" name="state">	</div>							
									</div>
                                     <div  class="wrapper">
										<strong>Country:</strong><br/>
										<div class="bg"><input type="text" class="input" name="cnt">	</div>							
									</div>                               
                                     <div  class="wrapper">
										<strong>Zip:</strong><br/>
										<div class="bg"><input type="text" class="input" name="zip">	</div>							
									</div>
                                                                        <div  class="wrapper">
										Work Type:<br>
										<div class="bg"><input type="text" class="input" name="work">	</div>							
									</div>
                                      <div  class="wrapper">
										<strong>Experience:</strong><br/>
										<div class="bg"><input type="text" class="input" name="exp">	</div>							
									</div>  
                                                                    <div  class="textarea_box">
										<strong>Skills:</strong><br/>
										<div class="bg"><textarea name="skill" cols="1" rows="1"></textarea>	</div>						
									</div><br/>
                                                                    
							          <input class="button" type="submit" value="Submit">&nbsp;&nbsp;
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
<script type="text/javascript"> Cufon.now(); </script>
</body>
</html>