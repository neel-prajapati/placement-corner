<%@page import="com.bean.Loginbean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="zxx">
  <head>
    <title>Student Placement Corner</title>
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
    <div class="header-outs inner_page-banner " id="home">
      <div class="headder-top">
        <nav >
          <div id="logo">
            <h1><a href="index.jsp">DA-IICT</a></h1>
          </div>
          <label for="drop" class="toggle">Menu</label>
          <input type="checkbox" id="drop">
          <ul class="menu mt-2">
            <li class="active"><a href="index.jsp">Home</a></li>
            <li class="mx-lg-3 mx-md-2 my-md-0 my-1"><a href="about.jsp">About</a></li>
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
          <li>Contact</li>
        </ul>
      </div>
    </div>
    <section class="contact py-lg-4 py-md-3 py-sm-3 py-3">
      <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
        <h3 class="title text-center mb-md-4 mb-sm-3 mb-3 mb-2">Contact Us</h3>
        <div class="title-wls-text text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">
          <p>Get in touch with us! We would to Love to hear from you.</p>
        </div>
        <div class="address_mail_footer_grids" style="border: 5px solid white;">
          <iframe src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=DAIICT,+DA+IICT+Road,+Gandhinagar,+Gujarat,+India&amp;aq=1&amp;oq=daiict+&amp;sll=37.0625,-95.677068&amp;sspn=40.59616,86.572266&amp;ie=UTF8&amp;hq=&amp;hnear=&amp;ll=23.188464,72.628422&amp;spn=0.006295,0.006295&amp;t=m&amp;output=embed"></iframe>
        </div>
        <div class="row w3pvt-info-para pt-lg-5 pt-md-4 pt-3">
          <!--contact-map -->
          <div class="col-lg-6 col-md-6">
            <form action="#" method="post">
              <div class="w3pvt-wls-contact-mid">
                <div class="form-group contact-forms">
                  <input type="text" class="form-control" placeholder="Name" required="">
                </div>
                <div class="form-group contact-forms">
                  <input type="email" class="form-control" placeholder="Email" required="">
                </div>
                <div class="form-group contact-forms">
                  <input type="text" class="form-control" placeholder="Phone" required=""> 
                </div>
                <div class="form-group contact-forms">
                  <textarea class="form-control" placeholder="Message" rows="3" required=""></textarea>
                </div>
                <button type="submit" class="btn sent-butnn">Send</button>
              </div>
            </form>
          </div>
          <div class="col-lg-6 col-md-6 contact-form">
            <div class="contact-list-grid">
              <h4>Address</h4>
              <p class="pt-2">DA-IICT, Near Reliance Circle</p>
              <p>Gandhinagar - 382007</p>
            </div>
            <div class="contact-list-grid mt-3">
              <h4>Email</h4>
              <p class="pt-2"><a href="mailto:info@example.com">spc@daiict.ac.in</a> 
              </p>
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



