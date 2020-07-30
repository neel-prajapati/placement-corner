<%@page import="com.bean.Programming_Languagebean"%>
<%@page import="com.bean.Languagesbean"%>
<%@page import="com.dao.languagesdao"%>
<%@page import="java.util.StringTokenizer"%>
<%@page import="com.dao.Programming_languagesdao"%>
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
String languages=request.getParameter("lang");


Programming_languagesdao da=new Programming_languagesdao();
da.deleteprogramming_languages(email);
StringTokenizer defaultTokenizer = new StringTokenizer(languages,",");
languagesdao ad=new languagesdao();
while (defaultTokenizer.hasMoreTokens())
{

	String s=defaultTokenizer.nextToken();
	Programming_Languagebean i=new Programming_Languagebean();
	
	i.setLid(ad.getareaidByname(s));
	
	i.setEmail(email);
	if(i.getLid()==0)
	{
		Languagesbean a=new Languagesbean();
		a.setLid(ad.getlastid()+1);
		i.setLid(a.getLid());
		a.setName(s);
		ad.insertlanguages(a);
		
	}
	
	da.insertprogramming_languages(i);
	}
%>
</body>
</html>