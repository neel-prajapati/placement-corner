package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.Achievementsbean;
import com.bean.Areasbean;
import com.bean.Educationbean;
import com.bean.Electivesbean;
import com.bean.Faqbean;
import com.bean.Languagesbean;
import com.bean.Loginbean;
import com.bean.Professional_experiencebean;
import com.bean.Resumebean;
import com.bean.Tools_technologybean;
import com.util.Projectutil;

public class Resumedao {
	
	public Resumebean getresumebystudent(Loginbean l)
	{
		Resumebean r=null;
		Resumedao dao=new Resumedao();
		Student_electivedao sdao=new Student_electivedao();
		Student_hobbiesdao shdao=new Student_hobbiesdao();
		Programming_languagesdao pdao=new Programming_languagesdao();
		Personal_infodao pidao=new Personal_infodao();
		Professional_experiencedao pedao=new Professional_experiencedao();
		Student_toolsdao stdao =new Student_toolsdao();
		Student_responsibilitydao srdao=new Student_responsibilitydao();
		Student_projectdao sprodao =new Student_projectdao();
		try
		{
			r=new Resumebean();
			r.setLoginbean(l);
			r.setAchievementslist(dao.getAllachievementsbyemailid(r.getLoginbean().getEmail()));
			r.setAreaslist(dao.getAllareasbyemailid(r.getLoginbean().getEmail()));
			r.setEducationlist(dao.getAlleducationbyemailid(r.getLoginbean().getEmail()));
			r.setElectiveslist(sdao.getAllelectivessbyemail(r.getLoginbean().getEmail()));
			r.setHobbieslist(shdao.getAllhobbiessbyemail(r.getLoginbean().getEmail()));
			r.setLanguageslist(pdao.getAlllanguagesbyemail(r.getLoginbean().getEmail()));
			r.setPersonal_infobean(pidao.getByid(r.getLoginbean().getEmail()));
			r.setProfessional_experiencelist(pedao.getAllexperiencesbyemailid(r.getLoginbean().getEmail()));
			r.setProjectlist(sprodao.getAllprojectsbyemail(r.getLoginbean().getEmail()));
			r.setResponsibilitylist(srdao.getAllresponsibilitysbyemail(r.getLoginbean().getEmail()));
			r.setTools_technologybean(stdao.getAlltoolsbyemail(r.getLoginbean().getEmail()));
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return r;
		
	}
	
	public List<Achievementsbean> getAllachievementsbyemailid(String email)
	{
		List<Achievementsbean> list=new ArrayList<Achievementsbean>();
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from student_achievements where email=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, email);
			ResultSet rs=pst.executeQuery();
			Achievementsdao dao=new Achievementsdao();
			while(rs.next())
			{
				Achievementsbean a=dao.getByid(rs.getInt("aid"));
				
				list.add(a);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public List<Areasbean> getAllareasbyemailid(String email)
	{
		List<Areasbean> list=new ArrayList<Areasbean>();
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from interest where email=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, email);
			ResultSet rs=pst.executeQuery();
			Areasdao dao=new Areasdao();
			while(rs.next())
			{
				Areasbean a=dao.getByid(rs.getInt("intid"));
				
				list.add(a);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public List<Educationbean> getAlleducationbyemailid(String email)
	{
		List<Educationbean> list=new ArrayList<Educationbean>();
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from education where email=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, email);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				Educationbean a=new Educationbean();
				a=new Educationbean();
				a.setEmail(rs.getString("email"));
				a.setDname(rs.getString("dname"));
				a.setStart_year(rs.getInt("start_year"));
				a.setEnd_year(rs.getInt("end_year"));
				a.setCpi(rs.getFloat("cpi"));
				a.setInstitute(rs.getString("institute"));
			
				list.add(a);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	public String getareasstring(List<Areasbean> list)
	{
		String a=new String();
		
		
		for(Areasbean g:list)
		{
			a=a+","+g.getName();
		}
		
		return a;
	}
	public String getlanguagesstring(List<Languagesbean> list)
	{
		String a=new String();
		
		
		for(Languagesbean g:list)
		{
			a=a+","+g.getName();
		}
		
		return a;
	}
	public String gettoolsstring(List<Tools_technologybean> list)
	{
		String a=new String();
		
		
		for(Tools_technologybean g:list)
		{
			a=a+","+g.getName();
		}
		
		return a;
	}
	public String getelectivesstring(List<Electivesbean> list)
	{
		String a=new String();
		
		
		for(Electivesbean g:list)
		{
			a=a+","+g.getName();
		}
		
		return a;
	}
	
	
}
