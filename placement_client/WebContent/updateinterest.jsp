<%@page import="com.bean.Areasbean"%>
<%@page import="com.bean.Interestbean"%>
<%@page import="com.dao.Areasdao"%>
<%@page import="java.util.StringTokenizer"%>
<%@page import="com.dao.Interestdao"%>
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
String areas=request.getParameter("areas");

Interestdao da=new Interestdao();
da.deleteinterest(email);
StringTokenizer defaultTokenizer = new StringTokenizer(areas,",");
Areasdao ad=new Areasdao();

while (defaultTokenizer.hasMoreTokens())
{
	Interestbean i=new Interestbean();
	String s=defaultTokenizer.nextToken();
	i.setIntid(ad.getareaidByname(s));
	i.setEmail(email);
	if(i.getIntid()==0)
	{
		Areasbean a=new Areasbean();
		a.setIntid(ad.getlastid()+1);
		i.setIntid(a.getIntid());
		a.setName(s);
		ad.insertareas(a);
		
	}
	
	da.insertinterest(i);
	}
%>
</body>
</html>