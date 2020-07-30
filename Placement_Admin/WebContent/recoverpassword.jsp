<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Placement Corner</title>
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


<%

	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
	session.removeAttribute("otp");
	String email=(String)session.getAttribute("FpassData");

	session.invalidate(); 
%>

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



<%-- <h1>Recover Password</h1>
<div style="width: 100%;">
<c:if test="${empty OtpMatch }">
<c:redirect url="forgotpassword.jsp"/>
</c:if>
<form action="EmailController" method="post"  id="chgepass">
<h3 ><font face="Adobe Myungjo Std M" size="20" color="white"><b>Change Password</b></font></h3>
					<br/>
					<br/>
					<br/>
<div>
	<input type="password" name="NewPassword" id="NewPassword" placeholder="Enter New Password">
						
	<input type="password" name="CPassword" placeholder="Enter Confirm Password">

<input type="hidden" name="email" value="<%=email%>">
<button type="submit" name="action" value="RecoverPassword" class="button" style="margin-top: 50px;">Change</button>
		</div>
		
					
	</form>
	</div> --%>
	
	<center>
		    <div class="container">
        		<div class="row">
            	<div class="form_bg">
            	<h2>Placement Corner</h2>
            	<hr>
            	<c:if test="${empty OtpMatch }">
<c:redirect url="forgotpassword.jsp"/>
</c:if>
                <form action="EmailController" method="post"  id="chgepass">
                
                     <h3 class="text-center">Recover Password</h3>
                    <br/>
                    <div class="form-group">
                        <input type="password" name="NewPassword" id="NewPassword" class="form-control" placeholder="Enter New Password">
                    </div>
                    <div class="form-group">
                        <input type="password" name="CPassword" class="form-control" placeholder="Enter Confirm Password">
                    </div>
                    <input type="hidden" name="email" value="<%=email%>">
                    <br/>
                    <div class="align-center">
                        <input type="submit"  class="btn btn-primary" name="action" value="RecoverPassword" style="margin-top: 50px; value="Chnage">
                    </div>
                    
                </form>
                    <hr>
                    <p>© 2019 | DAIICT</p>
            </div>
        </div>
    </div>
    </center>
</body>
</html>