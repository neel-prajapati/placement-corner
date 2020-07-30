package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Faqbean;
import com.dao.Faqdao;

@WebServlet("/FaqController")
public class FaqController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String action=request.getParameter("action");
		if(action.equalsIgnoreCase("Ask Question"))
		{
			Faqbean f=new Faqbean();
			f.setAnswer("");
			f.setPublish('f');
			f.setQuestion(request.getParameter("message"));
			
			Faqdao dao = new Faqdao();
			f.setFaqid(dao.getlastid()+1);
			
			dao.insertfaq(f);
			
			request.getRequestDispatcher("faqshow.jsp").forward(request, response);
			
		}
	}

}
