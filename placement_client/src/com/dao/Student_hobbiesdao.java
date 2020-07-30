package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.Hobbiesbean;
import com.bean.Student_hobbiesbean;
import com.util.Projectutil;

public class Student_hobbiesdao {
	public void insertstudent_hobbies(Student_hobbiesbean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="insert into student_hobbies(email,hid) values(?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(2, b.getHid());
			pst.setString(1, b.getEmail());
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updateemail(Student_hobbiesbean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="update student_hobbies set email=? where hid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(2, b.getHid());
			pst.setString(1, b.getEmail());
			
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updatetid(Student_hobbiesbean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="update student_hobbies set hid=? where email=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, b.getHid());
			pst.setString(2, b.getEmail());
			
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void deletestudent_hobbies(int hid,String email)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="delete from student_hobbies where hid=? and email=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, hid);
			pst.setString(2, email);
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<Hobbiesbean> getAllhobbiessbyemail(String email)
	{
		List<Hobbiesbean> list=new ArrayList<Hobbiesbean>();
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from student_hobbies where email=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, email);
			ResultSet rs=pst.executeQuery();
			Hobbiesdao t=new Hobbiesdao();
			while(rs.next())
			{
				Hobbiesbean a=t.getByid(rs.getInt("hid"));
				
					list.add(a);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
