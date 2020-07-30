<%@page import="com.bean.Projectbean"%>
<%@page import="com.bean.Hobbiesbean"%>
<%@page import="com.bean.Achievementsbean"%>
<%@page import="com.bean.Responsibilitybean"%>
<%@page import="com.bean.Educationbean"%>
<%@page import="com.bean.Resumebean"%>
<%@page import="com.dao.Resumedao"%>
<%@page import="com.bean.Loginbean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zxx">

<head>
    <title>Placement Corner</title>
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
    <link rel="stylesheet" href=".\css\font-awesome.min.css">
    <link href="css/style.css" rel='stylesheet' type='text/css' media="all">
    <link href="css/sign/style.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="css/sign/morris.css" type="text/css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/js/bootstrap-datepicker.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker.css" rel="stylesheet" />
    
    <link rel="stylesheet" href="css/jquery-ui.css"/>
<script src="js/validation/jquery.min.js"></script>
<script src="js/validation/jquery.validate.min.js"></script>

<script src="js/validation/formvalidationAddResume.js"></script>
    <style>
        .form1>div {
            margin-bottom: 40px;
        }

        .hide-arrow::after {
            content: none !important;
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

    <script>  
var request=new XMLHttpRequest();  

	function changename() {
		
		var str=document.getElementById("id").value;
        var s=document.getElementById("name").value;
		
				var request = new XMLHttpRequest();
					  var url = "changename.jsp?name=" + s+"&id="+str;
						try {
							request.onreadystatechange = function() {
								if (request.readyState == 4) {
									var val = request.responseText;
									document.getElementById("name").innerHTML=val;
									
									
									<% 
									r=sdao.getresumebystudent(s);
									%>
								}

							}
							request.open("GET", url, true);
							request.send();
							
						} catch (e) {
							alert("Unable to connect to server");
						}
	}
	
function changedob() {
		
		var str=document.getElementById("id").value;
        var s=document.getElementById("dob").value;
		
				var request = new XMLHttpRequest();
					  var url = "changedob.jsp?date=" + s+"&id="+str;
						try {
							request.onreadystatechange = function() {
								if (request.readyState == 4) {
									var val = request.responseText;
									document.getElementById("dob").innerHTML=val;
									
									
									<% 
									r=sdao.getresumebystudent(s);
									%>
								}

							}
							request.open("GET", url, true);
							request.send();
							
						} catch (e) {
							alert("Unable to connect to server");
						}
	}
function changeaddress() {
	
	var str=document.getElementById("id").value;
    var s=document.getElementById("address").value;
	
			var request = new XMLHttpRequest();
				  var url = "changeaddress.jsp?address=" + s+"&id="+str;
					try {
						request.onreadystatechange = function() {
							if (request.readyState == 4) {
								var val = request.responseText;
								document.getElementById("address").innerHTML=val;
								
								
								<% 
								r=sdao.getresumebystudent(s);
								%>
							}

						}
						request.open("GET", url, true);
						request.send();
						
					} catch (e) {
						alert("Unable to connect to server");
					}
}
function changeskills() {
	
	var str=document.getElementById("id").value;
    var s=document.getElementById("skills").value;
	
			var request = new XMLHttpRequest();
				  var url = "updateinterest.jsp?areas=" + s+"&id="+str;
					try {
						request.onreadystatechange = function() {
							if (request.readyState == 4) {
								var val = request.responseText;
								document.getElementById("skills").innerHTML=val;
								
								
								<% 
								r=sdao.getresumebystudent(s);
								%>
							}

						}
						request.open("GET", url, true);
						request.send();
						
					} catch (e) {
						alert("Unable to connect to server");
					}
}
function changelang() {
	
	var str=document.getElementById("id").value;
    var s=document.getElementById("lang").value;
	
			var request = new XMLHttpRequest();
				  var url = "updatelanguage.jsp?lang=" + s+"&id="+str;
					try {
						request.onreadystatechange = function() {
							if (request.readyState == 4) {
								var val = request.responseText;
								document.getElementById("lang").innerHTML=val;
								
								
								<% 
								r=sdao.getresumebystudent(s);
								%>
							}

						}
						request.open("GET", url, true);
						request.send();
						
					} catch (e) {
						alert("Unable to connect to server");
					}
}

function changetools() {
	
	var str=document.getElementById("id").value;
    var s=document.getElementById("tools").value;
	
			var request = new XMLHttpRequest();
				  var url = "updatetools.jsp?tools=" + s+"&id="+str;
					try {
						request.onreadystatechange = function() {
							if (request.readyState == 4) {
								var val = request.responseText;
								document.getElementById("tools").innerHTML=val;
								
								
								<% 
								r=sdao.getresumebystudent(s);
								%>
							}

						}
						request.open("GET", url, true);
						request.send();
						
					} catch (e) {
						alert("Unable to connect to server");
					}
}
function changeelective() {
	
	var str=document.getElementById("id").value;
    var s=document.getElementById("elective").value;
	
			var request = new XMLHttpRequest();
				  var url = "updateelective.jsp?elective=" + s+"&id="+str;
					try {
						request.onreadystatechange = function() {
							if (request.readyState == 4) {
								var val = request.responseText;
								document.getElementById("elective").innerHTML=val;
								
								
								<% 
								r=sdao.getresumebystudent(s);
								%>
							}

						}
						request.open("GET", url, true);
						request.send();
						
					} catch (e) {
						alert("Unable to connect to server");
					}
}


function inserteducation() {
	
	var degree=document.getElementById("").value;
    var institute=document.getElementById("").value;
    var year=document.getElementById("").value;
    var cpi=document.getElementById("").value;
    var email=document.getElementById("id").value;
    
			var request = new XMLHttpRequest();
				  var url = "inserteducation.jsp?degree=" +degree+"&institute="+institute+"&year="+year+"&cpi="+cpi+"&email="+email;
					try {
						request.onreadystatechange = function() {
							if (request.readyState == 4) {
								var val = request.responseText;
								
								
								<% 
								r=sdao.getresumebystudent(s);
								%>
							}

						}
						request.open("GET", url, true);
						request.send();
						
					} catch (e) {
						alert("Unable to connect to server");
					}
}

function insertproject() {
	
	var name=document.getElementById("").value;
    var description=document.getElementById("").value;
    var guide=document.getElementById("").value;
    var date=document.getElementById("").value;
    var email=document.getElementById("id").value;
    var team=document.getElementById("").value;
    
			var request = new XMLHttpRequest();
				  var url = "insertproject.jsp?name=" +name+"&description="+description+"&guide="+guide+"&date="+date+"&email="+email+"&team="+team;
					try {
						request.onreadystatechange = function() {
							if (request.readyState == 4) {
								var val = request.responseText;
								
								
								<% 
								r=sdao.getresumebystudent(s);
								%>
							}

						}
						request.open("GET", url, true);
						request.send();
						
					} catch (e) {
						alert("Unable to connect to server");
					}
}
function insertresponsibility() {
	
	var description=document.getElementById("").value;
    var email=document.getElementById("id").value;
    
			var request = new XMLHttpRequest();
				  var url = "insertresponsibility.jsp?description="+description+"&email="+email;
					try {
						request.onreadystatechange = function() {
							if (request.readyState == 4) {
								var val = request.responseText;
								
								
								<% 
								r=sdao.getresumebystudent(s);
								%>
							}

						}
						request.open("GET", url, true);
						request.send();
						
					} catch (e) {
						alert("Unable to connect to server");
					}
}
function insertachievements() {
	
	var description=document.getElementById("").value;
    var email=document.getElementById("id").value;
    
			var request = new XMLHttpRequest();
				  var url = "insertachievements.jsp?description="+description+"&email="+email;
					try {
						request.onreadystatechange = function() {
							if (request.readyState == 4) {
								var val = request.responseText;
								
								
								<% 
								r=sdao.getresumebystudent(s);
								%>
							}

						}
						request.open("GET", url, true);
						request.send();
						
					} catch (e) {
						alert("Unable to connect to server");
					}
}	

function inserthobbies() {
	
	var description=document.getElementById("").value;
    var email=document.getElementById("id").value;
    
			var request = new XMLHttpRequest();
				  var url = "inserthobbies.jsp?description="+description+"&email="+email;
					try {
						request.onreadystatechange = function() {
							if (request.readyState == 4) {
								var val = request.responseText;
								
								
								<% 
								r=sdao.getresumebystudent(s);
								%>
							}

						}
						request.open("GET", url, true);
						request.send();
						
					} catch (e) {
						alert("Unable to connect to server");
					}
}
</script>
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

    <section class="about py-lg-4 py-md-3 py-sm-3 py-3" id="about" style="background: black">
        <div class="container-fluid py-lg-5 py-md-4 py-sm-4 py-3">
            <div class="main-wthree" style="margin-top: 3%;">
                <div class="container-fluid" style="margin-left: 1%;">
                    <div class="row">
                        <div class="col-md-6">
                            <h2 style="text-align: left; margin: 15px 0;">Personal Info</h2>
                            <form action="#" method="post" class="form1" id="form_info" name="form_info">
                                <div class="">
                                    <span>Name:</span>
                                    <input type="hidden" name="id" id="id" value="<%=r.getPersonal_infobean().getEmail() %>">
                                    <input type="text" onchange="changename();" style="background: white; width: 55%; height: 42px; padding: 8px 20px; margin-left: 59px;" value="<%=r.getPersonal_infobean().getSname() %>" name="name" id="name">
                                    <div class="clearfix"></div>
                                </div>
                                <div class="">
                                    <span>Email:</span>
                                    <input type="text" style="background: white; width: 55%; height: 42px; padding: 8px 20px; margin-left: 59px;" value="<%=r.getPersonal_infobean().getEmail() %>" placeholder="Enter Email" name="email" readonly="readonly">
                                    <div class="clearfix"></div>
                                </div>
                                <div>
                                    <span>Date of Birth:</span>
                                    <input type="text" onchange="changedob();" id="dob" style="background: white; width: 55%; height: 42px; padding: 8px 20px; margin-left: 59px;" placeholder="Select Date of Birth" name="dob" value="<%=r.getPersonal_infobean().getDob() %>">
                                    <div class="clearfix"></div>
                                </div>
                                <div class="">
                                    <span>Address:</span>
                                    <textarea name="address" id="address" onchange="changeaddress();" cols="10" rows="10" style="background: white; width: 55%; height: auto; padding: 8px 20px; margin-left: 59px;">value="<%=r.getPersonal_infobean().getAddress() %>"</textarea>
                                    <div class="clearfix"></div>
                                </div>
                            </form>
                        </div>
                        <div class="col-md-6">
                            <h2 style="text-align: left; margin: 15px 0;">Skills</h2>
                            <form action="#" method="post" class="form1">
                                <div class="">
                                    <span>Expertise Area(s) of Interest:</span>
                                    <textarea for="expertise" id="skills" onchange="changeskills();" style="background: white; width: 55%; height: 92px; padding: 8px 20px; margin-left: 59px;"> <%=sdao.getareasstring(r.getAreaslist()) %> </textarea>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="">
                                    <span>Programming Languages:</span>
                                    <textarea for="languages" onchange="changelang();" style="background: white; width: 55%; height: 92px; padding: 8px 20px; margin-left: 59px;" id="lang"> <%=sdao.getlanguagesstring(r.getLanguageslist()) %></textarea>
                                    <div class="clearfix"></div>
                                </div>
                                <div>
                                    <span>Tools & Technologies:</span>
                                    <textarea for="tools_technologies" onchange="changetools();" id="tools" style="background: white; width: 55%; height: 92px; padding: 8px 20px; margin-left: 59px;"><%=sdao.gettoolsstring(r.getTools_technologybean()) %></textarea>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="">
                                    <span>Technical Electives:</span>
                                    <textarea for="name" onchange="changeelective();" id="elective" style="background: white; width: 55%; height: 92px; padding: 8px 20px; margin-left: 59px;"> <%=sdao.getelectivesstring(r.getElectiveslist()) %></textarea>
                                    <div class="clearfix"></div>
                                </div>
                            </form>
                        </div>
                        <div class="col-md-12">
                            <h2 style="text-align: left; margin: 15px 0;">Education</h2>
                            <form class="row" class="degree_item">
                                <div class="col-md-2"><span style="width: 100%;">Degree</span></div>
                                <div class="col-md-5"><span style="width: 100%; height: auto;">University/Institute</span></div>
                                <div class="col-md-3"><span style="width: 100%; height: auto;">Year</span></div>
                                <div class="col-md-2" id="degree_after"><span style="width: 80%;">CPI</span></div>
                                
                                
                            
                            <%
									for(Educationbean d:r.getEducationlist())
									{
										%>
									
							
							  <div class="col-md-2" id="degree_name">
                                
                                
                                    <input type="text" name="degree0" id="degree0" value="<%=d.getDname() %>" style="background: white; width: 100%; height: auto; padding: 8px 5px;">
                                </div>
                                <div class="col-md-5">
                                    <input type="text" name="institute" id="institute" value="<%=d.getInstitute() %>" style="background: white; width: 100%; height: auto; padding: 8px 5px;">
                                </div>
                                <div class="col-md-3">
                                    <input type="text" name="year" id="year" value="<%=d.getStart_year()  %> - <%=d.getEnd_year() %>" style="background: white; width: 100%; height: auto; padding: 8px 5px;">
                                </div>
                                <div class="col-md-2">
                                    <input type="text" name="team" id="team" style="background: white; width: 80%; height: auto; padding: 8px 5px;" value="<%=d.getCpi()%>">
                                </div>
                                	
										<%
									}
									%>    
                             <div class="col-md-2 offset-md-10" style="margin-top: 30px;"><a href="" id="add_degree"><span class="fa fa-plus hide-arrow" style="width: 80%; text-align: center"></span></a></div>
                          		
                            
                            </form>
                        </div>
                        <div class="col-md-12">
                            <h2 style="text-align: left; margin: 15px 0;">Position of Responsibility</h2>
                            <form action="#" method="post" class="form1">
                            
                            
                              <%
                              for(Responsibilitybean sb : r.getResponsibilitylist())
                              {
                            	  %>
                            	
                                
                                
                                <div id="resp_after">
                                    <textarea for="expertise0" style="background: white; width: 97%; height: auto; padding: 8px 20px;"> <%=sb.getName() %></textarea>
                                    <div class="clearfix"></div>
                                </div>
                                  
                            	  <%                              }
                              
                              %>
                                
                                
                                <div class="col-md-2 offset-md-10" id="resp_before"><a href="" id="add_resp"><span class="fa fa-plus hide-arrow" style="width: 87%; text-align: center"></span></a></div>
                            </form>
                        </div>
                        <div class="col-md-6">
                            <h2 style="text-align: left; margin: 15px 0;">Awards & Achievement</h2>
                            <form action="#" method="post" class="form1">
                            
                            
                             <%
                               for(Achievementsbean ab : r.getAchievementslist())
                               {
                            	   %>
                            
                                <div id="awards_after">
                                    <textarea for="expertise" style="background: white; width: 95%; height: auto; padding: 8px 20px;"><%=ab.getName() %></textarea>
                                    <div class="clearfix"></div>
                                </div>
                            	   
                            	   <%                               }
                               %>
                            
                            
                                <div class="col-md-2 offset-md-10" id="awards_before"><a href="" id="add_awards"><span class="fa fa-plus hide-arrow" style="width: 70%; text-align: center"></span></a></div>
                            </form>
                        </div>
                        <div class="col-md-6">
                            <h2 style="text-align: left; margin: 15px 0;">Interest & Hobbies</h2>
                            <form action="#" method="post" class="form1">
                            
                             <%
                              for(Hobbiesbean hb:r.getHobbieslist())
                              {
                            	  %>
                            	
                                  <div id="interest_after">
                                    <textarea for="expertise" style="background: white; width: 95%; height: auto; padding: 8px 20px;"><%=hb.getName() %></textarea>
                                    <div class="clearfix"></div>
                                </div>
                                  
                            	  <%                              }
                              %> 
                            
                                
                            
                            
                            
                                <div class="col-md-2 offset-md-10" id="interest_before"><a href="" id="add_interest"><span class="fa fa-plus hide-arrow" style="width: 70%; text-align: center"></span></a></div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="container-fluid" style="margin-left: 1%;">
                    <h2 style="text-align: left; margin: 15px 0;">Project</h2>
                    <form class="row">
                        <div class="col-md-2"><span style="width: 95%; height: auto; padding: 8px 20px;">Project
                                Name</span></div>
                        <div class="col-md-4"><span style="width: 95%; height: auto; padding: 8px 20px;">Description</span></div>
                        <div class="col-md-2"><span style="width: 95%; height: auto; padding: 8px 20px;">Guide/Supervisor</span></div>
                        <div class="col-md-2"><span style="width: 95%; height: auto; padding: 8px 20px;">Date</span>
                        </div>
                        <div class="col-md-2"><span style="width: 80%; height: auto; padding: 8px 20px;">Team
                                Size</span></div>
                       
                       
                       <%
					
					for(Projectbean p : r.getProjectlist())
					{
						%>
						
						
						 <div class="col-md-2"><textarea for="expertise" style="background: white; width: 95%; height: auto; padding: 8px 20px;"><%=p.getName() %></textarea>
                        </div>
                        <div class="col-md-4"><textarea for="expertise" style="background: white; width: 95%; height: auto; padding: 8px 20px;"><%=p.getDescription() %></textarea>
                        </div>
                        <div class="col-md-2"><textarea for="expertise" style="background: white; width: 95%; height: auto; padding: 8px 20px;"><%=p.getGuide() %></textarea>
                        </div>
                        <div class="col-md-2"><textarea for="expertise" style="background: white; width: 95%; height: auto; padding: 8px 20px;"><%=p.getStart()  %> - <%=p.getEnd() %></textarea>
                        </div>
                        <div class="col-md-2" id="project_after"><textarea for="expertise" style="background: white; width: 80%; height: auto; padding: 8px 20px;"><%=p.getTeam() %></textarea>
                        </div>
                       
						
						<%					}
					%>
                       
                       
                       
                       
                        <div class="col-md-2 offset-md-10" style="margin-top: 30px;" id="project_before"><a href="" id="add_project"><span class="fa fa-plus hide-arrow" style="width: 80%; text-align: center"></span></a></div>
                    </form>
                </div>
                <div class="container-fluid" style="margin-left: 1%;">
                   <a href="resume.jsp">  <div class="row">
                       <div class="col-md-2 offset-md-10">
                            <input type="submit" value="Submit" onclick="func()" style="width: 80%">
                        </div>
                    </div>
                </div>
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
		<div class="text-center">
			<a href="#home" class="move-top text-center mt-3"></a>
		</div>
	</div>
	</footer>
        <script type="text/javascript">
        //Education
        var degree_count = 1;
        var add_degree = document.getElementById("add_degree");
        add_degree.addEventListener("click", function(e) {
            e.preventDefault();
            var degree = "<div class='col-md-2' id='degree_name" + degree_count + "'><input type='text' name='degree" + degree_count + "' id='degree" + degree_count + "' style='background: white; width: 100%; height: auto; padding: 8px 5px;'></div>";
            var institute = "<div class='col-md-5'><input type='text' name='institute" + degree_count + "' id='institute" + degree_count + "' style='background: white; width: 100%; height: auto; padding: 8px 5px;'></div>";
            var year = "<div class='col-md-3'><input type='text' name='year" + degree_count + "' id='year" + degree_count + "' style='background: white; width: 100%; height: auto; padding: 8px 5px;'></div>";
            var team = "<div class='col-md-2'><input type='text' name='team'" + degree_count + " id='team" + degree_count + "' style='background: white; width: 80%; height: auto; padding: 8px 5px;'></div>";
            $("#degree_after").after(degree, institute, year, team);
            degree_count++;
        }); 

        //Position of Responsibility
        var resp_count = 1;
        add_resp.addEventListener("click", function(e) {
            e.preventDefault();
            var add_resp = document.getElementById("add_resp");
            console.log("Add Resp Called.");
            var resp = "<div><textarea for='expertise" + resp_count + "' style='background: white; width: 97%; height: auto; padding: 8px 20px;'></textarea><div class='clearfix'></div></div>";
            console.log(resp);
            $("#resp_before").before(resp);
            resp_count++;
        }); 

        //Awards & Achievements
        var awards_count = 1;
        var add_awards = document.getElementById("add_awards");
        add_awards.addEventListener("click", function(e) {
            e.preventDefault();
            var awards = "<div><textarea for='awards" + awards_count + "' style='background: white; width: 95%; height: auto; padding: 8px 20px;'></textarea><div class='clearfix'></div></div>";
            $("#awards_before").before(awards);
            awards_count++;
        }); 

        //Interests
        var interest_count = 1;
        var add_interest = document.getElementById("add_interest");
        add_interest.addEventListener("click", function(e) {
            e.preventDefault();
            var interest = "<div><textarea for='interest" + interest_count + "' style='background: white; width: 95%; height: auto; padding: 8px 20px;'></textarea><div class='clearfix'></div></div>";
            $("#interest_before").before(interest);
            interest_count++;
        }); 

        //Projects
        var project_count = 1;
        add_project.addEventListener("click", function(e) {
            e.preventDefault();
            var project_name = "<div class='col-md-2' id='project_after'><textarea for='project_name" + project_count + "' style='background: white; width: 95%; height: auto; padding: 8px 20px;'></textarea></div>";
            var project_desc = "<div class='col-md-4'><textarea for='project_desc" + project_count + "' style='background: white; width: 95%; height: auto; padding: 8px 20px;'></textarea></div>";
            var project_guide = "<div class='col-md-2'><textarea for='project_guide" + project_count + "' style='background: white; width: 95%; height: auto; padding: 8px 20px;'></textarea></div>";
            var project_date = "<div class='col-md-2'><textarea for='project_date" + project_count + "' style='background: white; width: 95%; height: auto; padding: 8px 20px;'></textarea></div>";
            var project_team = "<div class='col-md-2'><textarea for='project_team" + project_count + "' style='background: white; width: 80%; height: auto; padding: 8px 20px;'></textarea></div>";
            $("#project_before").before(project_name, project_desc, project_guide, project_date, project_team);
            project_count++;
        });

        function func(){
            var form_info = document.forms["form_info"];
            console.log(form_info.elements["name"].value);
            console.log(form_info.elements["email"].value);
            console.log(form_info.elements["dob"].value);
            console.log(form_info.elements["address"].value);
        }
        </script>
</body>

</html>