package com.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Degreebean;
import com.bean.Faqbean;
import com.dao.Degreedao;
import com.dao.Faqdao;

@WebServlet("/FaqController")
public class FaqController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String action=request.getParameter("action");
		
		if(action.equalsIgnoreCase("add_faq"))
		{
			String l = new String();
			Faqbean f = new Faqbean();
			
			f.setQuestion(request.getParameter("question"));
			f.setAnswer(request.getParameter("answer"));
			
			l = request.getParameter("pub");
			f.setPublish(l.charAt(0));
			
			Faqdao fd = new Faqdao();
			f.setFaqid(fd.getlastid() + 1);
			fd.insertfaq(f);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		else if (action.equalsIgnoreCase("Update"))
		{
			String l = new String();
			Faqbean f = new Faqbean();
			f.setQuestion(request.getParameter("question"));
			f.setAnswer(request.getParameter("answer"));
			
			l = request.getParameter("pub");
			f.setPublish(l.charAt(0));
			
			f.setFaqid(Integer.parseInt(request.getParameter("id")));
			
			Faqdao fd = new Faqdao();
			fd.updatefaq(f);
			request.getRequestDispatcher("show_faq.jsp").forward(request, response);
		}
		else if(action.equalsIgnoreCase("Delete"))
		{
			int id = Integer.parseInt(request.getParameter("id"));
			Faqdao fd = new Faqdao();
			fd.deletefaq(id);
			request.getRequestDispatcher("show_faq.jsp").forward(request, response);
			
		}
	}

}
