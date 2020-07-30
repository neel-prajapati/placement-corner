package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import com.bean.Degreebean;
import com.util.Projectutil;

public class Degreedao {
	public void insertdegree(Degreebean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="insert into degree(did,dname) values(?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(2, b.getDname());
			pst.setInt(1, b.getDid());
			
			pst.executeUpdate();			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void updatedegree(Degreebean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="update degree set dname=? where did=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(2, b.getDid());
			pst.setString(1, b.getDname());
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void deletedegree(int degree)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="delete from degree where did=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1,degree );
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public Degreebean getByid(int d)
	{
		Degreebean a=null;
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from degree where did=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, d);
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				a=new Degreebean();
				a.setDname(rs.getString("dname"));
				a.setDid(rs.getInt("did"));
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return a;
	}
	public int getid(String d)
	{
		int a=0;
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from degree where dname=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, d);
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				a=rs.getInt("did");
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return a;
	}
	
	public List<Degreebean> getAlldegrees()
	{
		List<Degreebean> list=new ArrayList<Degreebean>();
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from degree";
			PreparedStatement pst=conn.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				Degreebean a=new Degreebean();
				a.setDname(rs.getString("dname"));
				a.setDid(rs.getInt("did"));
					
				list.add(a);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public int getlastid()
	{
		int d=0;
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from degree order by did desc";
			PreparedStatement pst=conn.prepareStatement(sql);
			
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				d=rs.getInt("did");
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return d;
	}
}
