<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/morris.css" type="text/css"/> 
<!-- jQuery -->
<script src="js/jquery-2.1.4.min.js"></script>
<!-- //jQuery -->
<link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'/>
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<!-- lined-icons -->
<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
<link rel="stylesheet" href="fonts/poppins/stylesheet.css" type="text/css" charset="utf-8" />
<!-- //lined-icons -->
</head>
<body>
<style type="text/css">
					h2{
				font-family: 'poppinsbold';
							}
					.btn-primary, .btn-primary:active, .btn-primary:visited {
    			background-color: #ff0050 !important;
							}
				.btn-primary:hover {
				background-color: black !important;	
							}
		</style>

		<style>
.form_bg {
    background-color:white;
    color:#666;
    padding:20px;
    border-radius:10px;
    position: absolute;
    border:1px solid #ff0050;
    margin: auto;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    width: 420px;
    height: 450px;
}
.align-center {
    text-align:center;
}
</style>


<center>
		    <div class="container">
        		<div class="row">
            	<div class="form_bg">
            	<h2>Placement Corner</h2>
            	<hr>
${SendOtpError}
<c:choose>
<c:when test="${empty FpassData}">


	<div style="width: 100%;">
				<form  method="post" action="EmailController" style="height:400px;" id="sendotp">
					<br/>
					
					<h3 >Forgot Password</h3>
					<br/>
					<br/>
					<div class="form-group">
                        <input type="text" class="form-control" name="email" placeholder="Enter your Email Here">
                    </div>
					
					<div class="align-center">
                        <input type="submit"  class="btn btn-primary" value="SendOtp" name="action" style="margin-top: 50px;">
                    </div>
				</form>
			</div>	
	

</c:when>
<c:otherwise>
<form action="EmailController" method="post" id="confirmotp">
<h4><b>${ErrorOtp}</b></font></h4>
<br>
<h4><b>OTP Sent On ${FpassData}</b></h4>
<br/>
<br/>
<div class="form-group">
       <input type="text" class="form-control" name="EnterOtp"" placeholder="Enter your OTP Here">
</div>

<br>

<div class="align-center">
	<!--button type="submit" class="btn btn-primary" >Confirm</button-->
	<input type="submit"  class="btn btn-primary" name="action" value="ConfirmOtp" style="margin-top: 50px;">
</div>

</div>
</form>

</c:otherwise>


</c:choose>
					<br>
            </div>
        </div>
    </div>
    </center>

<!-- 
<form action="AdminloginController" method="post">
                
                     <h3 class="text-center">Admin Login</h3>
                    <br/>
                    <div class="form-group">
                        <input type="text" class="form-control" id="adminid" name="id" placeholder="Admin ID">
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" id="pwd" name="password" placeholder="Password">
                    </div>
                    <br/>
                    <div class="align-center">
                        <input type="submit" class="btn btn-primary" id="login" name="action" value="Sign in">
                    </div>
                    
                    <a href="forgotpassword.jsp">Forgot Password</a>
                </form>
 -->

</body>
</html>