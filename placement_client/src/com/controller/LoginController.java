package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.Loginbean;
import com.dao.Logindao;


@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		String action=request.getParameter("action");
		if(action.equalsIgnoreCase("Sign In"))
		{
			
			Loginbean l=new Loginbean();
			l.setId(Integer.parseInt(request.getParameter("username")));
			l.setPassword(request.getParameter("password"));
			
			Logindao dao=new Logindao();
			l=dao.checkLogin(l.getId(), l.getPassword());
			if(l==null)
			{System.out.println("not login");
				request.getRequestDispatcher("login.jsp").forward(request, response);
				
			}
			else
			{
				System.out.println(" login");
				HttpSession session = request.getSession(true);
				session.setAttribute("s", l);
			
				request.getRequestDispatcher("updatestudentprofile.jsp").forward(request, response);
				
				
			}
		}
		else if(action.equalsIgnoreCase("Update")){
			Loginbean l = new Loginbean();
			l.setAddress(request.getParameter("address"));
			l.setBlood_group(request.getParameter("blood_group"));
			l.setDob(java.sql.Date.valueOf(request.getParameter("dob")));
			l.setEmail(request.getParameter("email"));
			l.setFname(request.getParameter("fname"));
			l.setGender(request.getParameter("gender"));
			l.setHeight(Float.parseFloat(request.getParameter("height")));
			l.setLname(request.getParameter("lname"));
			l.setMname(request.getParameter("mname"));
			l.setMobile(request.getParameter("mobile"));
			l.setSkypeid(request.getParameter("skypeid"));
			l.setYear(Integer.parseInt(request.getParameter("year")));
			l.setId(Integer.parseInt(request.getParameter("id")));
			l.setDid(Integer.parseInt(request.getParameter("did")));
			
			Logindao dao=new Logindao();
			dao.updatelogin(l);
			
			
			
			l=dao.getloginById(l.getId());
			
			HttpSession session = request.getSession(true);
			session.removeAttribute("s");
			session.invalidate();
			 session = request.getSession(true);
			session.setAttribute("s", l);
			System.out.println("update");
			request.getRequestDispatcher("updatestudentprofile.jsp").forward(request, response);
			
			}
	
	
	}

}
