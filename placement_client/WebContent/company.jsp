<%@page import="java.util.List"%>
<%@page import="com.bean.Loginbean"%>
<%@page import="com.bean.Companybean"%>
<%@page import="com.dao.Companydao"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"
            media="all">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/style.css" rel='stylesheet' type='text/css' media="all">

<link rel="stylesheet" type="text/css" href="datatable/bootstrap.css">
<link rel="stylesheet" type="text/css" href="datatable/dataTables.bootstrap4.min.css">

<script type="text/javascript" src="datatable/jquery-3.3.1.js"></script>
<script type="text/javascript" src="datatable/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="datatable/dataTables.bootstrap4.min.js"></script>

<link rel="stylesheet" href="css/jquery-ui.css"/>


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
<%
Companydao dao=new Companydao();
List<Companybean> list=dao.getAllcompanies();

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
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
        <section class="about py-lg-4 py-md-3 py-sm-3 py-3" id="about">
        <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
           <table id="example" class="table table-striped table-bordered" style="width:100% ; background-color: white;">
      <thead>
                    <tr>
                        <th scope="col">Company Name</th>
                        <th scope="col">Type</th>
                        <th scope="col">Category</th>
                        <th scope="col">Criteria</th>
                        <th scope="col">Placement Date</th>
                        <th scope="col">Open For</th>
                        <th scope="col">Registration Start Date</th>
                        <th scope="col">Registration End Date</th>
                        <th scope="col">Status</th>
                    </tr>
                </thead>
                <tbody>
                <%
	for(Companybean c:list)
	{
	%>
                
                    <tr>
                        <th scope="row"><a href="companydetail.jsp?info=<%=c.getCid()%>"><%=c.getName() %></a></th>
                        <td><%=c.getType() %></td>
                        <td><%=c.getCategory() %></td>
                        <td><%=c.getCpi_ug() %></td>
                        <td><%=c.getPlacement_date() %></td>
                        <td><%=c.getOpen_for() %></td>
                        <td><%=c.getReg_start_date() %></td>
                        <td><%=c.getReg_end_date() %></td>
                        <td><%=c.getStatus() %></td>
                    </tr>
               
                
	<%} %>
	 </tbody>
            </table>
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
		<div class="text-center">
			<a href="#home" class="move-top text-center mt-3"></a>
		</div>
	</div>
	</footer>
    </body>
    
    <script type="text/javascript">
    $(document).ready(function() {
        $('#example').DataTable();
    } );
    </script>
</html>
