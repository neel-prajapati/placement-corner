<%@page import="com.bean.Degreebean"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.Degreedao"%>
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

<link rel="stylesheet" href="css/jquery-ui.css"/>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.validate.min.js"></script>

<script src="js/validation/formvalidationStudent.js"></script>
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

Degreedao dao=new Degreedao();
String name=dao.getdegreenameByid(s.getDid());


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
    <form name="student"  method="post" action="LoginController">
      <div >
        <span >Student ID:</span>
        <input type="text" name="id" class="name" placeholder="Student ID" id="id" readonly value="<%= s.getId()%>">
        <div class="clearfix"></div>
      </div>
      <div >
        <span >First Name:</span>
        <input type="text" id="fname" name="fname" class="name" placeholder="First Name" required value="<%= s.getFname()%>">
        <div class="clearfix"></div>
      </div>
      <div >
        <span >Middle Name:</span>
        <input type="text" id="mname" name="mname" class="name" placeholder="Last Name" required value="<%= s.getMname()%>">
        <div class="clearfix"></div>
      </div>
      <div >
        <span >Last Name:</span>
        <input type="text" id="lname" name="lname" class="name" placeholder="Last Name" required value="<%= s.getLname()%>">
        <div class="clearfix"></div>
      </div>
      <div >
        <span >Email Address:</span>
        <input type="email" name="email" class="name" placeholder="Email Address" required value="<%= s.getEmail()%>">
        <div class="clearfix"></div>
      </div>
      <div >
        <span >Skype ID:</span>
        <input type="text" name="skypeid" class="name" placeholder="Skype ID" required value="<%= s.getSkypeid()%>">
        <div class="clearfix"></div>
      </div>
      <div >
        <span >Date of Birth:</span>
        <input type="date"id="datepicker" name="dob" class="name" placeholder="Select Birth Date" required="" value="<%= s.getDob()%>">
                <!-- <input type="dob" id="datepicker" id="dob" style="width: 100%;" /> -->

        <div class="clearfix"></div>
      </div>
      <div >
        <span >Gender:</span><br>
        <%
        
        if(s.getGender().equalsIgnoreCase("male"))
        {
        	%>
        <input type="radio" name="gender" value="male" checked="checked">Male
        	
        	<%
        }
        else
        {
         	%>
            <input type="radio" name="gender" value="male" >Male
            	
            	<%
            	
        }
        if(s.getGender().equalsIgnoreCase("female"))
        {
        	%>
         <input type="radio" name="gender" value="female" checked="checked">Female<br><br>
 	
        	<%
        }
        else
        {
        	%>
            <input type="radio" name="gender" value="female" >Female<br><br>
    	
           	<%
       
        }
        
        %>
        <div >
        <span >Blood Group:</span>
        <input type="text" id="blood_group"name="blood_group" class="name" placeholder="Blood Group" required="" value="<%= s.getBlood_group()%>">
        <div class="clearfix"></div>
      </div>
      <div >
        <span >Height(cm):</span>
        <input type="text" name="height" class="name" placeholder="Height" required="" value="<%= s.getHeight()%>">
        <div class="clearfix"></div>
      </div>
        <div class="clearfix"></div>
      </div>
      <div >
        <span >Mobile:</span>
        <input type="text" id="mobile" name="mobile" class="name" placeholder="Mobile Number" required="" value="<%= s.getMobile()%>">
        <div class="clearfix"></div>
      </div>
    
		<div >
        <span >Program</span>
        <input type="text" name="dname" class="name" value="<%= name%>" readonly="readonly">
        <input type="hidden" name="did" value="<%=s.getDid()%>">
        <div class="clearfix"></div>
      </div>
 

        <!-- <div class="clearfix"></div>
      </div> -->
      <div style="margin-top: 30px !important">
        <span >Address:</span>
        <textarea type="text" name="address" class="name"  required="" cols="51" rows="4" style="margin-bottom: 35px; padding: 15px; width: 70%;" ><%= s.getAddress()%></textarea>
                <!-- <textarea class="form-control" id="address" rows="3" class="name"></textarea> -->

        <div class="clearfix"></div>
      </div>
      <div >
        <span >Batch:</span>
        <input type="text" id="start" name="year" class="name" readonly="readonly" style="width: 35%;" value="<%= s.getYear()%>">
      <!--   <input type="date"id="datepicker2" name="name" class="name" placeholder="Start Batch Year" required="" style="width: 35%;" >
 -->

        <div class="clearfix"></div>

      </div>
      <div class="login-w3">
          <input type="submit"  class="login" value="Update" name="action" style="margin: 0 10px; background: #005377; border: 0; padding: 10px 30px; color:white">
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
        
    <script>
    	function update()
    	{
    		location.replace("updatestudentprofile.jsp");
    	}
        
    	function CheckColors(val){
    		 var element=document.getElementById('program');
    		 if(val=='Choose a Programr'||val=='others')
    		   element.style.display='block';
    		 else  
    		   element.style.display='none';
    		}
    	
    	
    	var student_id=document.getElementById("stdid");

    </script>
    </body>
    
</html>