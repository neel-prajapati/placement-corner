package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bean.Professional_experiencebean;
import com.util.Projectutil;

public class Professional_experiencedao {
	
	public void insertprofessionalexperience(Professional_experiencebean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="insert into professional_experience(email,description) values(?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, b.getEmail());
			pst.setString(2, b.getDescription());
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updateprofessional_experience(Professional_experiencebean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="update professional_experience set description=? where email=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, b.getDescription());
			pst.setString(2, b.getEmail());
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void deleteprofessional_experience(String email)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="delete from professional_experience where email=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, email);
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public Professional_experiencebean getByid(String email)
	{
		Professional_experiencebean a=null;
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from professional_experience where email=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, email);
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				a=new Professional_experiencebean();
				a.setEmail(rs.getString("email"));
				a.setDescription(rs.getString("description"));
				
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return a;
	}

}
