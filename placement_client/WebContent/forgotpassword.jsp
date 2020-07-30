<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script>
            addEventListener("load", function () {
            	setTimeout(hideURLbar, 0);
            }, false);
            
            function hideURLbar() {
            	window.scrollTo(0, 1);
            }
        </script>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"
            media="all">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/style.css" rel='stylesheet' type='text/css' media="all">        
<link href="css/sign/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/sign/morris.css" type="text/css"/>	

<link rel="stylesheet" href="css/jquery-ui.css"/>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.validate.min.js"></script>

<script src="js/validation/formvalidationForgot.js"></script>
</head>
<body>

        <div class="headder-top">
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
        <section class="about py-lg-4 py-md-3 py-sm-3 py-3" id="about" style="background: black">
        <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
            <div class="main-wthree">
	<div class="container">
	<div class="sin-w3-agile">
	<div style="width: 100%;" >
${SendOtpError}
<c:choose>
<c:when test="${empty FpassData}">


	<div style="width: 100%;text-align: center;"">
				<!-- <form  method="post" action="EmailController" style="height:400px;" id="sendotp">
					<h2 >Forgot Password</h2>
					<div>
						<label for="" ><input type="text" class="name" style="width: 100%" name="email" placeholder="Enter your Email Here"></label> 
					</div>	 
					
					<input type="submit"  value="Send OTP" class="login" name="action">
							
					
				</form> -->
				<form  method="post" action="EmailController" style="height:400px;" id="sendotp">
				<h2 ><b>Forgot Password</b></font></h2>
					<div class="username">
				<span class="username">Email:</span>
				<input type="text" name="email" class="name" placeholder="Enter your Email Here" required="">
				<div class="clearfix"></div>
			</div>
			<div class="login-w3">
					<input type="submit" class="login" value="SendOtp" name="action" class="login">
			</div>
			<div class="clearfix"></div>
							
					
				</form>
			</div>
</c:when>
<c:otherwise>
<%-- <form action="EmailController" method="post" id="confirmotp">
<h4><b>${ErrorOtp}</b></font></h4>
<br>
<h4><b>Otp Sent On ${FpassData}</b></h4>
<br/>
<br/>
<div style="height:70px;">
						<label for=""  style="background:none;">
						<input type="text" name="EnterOtp"" placeholder="Enter your OTP Here" id="EnterOtp"></label> 
						

<br>
<input type="submit" name="action" value="ConfirmOtp" class="login" style="margin-top: 50px;">
</div>
</form> --%>
<form action="EmailController" method="post" id="confirmotp">
<h4><b>${ErrorOtp}</b></font></h4>
<br>
<h4><b>Otp Sent On ${FpassData}</b></h4>
<br/>
<br/>
<div>
<input type="text" name="EnterOtp" class="name" placeholder="Enter your OTP Here" style="width: 100%;">
<input type="submit" name="action" value="ConfirmOtp" class="login" style="margin-top: 50px; width: 100%;">
</div>
</form>


</c:otherwise>


</c:choose>
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
		<div class="text-center">
			<a href="#home" class="move-top text-center mt-3"></a>
		</div>
	</div>
	</footer>
</body>
</html>