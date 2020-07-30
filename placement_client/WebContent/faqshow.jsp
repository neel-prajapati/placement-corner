<%@page import="com.bean.Faqbean"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.Faqdao"%>
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
	addEventListener("load", function() {
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
<link rel="stylesheet" href="css/sign/morris.css" type="text/css" />
</head>
<%
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
%>
<%
	Loginbean s = null;
	if (session != null) {
		if (session.getAttribute("s") != null) {
			response.sendRedirect("updatestudentprofile.jsp");
		}
	}
%>

<%

Faqdao dao=new Faqdao();
List<Faqbean> list=dao.getAllPublishedFaq();


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
			<!--                     <li class="mx-lg-3 mx-md-2 my-md-0 my-1"><a href="company.jsp">Preparation</a></li>
                    <li class="mx-lg-3 mx-md-2 my-md-0 my-1"><a href="resume.jsp">Resume</a></li> -->
			<li class="mx-lg-3 mx-md-2 my-md-0 my-1"><a href="about.jsp">About
					Us</a></li>
			<li><a href="contact.jsp">Contact Us</a></li>
			<li class="mx-lg-3 mx-md-2 my-md-0 my-1">
				<%
					if (s == null) {
				%> <a href="login.jsp">LogIn</a> <%
 	} else {
 %> <a href="logout.jsp">LogOut</a> <%
 	}
 %>

			</li>
		</ul>
		</nav>
	</div>
	<!-- //banner -->
	<!-- about -->
	<section class="about py-lg-4 py-md-3 py-sm-3 py-3" id="about">
	<div class="container py-lg-5 py-md-4 py-sm-4 py-3">
		<div class="main-wthree" style="margin-top: 3%;">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<h1>FAQ</h1>
						<table class="table table-borderless">
							<thead>
								<tr>
									<th scope="col">Question</th>
									<th scope="col">Answer</th>
								</tr>
							</thead>
							<tbody>

						<%
						for(Faqbean f:list)
							{%>
							<tr>
							<td style="width: 30%;">
							<%=f.getQuestion() %>
							</td>
							</td>
							<td style="width: 70%;">
							
							<%=f.getAnswer() %>
							</td>
						</tr>
					
						<%	}
							
							%>
								<!-- <tr>
									<td style="width: 30%;">What are the main topic asked in
										Goldman Sachs?</td>
									<td style="width: 70%;">Commonly Asked Questions in
										Goldman Sachs Interviews...Reverse words in a given
										string,Number Formation,Overlapping rectangles,Ugly
										Numbers,Column name from a given column number,Stock buy and
										sell,Non Repeating Character,Merge Two Sorted Arrays,Egg
										Dropping Puzzle,Squares in N*N Chessboard,Rectangles in N*N
										Board,Wave Array,LRU Cache</td>
								</tr>
								<tr>
									<td>What are the frequent questions asked in flipkart
										interview for software enginnering profile?</td>
									<td>There is a gang war going on between multiple gangs
										(many people & they have been fighting for some time). Police
										has to stop it. What will you do?" This seems really ambiguous
										and abstract. But later on it comes on to finding which person
										belongs to which gang. And ultimately its solution is related
										to Graphs. I wasn't told to write the code.</td>
								</tr>
				 -->			</tbody>
						</table>
					</div>
				</div>
				
				<div class="row">
					<div class="col-md-12">
						<h2 style="text-align: left; margin: 15px 0;">FAQ</h2>
						<form action="FaqController" method="post" class="form1">
							<div class="">
								<span>Your Question:</span>
								<textarea  id="message" name="message" cols="30" rows="5"
									style="background: white; width: 57%; padding: 8px 20px; margin-left: 59px;"></textarea>
								<div class="clearfix"></div>
							</div>
							
								
							
					</div>
					<div class="col-md-2 offset-md-9" id="ask_after">
							<div class="">
								<input type="submit" class="login" value="Ask Question" name="action" onclick="ask()" style="width: 100%;">
								<br/>
								<br/>
								<div class="clearfix"></div>
							</div></form>
						
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
					<p>The Placement Cell at DA-IICT is a concept in its own form.
						It has the following structure comprising of three important parts
						viz. the placement office comprising of the Manager (Placements)
						and placement secretary, the faculty members and finally the
						student representatives from each stream. The structure aims at
						touching all the aspects required for the smooth functioning of
						placement process.</p>
				</div>
			</div>
			<div class="footer-info-bottom col-lg-5 col-md-5">
				<div class="footer-w3layouts-head">
					<h2>
						<a href="index.jsp">Contact Us</a>
					</h2>
				</div>
				<div class="mb-1 pt-lg-5 pt-md-4 pt-3 footer-address">
					<p>Dhirubhai Ambani Institute of Information and Communication
						Technology, Near Indroda Circle,</p>
					<p>Gandhinagar - 382 007,</p>
					<p>Gujarat (India)</p>
				</div>
				<div class="footer-office-hour mt-3">
					<div class="row">
						<div class="col-lg-5">
							<p style="font-weight: bold !important;">Ms. Sneha Thakker:</p>
							<p>placement@daiict.ac.in</p>
							<p style="font-weight: bold !important;">Dr. Asim Banerjee:</p>
							<p>pc_convenor@daiict.ac.in</p>
						</div>
						<div class="col-lg-5">
							<p>(O) +91 (79) 68261616</p>
							<p>(M) +91 93289 94143(O)</p>
							<p>(O) +91 (79) 68261554</p>
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
					<a href="">PLACEMENT BROCHURE</a>
				</div>
			</div>

		</div>
		<div class="bottem-wthree-footer text-center pt-lg-5 pt-md-4 pt-3">
			<p>2018-2019 © Placement Corner,DA-IICT</p>
		</div>
		<!-- move icon -->
		<div class="text-center">
			<a href="#home" class="move-top text-center mt-3"></a>
		</div>
		<!--//move icon -->
	</div>
	</footer> <!--//footer -->
</body>
</html>