<%@page import="com.bean.Loginbean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zxx">
    <head>
        <title>Placement Corner</title>
        <!--meta tags -->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="keywords"
            content="Lecturing Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
            Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script>
            addEventListener("load", function () {
            	setTimeout(hideURLbar, 0);
            }, false);
            
            function hideURLbar() {
            	window.scrollTo(0, 1);
            }
        </script>
        <!--//meta tags ends here-->
        <!--booststrap-->
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"
            media="all">
        <!--//booststrap end-->
        <!-- font-awesome icons -->
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <!-- //font-awesome icons -->
        <!--stylesheets-->
        <link href="css/style.css" rel='stylesheet' type='text/css' media="all">
        <!--//stylesheets-->
        <!-- <link href="//fonts.googleapis.com/css?family=Fira+Sans:400,500,600,700" -->
        <!-- rel="stylesheet"> -->
        <!-- <link href="//fonts.googleapis.com/css?family=Oxygen:400,700" -->
        <!-- rel="stylesheet"> -->
        
<link href="css/sign/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/sign/morris.css" type="text/css"/>

<link rel="stylesheet" href="css/jquery-ui.css"/>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.validate.min.js"></script>

<script src="js/validation/formvalidationRecover.js"></script>
    </head>
  <%

	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
	session.removeAttribute("otp");
	String email=(String)session.getAttribute("FpassData");

	session.invalidate(); 
%>
    <body>
        <!-- header --> 
        <div class="headder-top">
            <!-- nav -->
            <nav>
                <div id="logo">
                    <h1>
                        <a href="index.jsp">DA-IICT</a>
                    </h1>
                </div>
                <label for="drop" class="toggle">Menu</label> <input type="checkbox"
                    id="drop">
                <ul class="menu mt-2">
                    <li class="active"><a href="index.jsp">Home</a></li>
<!--                     <li class="mx-lg-3 mx-md-2 my-md-0 my-1"><a href="company.jsp">Preparation</a></li>
                    <li class="mx-lg-3 mx-md-2 my-md-0 my-1"><a href="resume.jsp">Resume</a></li> -->
                    <li class="mx-lg-3 mx-md-2 my-md-0 my-1"><a href="about.jsp">About Us</a></li>
                    <li><a href="contact.jsp">Contact Us</a></li>
                    <li class="mx-lg-3 mx-md-2 my-md-0 my-1">
                    
             
                    <a href="login.jsp">LogIn</a>
                	
                
                </li>
                </ul>
            </nav>
        </div>
        <!-- //banner -->
        <!-- about -->
        <section class="about py-lg-4 py-md-3 py-sm-3 py-3" id="about" style="background: black">
        <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
            <div class="main-wthree">
	<div class="container">
	<div class="sin-w3-agile">
	
		
		  <div style="width: 100%;">
<c:if test="${empty OtpMatch }">
<c:redirect url="forgotpassword.jsp"/>
</c:if>
<%-- <form action="EmailController" method="post"  id="chgepass">
<h3 ><font face="Adobe Myungjo Std M" size="20" color="white"><b>Change Password</b></font></h3>
					<br/>
					<br/>
					<br/>
<div>
	<input type="password" name="NewPassword" id="NewPassword" placeholder="Enter New Password" id="NewPassword">
						
	<input type="password" name="CPassword" placeholder="Enter Confirm Password" id="CPassword">

<input type="hidden" name="email" value="<%=email%>">;
<button type="submit" name="action" value="RecoverPassword" class="button" style="margin-top: 50px;">Change</button>
		</div>
		
					
	</form> --%>
	<form action="EmailController" method="post"  id="chgepass">
<h2>Change Password</h2>
	<div>
	<input type="password" name="NewPassword" id="NewPassword" placeholder="Enter New Password" class="name" style="width: 100%;">
						
	<input type="password" name="CPassword" placeholder="Enter Confirm Password" class="name" style="width: 100%;">

<input type="hidden" name="email" value="<%=email%>">;
<input type="submit" name="action" value="RecoverPassword" class="button" style="margin-top: 50px;" class="login" style="position: relative; left: 50%; transform: translateX(-50%);">
		</div>
		
					
	</form>
	
	</div>
				<div class="back">
					<a href="index.jsp">Back to home</a>
				</div>
				<div class="footer">
					<!--p>&copy; 2016 Pooled . All Rights Reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p-->
				</div>
	</div>
	</div>
	</div>
        </div>
        <footer class="py-lg-4 py-md-3 py-sm-3 py-3">
	<div class="container py-lg-5 py-md-5 py-sm-4 py-3">
		<div class="row">
			<div class="col-lg-4 col-md-4 footer-left-grid">
				<div class="footer-w3layouts-head">
					<h2>
						<a href="index.jsp">About Placement Cell</a>
					</h2>
				</div>
				<div class="mb-1 pt-lg-5 pt-md-4 pt-3 footer-address">
					<p style="color: white !important;">The Placement Cell at DA-IICT is a concept in its own form. It has the following structure comprising of three important parts viz. the placement office comprising of the Manager (Placements) and placement secretary, the faculty members and finally the student representatives from each stream. The structure aims at touching all the aspects required for the smooth functioning of placement process.

					</p>
				</div>
			</div>
			<div class="footer-info-bottom col-lg-5 col-md-5">
				<div class="footer-w3layouts-head">
					<h2>
						<a href="index.jsp">Contact Us</a>
					</h2>
				</div>
				<div class="mb-1 pt-lg-5 pt-md-4 pt-3 footer-address">
					<p style="color: white !important;">Dhirubhai Ambani Institute of Information and Communication Technology, Near Indroda Circle,</p>
					<p style="color: white !important;">Gandhinagar - 382 007,</p>
					<p style="color: white !important;">Gujarat (India)</p>
				</div>
				<div class="footer-office-hour mt-3">
					<div class="row">
					<div class="col-lg-5">
						<p style="color: white !important; font-weight: bold !important;"> Ms. Sneha Thakker:</p>
						<p> placement@daiict.ac.in</p>
						<p style="color: white !important; font-weight: bold !important;"> Dr. Asim Banerjee:</p>
						<p>  pc_convenor@daiict.ac.in</p>
					</div>
					<div class="col-lg-5">
						<p>(O) +91 (79) 68261616</p>
						<p>(M) +91 93289 94143(O)</p>
						<p> (O) +91 (79) 68261554</p>
					</div>
					</div>
				</div>
			</div>
			
			<div class="footer-info-bottom col-lg-3 col-md-3">
				<div class="footer-w3layouts-head">
					<h2>
						<a href="index.jsp">External Links</a>
					</h2>
				</div>
				<div class="mb-1 pt-lg-5 pt-md-4 pt-3 footer-address">
					<a href="" style="color: white !important">PLACEMENT BROCHURE</a>
				</div>
			</div>
			
		</div>
		<div class="bottem-wthree-footer text-center pt-lg-5 pt-md-4 pt-3">
			<p>
				2018-2019 © Placement Corner,DA-IICT
					
			</p>
		</div>
		<!-- move icon -->
		<div class="text-center">
			<a href="#home" class="move-top text-center mt-3"></a>
		</div>
		<!--//move icon -->
	</div>
	</footer>
        <!--//footer -->
    </body>
</html>