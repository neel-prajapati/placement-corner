package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.Achievementsbean;
import com.bean.Student_achievementsbean;
import com.util.Projectutil;

public class Student_achievementsdao {

	public void insertstudent_achievements(Student_achievementsbean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="insert into student_achievements(email,aid) values(?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(2, b.getAid());
			pst.setString(1, b.getEmail());
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updateemail(Student_achievementsbean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="update student_achievements set email=? where aid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(2, b.getAid());
			pst.setString(1, b.getEmail());
			
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updatetid(Student_achievementsbean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="update student_achievements set aid=? where email=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, b.getAid());
			pst.setString(2, b.getEmail());
			
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void deletestudent_achievements(int aid,String email)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="delete from student_achievements where aid=? and email=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, aid);
			pst.setString(2, email);
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<Achievementsbean> getAllachievementsbyemail(String email)
	{
		List<Achievementsbean> list=new ArrayList<Achievementsbean>();
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from student_achievements where email=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, email);
			ResultSet rs=pst.executeQuery();
			Achievementsdao t=new Achievementsdao();
			while(rs.next())
			{
				Achievementsbean a=t.getByid(rs.getInt("aid"));
				
					list.add(a);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

}
