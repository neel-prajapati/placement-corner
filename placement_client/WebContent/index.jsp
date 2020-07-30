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
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Fira+Sans:400,500,600,700"
	rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Oxygen:400,700"
	rel="stylesheet">
<link href="css/style.css" rel='stylesheet' type='text/css' media="all">
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
	}
%>
<body>
	<div class="main-top" id="home" style="background: black !important">
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
				
				<%   if(s==null)
                	{   
            	 %>
                    
                	<%}
                	else
                	{
                		 %>
                		 
				<li class="mx-lg-3 mx-md-2 my-md-0 my-1"><a href="company.jsp">Preparation</a></li>
				<li class="mx-lg-3 mx-md-2 my-md-0 my-1"><a href="resume.jsp">Resume</a></li>
                <li class="mx-lg-3 mx-md-2 my-md-0 my-1"><a href="faqshow.jsp">FAQ</a></li>
                	
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
		<div class="main-banner text-center">
			<div class="container">
				<div class="style-banner ">
					<h4 class="mb-lg-3 mb-2">Practice Makes You Better</h4>
					<h5>Its Time To Master Your Skills</h5>
				</div>
				<div class="two-demo-button mt-lg-5 mt-md-4 mt-3">
					<p>Get away with your dream job here!</p>
				</div>
				<div class="view-buttn mt-md-4 mt-sm-4 mt-3">
					<a href="about.jsp" class="btn">About Us</a>
				</div>
			</div>
		</div>
	</div>
	<section class="about py-lg-4 py-md-3 py-sm-3 py-3" id="about">
	<div class="container py-lg-5 py-md-4 py-sm-4 py-3">
		<div class="row">
			<div class="col-lg-5 col-md-6 about-imgs-txt">
				<img src="images/ab1.jpg" alt="news image" class="img-fluid">
			</div>
			<div class="col-lg-7 col-md-6 text-right about-two-grids">
				<div class="wthree-about-txt mb-lg-5 mb-md-4 mb-3">
					<h5>Be Prepared!</h5>
				</div>
				<div class="about-para-txt">
					<p>This site aims to develop students of DA-IICT to
					be prepared for the upcoming challenges in the form of placements.
					It will help the students of DA-IICT to level-up the knowledge
					of different domains of Computer Science and Technology.</p>
				</div>
				<div class="view-buttn mt-lg-5 mt-md-4 mt-3">
					<a href="about.jsp" class="">Read More</a>
				</div>
			</div>
		</div>
		<div class="row mt-lg-5 mt-md-4 mt-3">
			<a href="data_structure.jsp"><div class="col-lg-3 col-md-6 col-sm-6 about-abt-grid">
				<div class="about-oil-w3layouts text-center">
					<div class="about-icon mb-lg-5 mb-md-4 mb-3">
						<span class="fas fa-layer-group" aria-hidden="true"></span>
					</div>
					<div class="about-grid-title">
						<h4 class="mb-lg-3 mb-2">Data Structure</h4>
						<p>Come! Lets dive in to the world of Trees, Graphs,Queues and many more!</p>
					</div>
				</div></a>
			</div>
			<a href="algorithms.jsp"><div class="col-lg-3 col-md-6 col-sm-6 about-abt-grid">
				<div class="about-oil-w3layouts text-center">
					<div class="about-icon mb-lg-5 mb-md-4 mb-3">
						<span class="fas fa-sort-amount-down" aria-hidden="true"></span>
					</div>
					<div class="about-grid-title">
						<h4 class="mb-lg-3 mb-2">Algorithms</h4>
						<p>JAVA, PHP, Python and many more to test your programming knowledge.</p>
					</div>
				</div></a>
			</div>
			<a href="database.jsp"><div class="col-lg-3 col-md-6 col-sm-6 about-abt-grid">
				<div class="about-oil-w3layouts text-center">
					<div class="about-icon mb-lg-5 mb-md-4 mb-3">
						<span class="fa fa-database" aria-hidden="true"></span>
					</div>
					<div class="about-grid-title">
						<h4 class="mb-lg-3 mb-2">Database</h4>
						<p>Learn everything about PL/SQL, NOSQL and many more about database.</p>
					</div>
				</div></a>
			</div>
			<a href="aptitude.jsp"><div class="col-lg-3 col-md-6 col-sm-6 about-abt-grid">
				<div class="about-oil-w3layouts text-center">
					<div class="about-icon mb-lg-5 mb-md-4 mb-3">
						<span class="fas fa-square-root-alt" aria-hidden="true"></span>
					</div>
					<div class="about-grid-title">
						<h4 class="mb-lg-3 mb-2">Aptitude</h4>
						<p>A comprehensive guide to help you crack the first round easily.</p>
					</div>
				</div></a>
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