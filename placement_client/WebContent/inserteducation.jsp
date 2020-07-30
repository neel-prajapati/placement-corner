<%@page import="java.util.StringTokenizer"%>
<%@page import="com.dao.Educationdao"%>
<%@page import="com.bean.Educationbean"%>
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

String degree=request.getParameter("degree"),institute=request.getParameter("institute"),email=request.getParameter("email");
String y=request.getParameter("year");
StringTokenizer defaultTokenizer = new StringTokenizer(y,"-");

float cpi=Float.parseFloat(request.getParameter("cpi"));


Educationbean e=new Educationbean();
Educationdao dao=new Educationdao();

e.setStart_year(Integer.parseInt(defaultTokenizer.nextToken().trim()));
e.setEnd_year(Integer.parseInt(defaultTokenizer.nextToken().trim()));
e.setCpi(cpi);
e.setDname(degree);
e.setInstitute(institute);
e.setEmail(email);

%>
</body>
</html>