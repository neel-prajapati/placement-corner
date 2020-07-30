package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.Projectbean;
import com.bean.Student_projectbean;
import com.util.Projectutil;

public class Student_projectdao {

	public void insertstudent_project(Student_projectbean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="insert into student_project(email,pid) values(?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(2, b.getPid());
			pst.setString(1, b.getEmail());
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updateemail(Student_projectbean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="update student_project set email=? where pid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(2, b.getPid());
			pst.setString(1, b.getEmail());
			
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updatetid(Student_projectbean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="update student_project set pid=? where email=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, b.getPid());
			pst.setString(2, b.getEmail());
			
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void deletestudent_project(int pid,String email)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="delete from student_project where pid=? and email=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, pid);
			pst.setString(2, email);
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<Projectbean> getAllprojectsbyemail(String email)
	{
		List<Projectbean> list=new ArrayList<Projectbean>();
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from student_project where email=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, email);
			ResultSet rs=pst.executeQuery();
			Projectdao t=new Projectdao();
			while(rs.next())
			{
				Projectbean a=t.getByid(rs.getInt("pid"));
				
					list.add(a);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
