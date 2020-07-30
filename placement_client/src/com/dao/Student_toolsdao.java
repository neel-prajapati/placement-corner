package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.Student_toolsbean;
import com.bean.Tools_technologybean;
import com.util.Projectutil;

public class Student_toolsdao {
	
	public void insertstudent(Student_toolsbean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="insert into student_tools(email,tid) values(?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(2, b.getTid());
			pst.setString(1, b.getEmail());
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updateemail(Student_toolsbean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="update student_tools set email=? where tid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(2, b.getTid());
			pst.setString(1, b.getEmail());
			
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updatetid(Student_toolsbean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="update student_tools set tid=? where email=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, b.getTid());
			pst.setString(2, b.getEmail());
			
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void deletestudent(int tid,String email)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="delete from student_tools where tid=? and email=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, tid);
			pst.setString(2, email);
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void deletestudent(String email)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="delete from student_tools where  email=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, email);
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public List<Tools_technologybean> getAlltoolsbyemail(String email)
	{
		List<Tools_technologybean> list=new ArrayList<Tools_technologybean>();
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from student_tools where email=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, email);
			ResultSet rs=pst.executeQuery();
			Tools_technologydao t=new Tools_technologydao();
			while(rs.next())
			{
				Tools_technologybean a=t.getByid(rs.getInt("tid"));
				
					list.add(a);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

}
