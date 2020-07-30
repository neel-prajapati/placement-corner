<%@page import="com.bean.Loginbean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="zxx">
  <head>
    <title>Lecturing a Education Category Bootstrap Responsive web Template|Gallery :: w3layouts</title>
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
            <h1><a href="index.jsp">Lecturing</a></h1>
          </div>
          <label for="drop" class="toggle">Menu</label>
          <input type="checkbox" id="drop">
          <ul class="menu mt-2">
            <li class="active"><a href="index.jsp">Home</a></li>
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
          <li>Gallery</li>
        </ul>
      </div>
    </div>
    <section class="gallery py-lg-4 py-md-3 py-sm-3 py-3">
      <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
        <h3 class="title text-center mb-md-4 mb-sm-3 mb-3 mb-2">Our College</h3>
        <div class="row gallery-info">
          <div class="col-lg-12 col-md-12 col-sm-12 gallery-img-grid">
            <div class="gallery-grids">
              <a href="#gal1"><img src="images/banner-1.jpg" alt="news image" class="img-fluid"></a>
            </div>
          </div>
          <div class="col-lg-4 col-md-4 col-sm-4 gallery-img-grid mt-lg-4 mt-3">
            <div class="gallery-grids">
              <a href="#gal3"><img src="images/daiict2c.jpg" alt="news image" class="img-fluid"></a>
            </div>
          </div>
          <div class="col-lg-4 col-md-4 col-sm-4 gallery-img-grid mt-lg-4 mt-3">
            <div class="gallery-grids">
              <a href="#gal4"><img src="images/watermark.jpg" alt="news image" class="img-fluid"></a>
            </div>
          </div>
          <div class="col-lg-4 col-md-4 col-sm-4 gallery-img-grid mt-lg-4 mt-3" style="margin: 20px 0;">
            <div class="gallery-grids">
              <a href="#gal5"><img src="images/Daiict_campus.jpg" alt="news image" class="img-fluid"></a>
            </div>
          </div>
          <div class="col-lg-12 col-md-12 col-sm-12 gallery-img-grid">
            <div class="gallery-grids">
              <a href="#gal2"><img src="images/banner-4.jpg" alt="news image" class="img-fluid"></a>
            </div>
          </div>
        </div>
        <div id="gal1" class="popup-effect">
          <div class="popup">
            <img src="images/banner-1.jpg" alt="Popup Image" class="img-fluid" />
            <a class="close" href="#gallery">&times;</a>
          </div>
        </div>
        <div id="gal2" class="popup-effect">
          <div class="popup">
            <img src="images/banner-4.jpg" alt="Popup Image" class="img-fluid" />
            <a class="close" href="#gallery">&times;</a>
          </div>
        </div>
        <div id="gal3" class="popup-effect">
          <div class="popup">
            <img src="images/daiict2c.jpg" alt="Popup Image" class="img-fluid" />
            <a class="close" href="#gallery">&times;</a>
          </div>
        </div>
        <div id="gal4" class="popup-effect">
          <div class="popup">
            <img src="images/watermark.jpg" alt="Popup Image" class="img-fluid" />
            <a class="close" href="#gallery">&times;</a>
          </div>
        </div>
        <div id="gal5" class="popup-effect">
          <div class="popup">
            <img src="images/Daiict_campus.jpg" alt="Popup Image" class="img-fluid" />
            <a class="close" href="#gallery">&times;</a>
          </div>
        </div>
      </div>
    </section>
    <footer class="py-lg-4 py-md-3 py-sm-3 py-3" >
      <div class="container py-lg-5 py-md-5 py-sm-4 py-3">
        <div class="row">
          <div class="col-lg-6 col-md-6 footer-left-grid">
            <div class="footer-w3layouts-head">
              <h2><a href="index.jsp">Lecturing</a></h2>
            </div>
            <div class="mb-1 pt-lg-5 pt-md-4 pt-3 footer-address">
              <ul>
                <li>
                  <h4>Get In Touch</h4>
                </li>
                <li>
                  <p>Melbourne st, QLD 4101,Australia</p>
                </li>
              </ul>
            </div>
            <div class="mb-1 footer-address">
              <ul>
                <li>
                  <h4>Email</h4>
                </li>
                <li>
                  <p><a href="mailto:info@example.com">info@example1.com</a> 
                  </p>
                </li>
              </ul>
            </div>
            <div class="mb-1 footer-address">
              <ul>
                <li>
                  <h4>Phone</h4>
                </li>
                <li>
                  <p>+(000) 123 4565 32</p>
                </li>
              </ul>
            </div>
          </div>
          <div class="footer-info-bottom col-lg-6 col-md-6">
            <h4 class="pb-lg-4 pb-md-3 pb-3">NewsLetter</h4>
            <div class="newsletter">
              <form action="#" method="post" class="d-flex">
                <input type="email" name="Your Email" class="form-control" placeholder="Your Email" required="">
                <button class="btn1">
                <span class="fa fa-envelope" aria-hidden="true"></span>
                </button>
              </form>
            </div>
            <div class="footer-office-hour mt-3">
              <p>vehicula velit sagittis vehicula. Duis posuere ex in mollis iaculis. Suspendisse tincidunt velit sagittis vehicula</p>
            </div>
            <div class="icons mt-3 ">
              <ul>
                <li><a href="#"><span class="fa fa-facebook"></span></a></li>
                <li><a href="#"><span class="fa fa-twitter"></span></a></li>
                <li><a href="#"><span class="fa fa-rss"></span></a></li>
                <li><a href="#"><span class="fa fa-vk"></span></a></li>
              </ul>
            </div>
          </div>
        </div>
        <div class="bottem-wthree-footer text-center pt-lg-5 pt-md-4 pt-3">
          <p> 
            © 2019 Lecturing. All Rights Reserved | Design by <a href="http://www.W3Layouts.com" target="_blank">W3Layouts</a>
          </p>
        </div>
        <div class="text-center">
          <a href="#home" class="move-top text-center mt-3"></a>
        </div>
      </div>
    </footer>
  </body>
</html>