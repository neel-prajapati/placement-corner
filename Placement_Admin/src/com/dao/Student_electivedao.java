package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.Electivesbean;
import com.bean.Student_electivebean;
import com.util.Projectutil;

public class Student_electivedao {

	public void insertstudent_elective(Student_electivebean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="insert into student_elective(email,eid) values(?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(2, b.getEid());
			pst.setString(1, b.getEmail());
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updateemail(Student_electivebean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="update student_elective set email=? where eid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(2, b.getEid());
			pst.setString(1, b.getEmail());
			
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updatetid(Student_electivebean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="update student_elective set eid=? where email=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, b.getEid());
			pst.setString(2, b.getEmail());
			
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void deletestudent_elective(int eid,String email)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="delete from student_elective where eid=? and email=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, eid);
			pst.setString(2, email);
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<Electivesbean> getAlltoolsbyemail(String email)
	{
		List<Electivesbean> list=new ArrayList<Electivesbean>();
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from student_elective where email=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, email);
			ResultSet rs=pst.executeQuery();
			Electivesdao t=new Electivesdao();
			while(rs.next())
			{
				Electivesbean a=t.getByid(rs.getInt("eid"));
				
					list.add(a);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

}
