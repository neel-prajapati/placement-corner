package com.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Degreebean;
import com.dao.Adminlogindao;
import com.dao.Companydao;
import com.dao.Degreedao;
@WebServlet("/DegreeController")
public class DegreeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String action=request.getParameter("action");
		
		if(action.equalsIgnoreCase("add_degree"))
		{
			Degreebean d = new Degreebean();
			d.setDname(request.getParameter("degree"));
			
			Degreedao da = new Degreedao();
			d.setDid(da.getlastid() + 1);
			
			da.insertdegree(d);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		if(action.equalsIgnoreCase("Update"))
		{
			Degreebean d = new Degreebean();
			d.setDname(request.getParameter("degree"));
			d.setDid(Integer.parseInt(request.getParameter("id")));
			
			Degreedao da = new Degreedao();
			da.updatedegree(d);
			request.getRequestDispatcher("show_degree.jsp").forward(request, response);
		}
		if(action.equalsIgnoreCase("Delete"))
		{
			int id = Integer.parseInt(request.getParameter("id"));
			Degreedao d = new Degreedao();
			d.deletedegree(id);
			request.getRequestDispatcher("show_degree.jsp").forward(request, response);
			
		}
  	}

}
