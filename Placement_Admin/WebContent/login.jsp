<%@page import="com.bean.Adminloginbean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Admin Login | Placement Corner </title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/morris.css" type="text/css"/>
<!-- Graph CSS -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<script src="js/jquery-2.1.4.min.js"></script>
<!-- //jQuery -->
<link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'/>
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<!-- lined-icons -->
<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
<link rel="stylesheet" href="fonts/poppins/stylesheet.css" type="text/css" charset="utf-8" />
<!-- //lined-icons -->

<link rel="stylesheet" href="css/jquery-ui.css"/>
<script src="js/validation/jquery.min.js"></script>
<script src="js/validation/jquery.validate.min.js"></script>

<script src="js/validation/formvalidationLogin.js"></script>
</head> 
<%
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
%>
<%
	Adminloginbean e=null;
	if(session!=null)
	{
		if(session.getAttribute("s")!=null)
		{
			response.sendRedirect("index.jsp");
			
		}
	}	
	
%>
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
                <form action="AdminloginController" method="post" id="login">
                
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
                    <br>
                    <a href="forgotpassword.jsp">Forgot Password</a>
                </form>
                	
                    <hr>
                    <p>© 2019 | DAIICT</p>
            </div>
        </div>
    </div>
    </center>


<!--COPY rights end here-->
<!-- <div class="copyrights" style="margin-bottom: 0px;">
	 <p>© 2019 | DAIICT</p>
</div> -->	



  <!--//content-inner-->
<!--js -->
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.min.js"></script>
   <!-- /Bootstrap Core JavaScript -->	   


</body>
</html>