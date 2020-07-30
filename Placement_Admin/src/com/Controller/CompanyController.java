package com.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Companybean;
import com.bean.Degreebean;
import com.dao.Adminlogindao;
import com.dao.Companydao;
import com.dao.Degreedao;


@WebServlet("/CompanyController")
public class CompanyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String action=request.getParameter("action");
		if(action.equalsIgnoreCase("submit"))
		{
			String s=new String();
			Companybean c = new Companybean();
			c.setCategory(request.getParameter("category"));
			c.setCpi_pg(Float.parseFloat(request.getParameter("cpi_pg")));
			c.setCpi_ug(Float.parseFloat(request.getParameter("cpi_ug")));
			c.setCtc(Integer.parseInt(request.getParameter("ctc")));
			c.setDescription(request.getParameter("description"));
			c.setJob(request.getParameter("job"));
			c.setLocation(request.getParameter("location"));
			c.setName(request.getParameter("cname"));
			
			Degreedao dao=new Degreedao();
			List<Degreebean> list=dao.getAlldegrees();
			for(Degreebean d:list)
			{
				if(request.getParameter(d.getDname())!=null)
				{
					s=s+","+d.getDname();
					
				}
			}
			c.setOpen_for(s);
			Companydao cd = new Companydao();
			c.setCid(cd.getlastid() + 1);
			c.setPlacement_date(Date.valueOf(request.getParameter("pdate")));
			c.setReg_end_date(Date.valueOf(request.getParameter("edate")));
			c.setReg_start_date(Date.valueOf(request.getParameter("sdate")));
			c.setStatus(request.getParameter("status"));
			c.setStipend(Integer.parseInt(request.getParameter("stipend")));
			c.setType(request.getParameter("type"));
			cd.insertcompany(c);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		else if (action.equalsIgnoreCase("Update"))
		{
			String s=new String();
			Companybean c = new Companybean();
			c.setCategory(request.getParameter("category"));
			c.setCpi_pg(Float.parseFloat(request.getParameter("cpi_pg")));
			c.setCpi_ug(Float.parseFloat(request.getParameter("cpi_ug")));
			c.setCtc(Integer.parseInt(request.getParameter("ctc")));
			c.setDescription(request.getParameter("description"));
			c.setJob(request.getParameter("job"));
			c.setLocation(request.getParameter("location"));
			c.setName(request.getParameter("cname"));
			
			Degreedao dao=new Degreedao();
			List<Degreebean> list=dao.getAlldegrees();
			for(Degreebean d:list)
			{
				if(request.getParameter(d.getDname())!=null)
				{
					s=s+","+d.getDname();
					
				}
			}
			
			c.setOpen_for(s);
			Companydao cd = new Companydao();
			c.setCid(Integer.parseInt(request.getParameter("id")));
			c.setPlacement_date(Date.valueOf(request.getParameter("pdate")));
			c.setReg_end_date(Date.valueOf(request.getParameter("edate")));
			c.setReg_start_date(Date.valueOf(request.getParameter("sdate")));
			c.setStatus(request.getParameter("status"));
			c.setStipend(Integer.parseInt(request.getParameter("stipend")));
			c.setType(request.getParameter("type"));
			cd.updatecompany(c);
			request.getRequestDispatcher("show_company.jsp").forward(request, response);
		}
		else if(action.equalsIgnoreCase("Delete"))
		{
			int id = Integer.parseInt(request.getParameter("id"));
			Companydao cd = new Companydao();
			cd.deletecompany(id);
			request.getRequestDispatcher("show_company.jsp").forward(request, response);
		}
	}

}
