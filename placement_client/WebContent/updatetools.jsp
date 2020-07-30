<%@page import="com.dao.Tools_technologydao"%>
<%@page import="com.bean.Student_toolsbean"%>
<%@page import="com.bean.Tools_technologybean"%>
<%@page import="java.util.StringTokenizer"%>
<%@page import="com.dao.Student_toolsdao"%>
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
String tools=request.getParameter("tools");


Student_toolsdao da=new Student_toolsdao();
da.deletestudent(email);
StringTokenizer defaultTokenizer = new StringTokenizer(tools,",");
Tools_technologydao ad=new Tools_technologydao();

while (defaultTokenizer.hasMoreTokens())
{

	String s=defaultTokenizer.nextToken();
	Student_toolsbean i=new Student_toolsbean();
	i.setTid(ad.getareaidByname(s));

	i.setEmail(email);
	if(i.getTid()==0)
	{
		Tools_technologybean a=new Tools_technologybean();
		a.setTid(ad.getlastid()+1);
		i.setTid(a.getTid());
		a.setName(s);
		ad.inserttools_technology(a);
		
	}
	
	da.insertstudent(i);
	}
%>
</body>
</html>