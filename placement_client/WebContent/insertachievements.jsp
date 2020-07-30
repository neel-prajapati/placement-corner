<%@page import="com.bean.Student_achievementsbean"%>
<%@page import="com.dao.Student_achievementsdao"%>
<%@page import="com.bean.Achievementsbean"%>
<%@page import="com.dao.Achievementsdao"%>
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

Achievementsdao dao=new Achievementsdao();
Achievementsbean r=new Achievementsbean();
r.setName(description);
int id=dao.getlastid()+1;
r.setAid(id);




Student_achievementsdao d=new Student_achievementsdao();
Student_achievementsbean r1=new Student_achievementsbean();
r1.setEmail(email);
r1.setAid(id);
d.insertstudent_achievements(r1);

%>

</body>
</html>