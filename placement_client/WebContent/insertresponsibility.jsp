<%@page import="com.bean.Student_responsibilitybean"%>
<%@page import="com.dao.Student_responsibilitydao"%>
<%@page import="com.bean.Responsibilitybean"%>
<%@page import="com.dao.Responsibilitydao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String description=request.getParameter("description"),email=request.getParameter("email");

Responsibilitydao dao=new Responsibilitydao();
Responsibilitybean r=new Responsibilitybean();
r.setName(description);
int id=dao.getlastid()+1;
r.setRid(id);

Student_responsibilitydao d=new Student_responsibilitydao();
Student_responsibilitybean r1=new Student_responsibilitybean();
r1.setEmail(email);
r1.setRid(id);
d.insertstudent_responsibility(r1);
%>
</body>
</html>