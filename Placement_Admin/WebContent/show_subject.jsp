<%@page import="com.bean.Subjectsbean"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.Subjectsdao"%>
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
<link rel="stylesheet" type="text/css" href="datatable/bootstrap.css">
<link rel="stylesheet" type="text/css" href="datatable/dataTables.bootstrap4.min.css">

<script type="text/javascript" src="datatable/jquery-3.3.1.js"></script>
<script type="text/javascript" src="datatable/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="datatable/dataTables.bootstrap4.min.js"></script>
<script type="text/javascript">

$(document).ready(function() {
    $('#example').DataTable();
} );
</script>
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
Subjectsdao dao=new Subjectsdao();
List<Subjectsbean> list=dao.getAllsubjects(); 
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
		 <h1 style="font-family: 'poppinsbold' ,Arial, sans-serif;font-size: 40px;">Subjects</h1> 

<br>
<table id="example" class="table table-striped table-bordered" style="width:100%">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Subject</th>
      <th scope="col">Edit</th>
      <th scope="col">Delete</th>
    </tr>
  </thead>
  <tbody>
    <%
  for(Subjectsbean s : list)
  {
	   %>
	   <tr>
      <td><%=s.getSid() %></td>
      <td><%=s.getName() %></td>
      <td><form action="update_subject.jsp" method="post"><input type="hidden" value="<%=s.getSid() %>" name="id"><input type="submit" name="action" value="Edit"></form></td>
      <td><form action="SubjectController" method="post"><input type="hidden" value="<%=s.getSid() %>" name="id"><input type="submit" name="action" value="Delete"></form></td>	
    </tr>
	   
	   <%
  }
	  %> 
  </tbody>
</table>

	<br>
	<button class="btn btn-primary" style="float: right;"onclick="window.location.href='add_subject.jsp'">Add Subject</button>

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
	 <p>� 2019 | DAIICT</p>
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