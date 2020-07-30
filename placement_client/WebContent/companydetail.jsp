<%@page import="com.bean.Materialbean"%>
<%@page import="com.bean.Subjectsbean"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.Examinationdao"%>
<%@page import="com.dao.Materialdao"%>
<%@page import="com.bean.Companybean"%>
<%@page import="com.dao.Companydao"%>
<%@page import="com.bean.Loginbean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
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
       
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"
            media="all">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/style.css" rel='stylesheet' type='text/css' media="all">
        
<link href="css/sign/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/sign/morris.css" type="text/css"/>


<style>
   .form1 > div{
     margin-bottom:20px;
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

Companydao dao=null;
Companybean c=null;
Materialdao dd=null;
Examinationdao ed=null;


List<Subjectsbean> list=null;
if(request.getParameter("info")!=null)
{
	int cid=Integer.parseInt(request.getParameter("info"));
	dao=new Companydao();
	 c=dao.getByid(cid);
	ed=new Examinationdao();
	dd=new Materialdao();
 list=ed.getAllExaminationsubjectsbycid(cid); 
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
       <section class="about py-lg-4 py-md-3 py-sm-3 py-3" id="about" style="background: black">
        <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
            <div class="main-wthree">
	<div class="container">
	<div class="sin-w3-agile">
		  <h2>Student Profile</h2> 
    <form action="#" method="post" class="form1" id="form_companydetail">
      <div >
        <span >Company Name:</span>
       <input type="text" name="cname" class="name" value="<%=c.getName()%>"> 
       
       <div class="clearfix"></div>
      </div>
         <div >
        <span >Location:</span>
       
        <input type="text" name="location" class="name" value="<%=c.getLocation()%>"> 
       
       
          <div class="clearfix"></div>
      </div>
         <div >
        <span >Stipend:</span>
        <input type="text" name="stipend" class="name" value="<%=c.getStipend()%>"> 
       
       
        <div class="clearfix"></div>
      </div>
         <div >
        <span >CTC:</span>
        <input type="text" name="ctc" class="name" value="<%=c.getCtc()%>"> 
       
       
       <div class="clearfix"></div>
      </div>
   
   
      <div >
        <span >Type:</span>
         <input type="text" name="type" class="name" value="<%=c.getType()%>"> 
       
        <div class="clearfix"></div>
      </div>
      <div >
        <span >Category:</span>
         <input type="text" name="category" class="name" value="<%=c.getCategory()%>"> 
       
        <div class="clearfix"></div>
      </div>
      <div >
        <span >UG criteria:</span>
         <input type="text" name="cpi_ug" class="name" value="<%=c.getCpi_ug()%>"> 
       
        <div class="clearfix"></div>
      </div>
      
      <div >
        <span >PG criteria:</span>
         <input type="text" name="cpi_pg" class="name" value="<%=c.getCpi_pg()%>"> 
       
        <div class="clearfix"></div>
      </div>
   
      <div >
        <span >Open For:</span>
        
         <input type="text" name="open_for" class="name" value="<%=c.getOpen_for()%>"> 
       
         <div class="clearfix"></div>
      </div>
      <div >
        <span >Job Profile:</span>
       
        <input type="text" name="job_profile" class="name" value="<%=c.getJob()%>"> 
       
       <div class="clearfix"></div>
      </div>
      <div >
        <span >Description:</span>
        <textarea name="description" style="width: 70%; padding: 10px;" rows="5"><%=c.getDescription()%></textarea>
        <div class="clearfix"></div>
      </div>
      <div >
        <span >Topics:</span>
       
        <textarea name="topics"  style="width: 70%; padding: 10px;" rows="5"><%=dao.getsubjectsstringbycid(c.getCid())%></textarea>
        <div class="clearfix"></div>
      </div>
       <div >
        <span >Material:</span>
        <%-- <textarea name="description" style="width: 70%; padding: 10px;" rows="5"><%=dao.getsubjectsstringbycid(c.getCid())%></textarea>
    	 --%>
    <table style="background-color:white;">
    <tr>
    <th>subjects</th>
    <th style="text-align:center;">Link</th>
    </tr>
		<%
			for(Subjectsbean ss	: list)
			{
			
				List<Materialbean> list1=dd.getAlllinksbysid(ss.getSid());
				for(Materialbean m:list1)
				{
					%>
					
					<tr>
					<td>
					<%=ss.getName() %>
					</td>
					<td style="margin-left:1vw;">
					<a href="<%=m.getLink() %>"><%=m.getLink() %></a>
					</td>
					</tr>
					<%	
				}
				
			}
		%>    	
       </table>
       <div class="clearfix"></div>
      </div>
      
  
     
      <div class="clearfix"></div>
    </form>
				<div class="back">
					<a href="company.jsp">Back to CompanyList</a>
				</div>
				<div class="footer">
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
    </body>
    
  
</html>