package com.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Loginbean;
import com.dao.Logindao;


@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String action=request.getParameter("action");
		if(action.equalsIgnoreCase("submit"))
		{
			Loginbean l=new Loginbean();
			l.setAddress(request.getParameter("address"));
			l.setBlood_group(request.getParameter("blood_group"));
			l.setDid(Integer.parseInt(request.getParameter("program")));
			l.setDob(Date.valueOf(request.getParameter("dob")));
			l.setEmail(request.getParameter("email"));
			l.setFname(request.getParameter("fname"));
			l.setMname(request.getParameter("mname"));
			l.setLname(request.getParameter("lname"));
			l.setGender(request.getParameter("gender"));
			l.setHeight(Float.parseFloat(request.getParameter("height")));
			l.setMobile(request.getParameter("mobile"));
			l.setSkypeid(request.getParameter("skype"));
			l.setYear(Integer.parseInt(request.getParameter("year")));
			l.setId(Integer.parseInt(request.getParameter("stud_id")));
			Logindao d = new Logindao();
			d.insertLogin(l);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		else if(action.equalsIgnoreCase("update"))
		{
			
			Loginbean l=new Loginbean();
			l.setAddress(request.getParameter("address"));
			l.setDid(Integer.parseInt(request.getParameter("program")));
			l.setDob(Date.valueOf(request.getParameter("dob")));
			l.setEmail(request.getParameter("email"));
			l.setFname(request.getParameter("fname"));
			l.setMname(request.getParameter("mname"));
			l.setLname(request.getParameter("lname"));
			l.setGender(request.getParameter("gender"));
			l.setMobile(request.getParameter("contactNumber"));
			l.setId(Integer.parseInt(request.getParameter("stud_id")));
			Logindao d = new Logindao();
			d.updateloginadmin(l);
			request.getRequestDispatcher("index.jsp").forward(request, response);
			
		}
		else if(action.equalsIgnoreCase("delete"))
		{
			int id=Integer.parseInt(request.getParameter("id"));
			
			Logindao d = new Logindao();
			d.deletelogin(id);;
			request.getRequestDispatcher("index.jsp").forward(request, response);
		
					
		}
		else if(action.equalsIgnoreCase("Password Change"))
		{
			int id=Integer.parseInt(request.getParameter("id"));
			String password = request.getParameter("password");
			Loginbean l = new Loginbean();
			l.setId(id);
			l.setPassword(password);
			
			Logindao d = new Logindao();
			d.changepass(l);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	
	}

}
