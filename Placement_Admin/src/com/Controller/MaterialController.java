package com.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Materialbean;
import com.dao.Materialdao;

@WebServlet("/MaterialController")
public class MaterialController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String action=request.getParameter("action");
		
		if(action.equalsIgnoreCase("add_material"))
		{
			Materialbean m = new Materialbean();
			m.setSid(Integer.parseInt(request.getParameter("subject")));
			m.setLink(request.getParameter("material"));
			
			Materialdao md = new Materialdao();
			md.insertmaterial(m);
			request.getRequestDispatcher("show_topics.jsp").forward(request, response);
		}
		
		else if(action.equalsIgnoreCase("Delete"))
		{
			Materialbean m = new Materialbean();
			m.setSid(Integer.parseInt(request.getParameter("id")));
			m.setLink(request.getParameter("link"));
			
			Materialdao md = new Materialdao();
			md.deletematerial(m);
			request.getRequestDispatcher("show_topics.jsp").forward(request, response);
		}
   	}

}
