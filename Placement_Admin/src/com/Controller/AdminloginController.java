package com.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.Adminloginbean;
import com.bean.Loginbean;
import com.dao.Adminlogindao;
import com.dao.Logindao;


@WebServlet("/AdminloginController")
public class AdminloginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String action=request.getParameter("action");
		
		if(action.equalsIgnoreCase("Sign in"))
		{
			Adminloginbean a=new Adminloginbean();
			a.setAdminid(request.getParameter("id"));
			a.setPassword(request.getParameter("password"));
			
			System.out.println(a.getAdminid()+" "+a.getPassword() );
			Adminlogindao aa=new  Adminlogindao();
			a=aa.checkLogin(a.getAdminid(),a.getPassword());
			if(a!=null)
			{
				HttpSession session = request.getSession(true);
				session.setAttribute("s", a);
				request.getRequestDispatcher("index.jsp").forward(request, response);
				System.out.println("login");
				
			}
			else
			{
				System.out.println("not login");
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Your Username Or Password Is Incorrect!')");
				out.println("location='login.jsp';");
				out.println("</script>");
			
			}
		}
		else if(action.equalsIgnoreCase("register_admin"))
		{
			Adminloginbean ad = new Adminloginbean();
			ad.setAddress(request.getParameter("address"));
			ad.setAdminid(request.getParameter("admin_id"));
			ad.setBlood_group(request.getParameter("blood_group"));
			ad.setDob(Date.valueOf(request.getParameter("dob")));
			ad.setFname(request.getParameter("fname"));
			ad.setGender(request.getParameter("gender"));
			ad.setHeight(Float.parseFloat(request.getParameter("height")));
			ad.setLname(request.getParameter("lname"));
			ad.setMname(request.getParameter("mname"));
			ad.setMobile(request.getParameter("mobile"));
			ad.setPassword(request.getParameter("password"));
			Adminlogindao aa = new Adminlogindao();
			aa.insertadminlogin(ad);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		
		else if(action.equalsIgnoreCase("Update"))
		{
			Adminloginbean ad = new Adminloginbean();
			ad.setAddress(request.getParameter("address"));
			ad.setAdminid(request.getParameter("admin_id"));
			ad.setBlood_group(request.getParameter("blood_group"));
			ad.setDob(Date.valueOf(request.getParameter("dob")));
			ad.setFname(request.getParameter("fname"));
			ad.setGender(request.getParameter("gender"));
			ad.setHeight(Float.parseFloat(request.getParameter("height")));
			ad.setLname(request.getParameter("lname"));
			ad.setMname(request.getParameter("mname"));
			ad.setMobile(request.getParameter("mobile"));
			Adminlogindao aa = new Adminlogindao();
			aa.updateadminlogin(ad);
			request.getRequestDispatcher("show_admin.jsp").forward(request, response);
		}
		else if(action.equalsIgnoreCase("Delete"))
		{
			String id = request.getParameter("id");
			Adminlogindao ad = new Adminlogindao();
			ad.deleteadminlogin(id);
			request.getRequestDispatcher("show_admin.jsp").forward(request, response);
		}
		else if(action.equalsIgnoreCase("Password Change"))
		{
			String id=request.getParameter("id");
			String password = request.getParameter("password");
			Adminloginbean l = new Adminloginbean();
			l.setAdminid(id);
			l.setPassword(password);
			
			Adminlogindao d = new Adminlogindao();
			d.changepass(l);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	}

}
