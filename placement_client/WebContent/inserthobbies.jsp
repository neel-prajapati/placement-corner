<%@page import="com.bean.Student_hobbiesbean"%>
<%@page import="com.dao.Student_hobbiesdao"%>
<%@page import="com.dao.Hobbiesdao"%>
<%@page import="com.bean.Hobbiesbean"%>
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

Hobbiesdao dao=new Hobbiesdao();
Hobbiesbean r=new Hobbiesbean();
r.setName(description);
int id=dao.getlastid()+1;
r.setHid(id);




Student_hobbiesdao d=new Student_hobbiesdao();
Student_hobbiesbean r1=new Student_hobbiesbean();
r1.setEmail(email);
r1.setHid(id);
d.insertstudent_hobbies(r1);


%>
</body>
</html>