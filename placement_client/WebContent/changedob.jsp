<%@page import="com.bean.Personal_infobean"%>
<%@page import="com.dao.Personal_infodao"%>
<%@page import="java.sql.Date"%>
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

String email=request.getParameter("id");
Date date=Date.valueOf(request.getParameter("date"));

Personal_infodao dao=new Personal_infodao();
Personal_infobean bean=new Personal_infobean();
bean.setDob(date);
bean.setEmail(email);
dao.updatedob(bean);

%>
</body>
</html>