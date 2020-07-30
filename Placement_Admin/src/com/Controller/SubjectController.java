package com.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Degreebean;
import com.bean.Subjectsbean;
import com.dao.Degreedao;
import com.dao.Materialdao;
import com.dao.Subjectsdao;


@WebServlet("/SubjectController")
public class SubjectController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String action=request.getParameter("action");
		
		if(action.equalsIgnoreCase("add_subject"))
		{
			Subjectsbean sb = new Subjectsbean();
			sb.setName(request.getParameter("subject"));
			
			Subjectsdao sd = new Subjectsdao();
			sb.setSid(sd.getlastid() + 1);
			sd.insertsubjects(sb);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		else if(action.equalsIgnoreCase("Update"))
		{
			Subjectsbean s = new Subjectsbean();
			s.setSid(Integer.parseInt(request.getParameter("id")));
			s.setName(request.getParameter("subject"));
			
			Subjectsdao sd = new Subjectsdao();
			sd.updatesubjects(s);
			request.getRequestDispatcher("show_subject.jsp").forward(request, response);
		}
		else if(action.equalsIgnoreCase("Delete"))
		{
			int id = Integer.parseInt(request.getParameter("id"));
			Subjectsdao sd = new Subjectsdao();
			sd.deletesubjects(id);
			Materialdao dao=new Materialdao();
			dao.deletematerialbysid(id);
			request.getRequestDispatcher("show_subject.jsp").forward(request, response);
		}
	}

}
