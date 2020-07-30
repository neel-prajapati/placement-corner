<%@page import="com.bean.Loginbean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zxx">
  <head>
    <title>About us</title>
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
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/style.css" rel='stylesheet' type='text/css' media="all">
    <link href="//fonts.googleapis.com/css?family=Fira+Sans:400,500,600,700" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Oxygen:400,700" rel="stylesheet">
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
		</div>
    <div class="using-border py-3">
      <div class="inner_breadcrumb  ml-4">
        <ul class="short_ls">
          <li>
            <a href="index.jsp">Home</a>
            <span>/</span>
          </li>
          <li>About</li>
        </ul>
      </div>
    </div>
    <section class="about-inner py-lg-4 py-md-3 py-sm-3 py-3">
      <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
        <h3 class="title text-center mb-md-4 mb-sm-3 mb-3 mb-2">About Us</h3>
        <div class="title-wls-text text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">
          <p>"I think it is possible for ordinary people to choose to be extraordinary." -Elon Musk</p>
        </div>
        <div class="row">
          <div class="col-lg-4 w3layouts-right-side-img">
            <div class="abut-inner-wls-head">
              <h4 class="pb-3">DA-IICT - A Revolutionary Initiative.</h4>
              <p>Dhirubhai Ambani Institute of Information and Communication Technology (DA-IICT), Gandhinagar represents Wave-4 of educational innovation in Gujarat.</p>
              <p class="pt-2">It was in Wave 4 when the focus shifted to higher education and private participation. One of the Institutes created during this period is DA-IICT in 2001. It is the only advanced research and teaching Institute named after the Late Dhirubhai Ambani, the founder of Reliance Group.</p>
            </div>
          </div>
          <div class="col-lg-4 w3layouts-left-side-img">
            <img src="images/dalogo.jpg" class="img-thumbnail" alt="">
          </div>
          <div class="col-lg-4 w3layouts-right-side-img">
            <div class="abut-inner-wls-head">
              <h4 class="pb-3">Student Placement Cell</h4>
              <p>The Student Placement Committee consists of the representative from B. Tech, M. Tech, MSc.(IT), Faculty and Placement Officer. It works constantly to bring various opportunities to the students of DA-IICT.</p>
              <p class="pt-2">The Student Placement Committee is working really hard for the betterment of the students of DA-IICT</p>
              <div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="stats-count">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-6 col-md-6 col-sm-6 stats">
          </div>
          <div class="col-lg-6 col-md-6 col-sm-6 counter-number">
            <div class="row text-center">
              <div class="col-lg-6 col-md-6 col-sm-6 number-w3three-info ">
                <h5>29.3 LPA </h5>
                <h6 class="pt-2">Highest Offer</h6>
              </div>
              <div class="col-lg-6 col-md-6 col-sm-6 number-w3three-info">
                <h5>307</h5>
                <h6 class="pt-2">Total no. of Students Placed</h6>
              </div>
              <div class="col-lg-6 col-md-6 col-sm-6 pt-lg-5 pt-md-4 pt-3 number-w3three-info">
                <h5>10.446 LPA</h5>
                <h6 class="pt-2">Avg. Package</h6>
              </div>
              <div class="col-lg-6 col-md-6 col-sm-6 pt-lg-5 pt-md-4 pt-3 number-w3three-info">
                <h5>147</h5>
                <h6 class="pt-2">No. of Dream offer</h6>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="team py-lg-4 py-md-3 py-sm-3 py-3" id="team">
      <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
        <h3 class="title text-center mb-md-4 mb-sm-3 mb-3 mb-2">Our Team</h3>
        <div class="title-wls-text text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">
          <p>The Student Placement Core team</p>
        </div>
        <div class="row">
          <div class="col-lg-3 col-md-6 col-sm-6 team-row-grid">
            <div class="team-grid">
              <div class="team-image mb-3">
                <img src="images/person1.png" alt="" class="img-fluid">
              </div>
              <h4>Dr. Asim Banerjee</h4>
              <p class="mt-2">Placement Convenor</p>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 col-sm-6 team-row-grid">
            <div class="team-grid">
              <div class="team-image mb-3">
                <img src="images/person2.png" alt="" class="img-fluid">
              </div>
              <h4>Ms. Sneha Thakker</h4>
              <p class="mt-2">Manager - Placement</p>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 col-sm-6 team-row-grid">
            <div class="team-grid">
              <div class="team-image mb-3">
                <img src="images/person1.png" alt="" class="img-fluid">
              </div>
              <h4>Vivek Gover</h4>
              <p class="mt-2">Student Placement Co-ordinator</p>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 col-sm-6 team-row-grid">
            <div class="team-grid ">
              <div class="team-image mb-3">
                <img src="images/person2.png" alt="" class="img-fluid">
              </div>
              <h4>Ms. Anuradha Srivastava</h4>
              <p class="mt-2">Manager</p>
            </div>
          </div>
        </div>
      </div>
    </section>
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