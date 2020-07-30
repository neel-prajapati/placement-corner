package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bean.Educationbean;
import com.util.Projectutil;

public class Educationdao {
	public void inserteducation(Educationbean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="insert into education(email,dname,start_year,end_year,cpi,institute) values(?,?,?,?,?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, b.getEmail());
			pst.setString(2, b.getDname());
			pst.setInt(3,b.getStart_year());
			pst.setInt(4, b.getEnd_year());
			pst.setFloat(5, b.getCpi());
			pst.setString(6, b.getInstitute());
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void updateducation(Educationbean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="update education set dname=?,start_year=?,end_year=?,cpi=?,institute=? where email=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(6, b.getEmail());
			pst.setString(1, b.getDname());
			pst.setInt(2,b.getStart_year());
			pst.setInt(3, b.getEnd_year());
			pst.setFloat(4, b.getCpi());
			pst.setString(5, b.getInstitute());

			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void deleteeducation(String e)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="delete from education where email=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, e);
			
			pst.executeUpdate();
			
		}
		catch (Exception r) {
			r.printStackTrace();
		}
	}
	
	public Educationbean geteducationbyid(String email)
	{
		Educationbean a=null;
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from education where email=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, email);
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				a=new Educationbean();
				a.setEmail(rs.getString("email"));
				a.setDname(rs.getString("dname"));
				a.setStart_year(rs.getInt("start_year"));
				a.setEnd_year(rs.getInt("end_year"));
				a.setCpi(rs.getFloat("cpi"));
				a.setInstitute(rs.getString("institute"));
				
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return a;
	}
	
}
