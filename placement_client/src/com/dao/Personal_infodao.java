package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bean.Personal_infobean;
import com.util.Projectutil;

public class Personal_infodao {

	public void insertpersonal_info(Personal_infobean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="insert into personal_info(sname,email,dob,address) values(?,?,?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, b.getSname());
			pst.setString(2, b.getEmail());
			pst.setDate(3, b.getDob());
			pst.setString(4, b.getAddress());
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updatepersonal_info(Personal_infobean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="update personal_info set sname=?,dob=?,address=? where email=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, b.getSname());
			pst.setString(4, b.getEmail());
			pst.setDate(2, b.getDob());
			pst.setString(3, b.getAddress());
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updateaddress(Personal_infobean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="update personal_info set address=? where email=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, b.getAddress());
			pst.setString(2, b.getEmail());
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updatename(Personal_infobean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="update personal_info set sname=? where email=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, b.getSname());
			pst.setString(2, b.getEmail());
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updatedob(Personal_infobean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="update personal_info set dob=? where email=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setDate(1, b.getDob());
			pst.setString(2, b.getEmail());
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void deletepersonal_info(String email)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="delete from personal_info where email=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, email);
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public Personal_infobean getByid(String email)
	{
		Personal_infobean a=null;
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from personal_info where email=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, email);
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				a=new Personal_infobean();
				a.setEmail(rs.getString("email"));
				a.setSname(rs.getString("sname"));
				a.setDob(rs.getDate("dob"));
				a.setAddress(rs.getString("address"));
			
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return a;
	}
	
}
