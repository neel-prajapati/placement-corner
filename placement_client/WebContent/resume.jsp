<%@page import="com.bean.Projectbean"%>
<%@page import="com.bean.Hobbiesbean"%>
<%@page import="com.bean.Achievementsbean"%>
<%@page import="com.bean.Responsibilitybean"%>
<%@page import="com.bean.Educationbean"%>
<%@page import="com.bean.Degreebean"%>
<%@page import="java.util.List"%>
<%@page import="com.bean.Resumebean"%>
<%@page import="com.dao.Resumedao"%>
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
    <meta name="keywords" content="Lecturing Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
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
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
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
    <link rel="stylesheet" href="css/sign/morris.css" type="text/css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/js/bootstrap-datepicker.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker.css" rel="stylesheet" />
    <style>
        .form1 > div{
            margin-bottom: 40px;
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

<%

Resumedao sdao=new Resumedao();
Resumebean r=new Resumebean();
r=sdao.getresumebystudent(s);



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
            <label for="drop" class="toggle">Menu</label> <input type="checkbox" id="drop">
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
        <div class="container-fluid py-lg-5 py-md-4 py-sm-4 py-3">
            <div class="main-wthree" style="margin-top: 3%;">
                <div class="container-fluid" style="margin-left: 1%;">
                    <div class="row">
                        <div class="col-md-6">
                                <h2 style="text-align: left; margin: 15px 0;">
                                    Personal Info
                                </h2>
                                <form action="#" method="post" class="form1">
                                    <div class="">
                                        <span>Name:</span>
                                        <label for="name" style="background: white; width: 55%; height: 42px; padding: 8px 20px; margin-left: 59px;"> <%=r.getPersonal_infobean().getSname() %></label>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="">
                                        <span>Email:</span>
                                        <!-- <input type="text" name="name" class="name" placeholder="First Name" required=""> -->
                                        <label for="email" style="background: white; width: 55%; height: 42px; padding: 8px 20px; margin-left: 59px;"> <%=r.getPersonal_infobean().getEmail() %></label>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div>
                                        <span>Date of Birth:</span>
                                        <label for="dob" style="background: white; width: 55%; height: 42px; padding: 8px 20px; margin-left: 59px;"><%=r.getPersonal_infobean().getDob() %></label>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="">
                                        <span>Address:</span>
                                        <!-- <input type="text" name="name" class="name" placeholder="First Name" required=""> -->
                                        <label for="name" style="background: white; width: 55%; height: 122px; padding: 8px 20px; margin-left: 59px;"><%=r.getPersonal_infobean().getAddress() %></label>
                                        <div class="clearfix"></div>
                                    </div>
                                </form>
                        </div>
                        <div class="col-md-6"><!-- 
                            <h2 style="text-align: left; margin: 15px 0;">Personal Info</h2> -->
                            <form class="row">
                                <div class="col-md-2">
                                    <span style="width: 100%;">Degree</span>
                                </div>
                                <div class="col-md-5"><span style="width: 100%; height: auto;">University/Institute</span></div>
                                <div class="col-md-3"><span style="width: 100%; height: auto;">Year</span></div>
                                <div class="col-md-2"><span style="width: 70%;">CPI</span></div>



									<%
									for(Educationbean d:r.getEducationlist())
									{
										%>
										<div class="col-md-2">
                                <label for="name" style="background: white; width: 100%; height: auto; padding: 8px 20px;"><%=d.getDname() %></label></div>
                                <div class="col-md-5">
                                <label for="name" style="background: white; width: 100%; height: auto; padding: 8px 20px;"><%=d.getInstitute() %></label></div>
                                <div class="col-md-3">
                                <label for="name" style="background: white; width: 100%; height: auto; padding: 8px 20px;"><%=d.getStart_year()  %> - <%=d.getEnd_year() %></label></div>
                                <div class="col-md-2">
                                <label for="name" style="background: white; width: 70%; height: auto; padding: 8px 20px;"><%=d.getCpi()%></label></div>
                            
										
										<%
									}
									%>
</form>
                        </div>
                        <div class="col-md-6">
                            <h2 style="text-align: left; margin: 15px 0;">Skills</h2>
                            <form action="#" method="post" class="form1">
                                <div class="">
                                    <span>Expertise Area(s) of Interest:</span>
                                    <label for="expertise" style="background: white; width: 55%; height: 92px; padding: 8px 20px; margin-left: 59px;"> <%=sdao.getareasstring(r.getAreaslist()) %></label>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="">
                                    <span>Programming Languages:</span>
                                    <label for="languages" style="background: white; width: 55%; height: 92px; padding: 8px 20px; margin-left: 59px;"> <%=sdao.getlanguagesstring(r.getLanguageslist()) %></label>
                                    <div class="clearfix"></div>
                                </div>
                                <div>
                                    <span>Tools & Technologies:</span>
                                    <label for="tools_technologies" style="background: white; width: 55%; height: 92px; padding: 8px 20px; margin-left: 59px;"><%=sdao.gettoolsstring(r.getTools_technologybean()) %></label>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="">
                                    <span>Technical Electives:</span>
                                    <!-- <input type="text" name="name" class="name" placeholder="First Name" required=""> -->
                                    <label for="name" style="background: white; width: 55%; height: 92px; padding: 8px 20px; margin-left: 59px;"><%=sdao.getelectivesstring(r.getElectiveslist()) %></label>
                                    <div class="clearfix"></div>
                                </div>
                            </form>
                        </div>
                        <div class="col-md-6">
                            <h2 style="text-align: left; margin: 15px 0;">Position of Responsibility</h2>
                            <form action="#" method="post" class="form1">
                              
                              <%
                              for(Responsibilitybean sb : r.getResponsibilitylist())
                              {
                            	  %>
                            	  
                            	<div class="">
                                    <label for="expertise" style="background: white; width: 95%; height: auto; padding: 8px 20px;"><%=sb.getName() %></label>
                                    <div class="clearfix"></div>
                                </div>
                                  
                            	  <%                              }
                              
                              %>
                               </form>
                        </div>
                        <div class="col-md-6">
                            <h2 style="text-align: left; margin: 15px 0;">Awards & Achievement</h2>
                            <form action="#" method="post" class="form1">
                               
                               <%
                               for(Achievementsbean ab : r.getAchievementslist())
                               {
                            	   %>
                            	<div class="">
                                    <label for="expertise" style="background: white; width: 95%; height: auto; padding: 8px 20px;"><%=ab.getName() %></label>
                                    <div class="clearfix"></div>
                                </div>
                                   
                            	   
                            	   <%                               }
                               %>
                               
                               </form>
                        </div>
                        <div class="col-md-6">
                            <h2 style="text-align: left; margin: 15px 0;">Interest & Hobbies</h2>
                            <form action="#" method="post" class="form1">
                              
                               <%
                              for(Hobbiesbean hb:r.getHobbieslist())
                              {
                            	  %>
                            	
                            	<div class="">
                                    <label for="expertise" style="background: white; width: 95%; height: auto; padding: 8px 20px;"> <%=hb.getName() %></label>
                                    <div class="clearfix"></div>
                                </div>
                                  
                            	  <%                              }
                              %> 
                            </form>
                        </div>
                    </div>
                </div>

                <div class="container-fluid" style="margin-left: 1%;">
                    <h2 style="text-align: left; margin: 15px 0;">Project</h2>
                    <form class="row">
                        <div class="col-md-2"><span style="width: 95%; height: auto; padding: 8px 20px;">Project Name</span></div>
                        <div class="col-md-4"><span style="width: 95%; height: auto; padding: 8px 20px;">Description</span></div>
                        <div class="col-md-2"><span style="width: 95%; height: auto; padding: 8px 20px;">Guide/Supervisor</span></div>
                        <div class="col-md-2"><span style="width: 95%; height: auto; padding: 8px 20px;">Date</span></div>
                        <div class="col-md-2"><span style="width: 80%; height: auto; padding: 8px 20px;">Team Size</span></div>


					<%
					
					for(Projectbean p : r.getProjectlist())
					{
						%>
						
						 <div class="col-md-2"><label for="expertise" style="background: white; width: 95%; height: auto; padding: 8px 20px;"><%=p.getName() %></label></div>
                        <div class="col-md-4"><label for="expertise" style="background: white; width: 95%; height: auto; padding: 8px 20px;"><%=p.getDescription() %></label></div>
                        <div class="col-md-2"><label for="expertise" style="background: white; width: 95%; height: auto; padding: 8px 20px;"><%=p.getGuide() %></label></div>
                        <div class="col-md-2"><label for="expertise" style="background: white; width: 95%; height: auto; padding: 8px 20px;"><%=p.getStart()  %> - <%=p.getEnd() %></label></div>
                        <div class="col-md-2"><label for="expertise" style="background: white; width: 80%; height: auto; padding: 8px 20px;"><%=p.getTeam() %></label></div>
						<%					}
					%>
    

                    </form>
                </div>

                <div class="container-fluid" style="margin-left: 1%;">
                    <div class="row">
                        <div class="col-md-2 offset-md-10">
                            <a href="addresume.jsp" class="btn btn-danger" style="width: 80%; background-color: #e74c3c; border-radius: 0;">Update</a>
                        </div>
                    </div>
                </div>
                <!-- <div class="container">
                    <div class="sin-w3-agile">
                        <h2>Student Profile</h2>
                        <form action="#" method="post" class="form1">
                            <div class="">
                                <span>First Name:</span>
                                 <input type="text" name="name" class="name" placeholder="First Name" required=""> 
                                <label for="name" style="background: white; width: 55%; height: 42px; padding: 8px 20px; margin-left: 59px;"> hello world</label>
                                <div class="clearfix"></div>
                            </div>
                            <div>
                                <span>First Name:</span><label for="name" style="background: white; width: 55%; height: 42px; padding: 8px 20px; margin-left: 59px;"> hello world</label>
                                <div class="clearfix"></div>
                            </div>
                            <div>
                                <span>Last Name:</span><label for="name" style="background: white; width: 55%; height: 42px; padding: 8px 20px; margin-left: 59px;"> hello world</label>
                                <div class="clearfix"></div>
                            </div>
                            <div>
                                <span>Email Address:</span><label for="name" style="background: white; width: 55%; height: 42px; padding: 8px 20px; margin-left: 59px;"> hello world</label>
                                <div class="clearfix"></div>
                            </div>
                            <div>
                                <span>Date of Birth:</span>
                                <label for="name" style="background: white; width: 55%; height: 42px; padding: 8px 20px; margin-left: 59px;"> hello world</label>
                                <div class="clearfix"></div>
                            </div>
                            <div>
                                <span>Gender:</span>
                                <label for="name" style="background: white; width: 55%; height: 42px; padding: 8px 20px; margin-left: 59px;"> hello world</label>
                                <div class="clearfix"></div>
                            </div>
                            <div>
                                <span>Mobile:</span>
                                <label for="name" style="background: white; width: 55%; height: 42px; padding: 8px 20px; margin-left: 59px;"> hello world</label>
                                <div class="clearfix"></div>
                            </div>
                            <div>
                                <span>Program:</span>
                                <label for="name" style="background: white; width: 55%; height: 42px; padding: 8px 20px; margin-left: 59px;"> hello world</label>
                                <div class="clearfix"></div>
                            </div>
                            <div>
                                <span>Address:</span>
                                <label for="name" style="background: white; width: 55%; height: 42px; padding: 8px 20px; margin-left: 59px;"> hello world</label>
                                <div class="clearfix"></div>
                            </div>
                            <div>
                                <span>Batch:</span>
                                <label for="name" style="background: white; width: 55%; height: 42px; padding: 8px 20px; margin-left: 59px;"> hello world</label>
                                <div class="clearfix"></div>
                            </div>
                            <div class="login-w3" class="btns" style="display: flex">
                                <input type="button" class="login" onclick="func()" value="Submit" style="margin: 0 10px;">
                                <input type="button" class="login" value="Update" style="margin: 0 10px;">
                            </div>
                            <div class="clearfix"></div>
                        </form>
                        <div class="back">
                            <a href="index.html">Back to home</a>
                        </div>
                        <div class="footer">
                            p>&copy; 2016 Pooled . All Rights Reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p-->
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
$('#datepicker').datepicker({
    uiLibrary: 'bootstrap4'
});

$("#datepicker1").datepicker({
    format: "yyyy",
    viewMode: "years",
    minViewMode: "years"
});

$("#datepicker2").datepicker({
    format: "yyyy",
    viewMode: "years",
    minViewMode: "years"
});

function func() {
    location.replace('http://google.com');
}
</script>

</html>