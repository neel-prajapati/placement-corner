package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.Responsibilitybean;
import com.bean.Student_responsibilitybean;
import com.util.Projectutil;

public class Student_responsibilitydao {
	public void insertstudent_responsibility(Student_responsibilitybean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="insert into student_responsibility(email,rid) values(?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(2, b.getRid());
			pst.setString(1, b.getEmail());
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updateemail(Student_responsibilitybean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="update student_responsibility set email=? where rid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(2, b.getRid());
			pst.setString(1, b.getEmail());
			
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updatetid(Student_responsibilitybean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="update student_responsibility set rid=? where email=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, b.getRid());
			pst.setString(2, b.getEmail());
			
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void deletestudent_responsibility(int rid,String email)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="delete from student where rid=? and email=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, rid);
			pst.setString(2, email);
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<Responsibilitybean> getAllresponsibilitysbyemail(String email)
	{
		List<Responsibilitybean> list=new ArrayList<Responsibilitybean>();
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from student_Responsibility where email=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, email);
			ResultSet rs=pst.executeQuery();
			Responsibilitydao t=new Responsibilitydao();
			while(rs.next())
			{
				Responsibilitybean a=t.getByid(rs.getInt("rid"));
				
					list.add(a);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

}
