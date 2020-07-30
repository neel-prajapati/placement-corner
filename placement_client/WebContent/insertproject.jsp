<%@page import="com.bean.Student_projectbean"%>
<%@page import="com.dao.Student_projectdao"%>
<%@page import="java.sql.Date"%>
<%@page import="com.dao.Projectdao"%>
<%@page import="com.bean.Projectbean"%>
<%@page import="java.util.StringTokenizer"%>
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
String name=request.getParameter("name");
String description=request.getParameter("description");
String guide=request.getParameter("guide");
String date=request.getParameter("date");
String email=request.getParameter("email");
int team=Integer.parseInt(request.getParameter("team"));


StringTokenizer defaultTokenizer = new StringTokenizer(date,"-");
Projectbean bean=new Projectbean();
bean.setDescription(description);
bean.setGuide(guide);
bean.setLanguage("java");
bean.setName(name);
bean.setTeam(team);

Projectdao dao=new Projectdao();
int id=dao.getlastid();

bean.setPid(id+1);

bean.setStart(Date.valueOf(defaultTokenizer.nextToken().trim()));
bean.setEnd(Date.valueOf(defaultTokenizer.nextToken().trim()));


dao.insertproject(bean);


Student_projectdao d=new Student_projectdao();
Student_projectbean b=new Student_projectbean();

b.setEmail(email);
b.setPid(id+1);

%>
</body>
</html>