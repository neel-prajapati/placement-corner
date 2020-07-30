<%@page import="com.bean.Electivesbean"%>
<%@page import="com.bean.Student_electivebean"%>
<%@page import="com.dao.Electivesdao"%>
<%@page import="java.util.StringTokenizer"%>
<%@page import="com.dao.Student_electivedao"%>
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
String elective=request.getParameter("elective");


Student_electivedao da=new Student_electivedao();
da.deletestudent_elective(email);
StringTokenizer defaultTokenizer = new StringTokenizer(elective,",");
Electivesdao ad=new Electivesdao();

while (defaultTokenizer.hasMoreTokens())
{

	String s=defaultTokenizer.nextToken();
	Student_electivebean i=new Student_electivebean();
	
	i.setEid(ad.getareaidByname(s));

	i.setEmail(email);
	if(i.getEid()==0)
	{
		Electivesbean a=new Electivesbean();
		a.setEid(ad.getlastid()+1);
		i.setEid(a.getEid());
		a.setName(s);
		ad.insertelectives(a);
		
	}
	
	da.insertstudent_elective(i);
	}
%>

</body>
</html>