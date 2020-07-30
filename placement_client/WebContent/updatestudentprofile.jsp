<%@page import="com.bean.Loginbean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
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
<style>
   .form1 > div{
     margin-bottom:20px;
   }
</style>
    </head>
    
   <%
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
%>
<%
	Loginbean s=null;
	if(session!=null)
	{
		if(session.getAttribute("s")!=null)
		{
			s=(Loginbean)session.getAttribute("s");
		}
		else
		{
			response.sendRedirect("login.jsp");
		}
	}
	else
	{
		response.sendRedirect("login.jsp");
	}
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
	
					<%   if(s==null)
                	{   
            	 %>
                    
                	<%}
                	else
                	{
                		 %>
                		 
				<li class="mx-lg-3 mx-md-2 my-md-0 my-1"><a href="company.jsp">Preparation</a></li>
				<li class="mx-lg-3 mx-md-2 my-md-0 my-1"><a href="resume.jsp">Resume</a></li>
                	
                	<%} %>
			
                    <li class="mx-lg-3 mx-md-2 my-md-0 my-1"><a href="about.jsp">About Us</a></li>
                    <li><a href="contact.jsp">Contact Us</a></li>
                    <li class="mx-lg-3 mx-md-2 my-md-0 my-1">
                    
                    
                   <%   if(s==null)
                	{   
            	 %>
                    <a href="login.jsp">LogIn</a>
                	<%}
                	else
                	{
                		 %>
                		 
                		  <a href="logout.jsp">LogOut</a>
                	
                	<%} %>
				
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
		  <h2>Student Profile</h2>
    <form action="LoginController" method="post" class="form1" >
      <div >
        <span >Student ID:</span>
        <label for="name" style="background: white; width: 60%; height: 42px; padding: 8px 20px; margin-left: 59px;"> <%=s.getId() %></label>
        <div class="clearfix"></div>
      </div>
      <div >
        <span >First Name:</span><label for="name" style="background: white; width: 60%; height: 42px; padding: 8px 20px; margin-left: 59px;"> <%=s.getFname() %></label>
        <div class="clearfix"></div>
      </div>
      <div >
        <span >Middle Name:</span><label for="name" style="background: white; width: 60%; height: 42px; padding: 8px 20px; margin-left: 59px;"> <%=s.getMname() %></label>
        <div class="clearfix"></div>
      </div>
      
      <div >
        <span >Last Name:</span><label for="name" style="background: white; width: 60%; height: 42px; padding: 8px 20px; margin-left: 59px;"> <%=s.getLname() %></label>
        <div class="clearfix"></div>
      </div>
      <div >
        <span >Email Address:</span><label for="name" style="background: white; width: 60%; height: 42px; padding: 8px 20px; margin-left: 59px;"><%=s.getEmail() %></label>
        <div class="clearfix"></div>
      </div>
      
      <div >
        <span >Skype ID:</span><label for="name" style="background: white; width: 60%; height: 42px; padding: 8px 20px; margin-left: 59px;"> <%=s.getSkypeid() %></label>
        <div class="clearfix"></div>
      </div>
      <div >
        <span >Date of Birth:</span>
        <label for="name" style="background: white; width: 60%; height: 42px; padding: 8px 20px; margin-left: 59px;"> <%=s.getDob() %></label>
        <div class="clearfix"></div>
      </div>
      
      
      <div >
        <span >Gender:</span>
        <label for="name" style="background: white; width: 60%; height: 42px; padding: 8px 20px; margin-left: 59px;"> <%=s.getGender() %></label>
        <div class="clearfix"></div>
      </div>
        <div >
        <span >Height:</span>
        <label for="name" style="background: white; width: 60%; height: 42px; padding: 8px 20px; margin-left: 59px;"> <%=s.getHeight() %></label>
        <div class="clearfix"></div>
      </div>
        <div >
        <span >Blood Group:</span>
        <label for="name" style="background: white; width: 60%; height: 42px; padding: 8px 20px; margin-left: 59px;"> <%=s.getBlood_group() %></label>
        <div class="clearfix"></div>
      </div>
       <div >
        <span >Address:</span>
        <label for="name" style="background: white; width: 60%; height: auto; padding: 8px 20px; margin-left: 59px;"> <%=s.getAddress() %></label>
        <div class="clearfix"></div>
      </div>
      <div >
      <div >
        <span >Mobile:</span>
        <label for="name" style="background: white; width: 60%; height: 42px; padding: 8px 20px; margin-left: 59px;"> <%=s.getMobile() %></label>
        <div class="clearfix"></div>
      </div>
      <div >
        <span >Program:</span>
        <label for="name" style="background: white; width: 60%; height: 42px; padding: 8px 20px; margin-left: 59px;"> <%=s.getMobile() %></label>
        <div class="clearfix"></div>
      </div>
     
        <span >Batch:</span>
        <label for="name" style="background: white; width: 60%; height: 42px; padding: 8px 20px; margin-left: 59px;"> <%=s.getYear() %></label>
        <div class="clearfix"></div>
      </div>
      <div class="login-w3" class="btns" style="display: flex"><!-- 
          <input type="button" class="login" value="Submit" style="margin: 0 10px; background: #005377; border: 0; padding: 10px 30px; color:white;"> -->
          <input type="button" onclick="update()" class="login" value="Update" style="margin: 0 10px; background: #005377; border: 0; padding: 10px 30px; color:white;">
      </div>
     
      <div class="clearfix"></div>
    </form>
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
    
    <script>
    	function update()
    	{
    		location.replace("studentprofile.jsp");
    	}
    </script>
</html>