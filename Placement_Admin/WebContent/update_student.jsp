<%@page import="java.util.List"%>
<%@page import="com.dao.Degreedao"%>
<%@page import="com.bean.Degreebean"%>
<%@page import="com.bean.Loginbean"%>
<%@page import="com.dao.Logindao"%>
<%@page import="com.bean.Adminloginbean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Placement Corner</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link rel="stylesheet" href="/fonts/poppins/stylesheet.css" type="text/css" />
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

<script src="js/validation/formvalidationStudent.js"></script>
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
			e=(Adminloginbean)session.getAttribute("s");
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

<%
int id=Integer.parseInt(request.getParameter("id"));
Logindao dao=new Logindao();
Loginbean l=dao.getloginById(id);
Degreedao dao1=new Degreedao();

List<Degreebean> list =dao1.getAlldegrees();
%>
<body>

<style type="text/css">
					h1{
				font-family: 'poppinsbold';
							}
					.btn-primary, .btn-primary:active, .btn-primary:visited {
    			background-color: #ff0050 !important;
							}
				.btn-primary:hover {
				background-color: black !important;	
							}

		</style>

   <div class="page-container">
   <!--/content-inner-->
<div class="left-content">
	   <div class="mother-grid-inner">
<!--header start here-->
	<h1>DA-IICT Placement Corner</h1>

	<div class="map"> <!-- ////////////////////// Main Division Starts ///////////////////// -->
		 <h1 style="font-family: 'poppinsbold' ,Arial, sans-serif;font-size: 40px;">Update Student Details</h1> 

<!-- <div class="clearfix"> </div>	 -->
<br>
<form method="post" action="LoginController" id="student">
  <div class="form-group">
    <label for="stud_id">Student ID</label>
    <input type="text" class="form-control" name="stud_id" id="stud_id"  value="<%=l.getId() %>" >
  </div>
  <div class="form-group">
    <label for="fname">First Name</label>
    <input type="text" class="form-control" name="fname" id="fname" value="<%=l.getFname() %>" >
  </div>
  <div class="form-group">
    <label for="lname">Middle Name</label>
    <input type="text" class="form-control" name="mname" id="mname" value="<%=l.getMname() %>" >
  </div>
  <div class="form-group">
    <label for="lname">Last Name</label>
    <input type="text" class="form-control" name="lname" id="lname" value="<%=l.getFname() %>" >
  </div>
  <div class="form-group">
    <label for="email">Email Address</label>
    <input type="text" class="form-control" name="email" id="email" value="<%=l.getEmail() %>" >
  </div>
  <div class="form-group">
    <label for="dob">Date Of Birth</label>
    <input type="dob" id="datepicker" name="dob" class="form-control" value="<%=l.getDob() %>" >
  </div>
  <div class="form-group">
    <label for="gender">Gender</label>
    <div>
					<select class="form-control" name="gender" id="gender" required>
						<option value=" " disabled selected>Select Gender</option>
						<%
						if(l.getGender().equalsIgnoreCase("male"))
								{
							%>
							<option value="male" selected="selected">Male</option>
							<%
	
								}
						else
						{
							%>
							<option value="male">Male</option>
							<%
						}
						%>
						<%
						if(l.getGender().equalsIgnoreCase("female"))
								{
							%>
							<option value="female" selected="selected">Female</option>
							<%
	
								}
						else
						{
							%>
							<option value="female">Female</option>
							<%
						}
						%>
						
  						
  						
					</select>
				</div>
  </div>
  <div class="form-group">
    <label for="mobile">Mobile</label>
    <input class="form-control" type="text" name="mobile"  id="mobile" value="<%=l.getMobile()%>">
  </div>
  <div class="form-group">
    <label for="program">Program</label>
    <div>
					<select class="form-control" name="program" id="program" >
						<%
						for(Degreebean d:list)
						{
							
							if(d.getDid()==l.getDid())
							{
								%>
								<option value="<%=d.getDid()%>"><%=d.getDname() %></option>
								
								<%
							
							}
							else
							{
								%>
								<option value="<%=d.getDid()%>"><%=d.getDname() %></option>
								
								<%
								
							}
								}
						%>					
					
						</select>
				</div>
  </div>
  <div class="form-group">
    <label for="address">Address</label>
    <textarea class="form-control" name="address" id="address" rows="5" ><%=l.getAddress() %> </textarea>
  </div>
  <!-- <div class="form-group">
    <label for=""></label>
    <input type="text" class="form-control" required>
  </div> -->
  
  <input type="submit" class="btn btn-primary" style="float: right;" value="update" name="action">
  <button type="reset" class="btn btn-primary" style="float: right;margin-right: 10px;">Clear</button> 
</form>

		<div class="clearfix"> </div>
	</div> <!-- ////////////////////// Main Division Ends ///////////////////// -->
	
<!-- script-for sticky-nav -->
		<script>
		$(document).ready(function() {
			 var navoffeset=$(".header-main").offset().top;
			 $(window).scroll(function(){
				var scrollpos=$(window).scrollTop(); 
				if(scrollpos >=navoffeset){
					$(".header-main").addClass("fixed");
				}else{
					$(".header-main").removeClass("fixed");
				}
			 });
			 
		});
		</script>
		<!-- /script-for sticky-nav -->
<!--inner block start here-->
<div class="inner-block">

</div>
<!--inner block end here-->
<!--copy rights start here-->
<div class="copyrights">
	 <p>© 2019 | DAIICT</p>
</div>	
<!--COPY rights end here-->
</div>
</div>
  <!--//content-inner-->
		<!--/sidebar-menu-->
<!--/sidebar-menu-->
				<div class="sidebar-menu">
					<header class="logo1">
						<a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span> </a> 
					</header>
						<div style="border-top:1px ridge rgba(255, 255, 255, 0.15)"></div>
                           <div class="menu">
									<ul id="menu">
										<li><a href="index.jsp"><i class="fa fa-tachometer"></i> <span style="position: relative;">Dashboard</span><div class="clearfix"></div></a></li>

										 <li id="menu-academico" ><a href="frm_student.jsp"><i class="fa fa-users nav_icon" aria-hidden="true"></i><span> Student Details </span> <!-- <span class="fa fa-angle-right" style="float: right"></span> --><div class="clearfix"></div></a>
										   <!-- <ul id="menu-academico-sub" >
										   <li id="menu-academico-avaliacoes" ><a href="show_btech.jsp">BTech</a></li>
											<li id="menu-academico-avaliacoes" ><a href="show_mtech.jsp">MTech</a></li>
											<li id="menu-academico-avaliacoes" ><a href="show_mscit.jsp">MSc(IT)</a></li>
											<li id="menu-academico-avaliacoes" ><a href="show_mdes.jsp">MDes</a></li>
										  </ul> -->
										</li>
										  <ol style="list-style: none">
<li><a href="add_student.jsp"><i class="fa fa-user-plus"></i> <span style="position: relative;">Add Student</span><div class="clearfix"></div></a></li> 
</ol>

									<li><a href="show_company.jsp"><i class="fa fa-building-o" aria-hidden="true"></i><span style="position: relative;">Company Details</span><div class="clearfix"></div></a></li>
									
									<li><a href="show_degree.jsp"><i class="fa fa-graduation-cap" aria-hidden="true"></i><span style="position: relative;">Degrees</span><div class="clearfix"></div></a></li>
<!-- <ol style="list-style: none">
<li><a href="add_company.jsp"><i class="fa fa-plus"></i> <span style="position: relative;">Add Company</span><div class="clearfix"></div></a></li>
</ol> -->


									<!-- <li><a href="show_subject.jsp"><i class="fa fa-book" aria-hidden="true"></i><span style="position: relative;">Study Materials </span><div class="clearfix"></div></a></li> -->
		
		<li id="menu-academico" ><a href="#"><i class="fa fa-book" aria-hidden="true"></i><span> Study Materials </span> <span class="fa fa-angle-right" style="float: right"></span><div class="clearfix"></div></a>
										   <ul id="menu-academico-sub" >
										   <li id="menu-academico-avaliacoes" ><a href="show_subject.jsp">Subjects</a></li>
											<li id="menu-academico-avaliacoes" ><a href="show_topics.jsp">Topics</a></li>
										</ul>
										</li>

									<li><a href="show_faq.jsp"><i class="fa fa-question" aria-hidden="true"></i><span style="position: relative;">FAQs</span><div class="clearfix"></div></a></li>


									<li><a href="show_admin.jsp"><i class="fa fa-user-secret" aria-hidden="true"></i><span style="position: relative;">Admin Details</span><div class="clearfix"></div></a></li>
		
									<li id="menu-academico" ><a href="#"><i class="fa fa-lock" aria-hidden="true"></i><span> Change Password </span> <span class="fa fa-angle-right" style="float: right"></span><div class="clearfix"></div></a>
										   <ul id="menu-academico-sub" >
										   <li id="menu-academico-avaliacoes" ><a href="change_password_student.jsp">Student</a></li>
											<li id="menu-academico-avaliacoes" ><a href="change_password_admin.jsp">Admin</a></li>
										  </ul>
										</li>

								
									<li><a href="sign_out.jsp"><i class="fa fa-sign-out fa-fw" aria-hidden="true"></i><span style="position: relative;">Sign Out</span><div class="clearfix"></div></a></li>
								</ul>
								</div>
							  </div>
        <!--/sidebar-menu ends-->
							  </div>
							  <div class="clearfix"></div>		
							</div>
							<script>
							var toggle = true;
										
							$(".sidebar-icon").click(function() {                
							  if (toggle)
							  {
								$(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
								$("#menu span").css({"position":"absolute"});
							  }
							  else
							  {
								$(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
								setTimeout(function() {
								  $("#menu span").css({"position":"relative"});
								}, 400);
							  }
											
											toggle = !toggle;
										});
							</script>
<!--js -->
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.min.js"></script>
   <!-- /Bootstrap Core JavaScript -->	   

</body>
</html>