package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bean.Tools_technologybean;
import com.util.Projectutil;

public class Tools_technologydao {

	public void inserttools_technology(Tools_technologybean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="insert into tools_technology(tid,name) values(?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, b.getTid());
			pst.setString(2, b.getName());
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int getareaidByname(String name)
	{
		int id=0;
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from tools_technology where name=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, name);
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				id=rs.getInt("tid");
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return id;
	}
	public int getlastid()
	{
		int id=0;
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from tools_technology order by tid desc";
			PreparedStatement pst=conn.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				id=rs.getInt("tid");
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return id;
	}
	public void updatetools_technology(Tools_technologybean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="update tools_technology set name=? where tid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, b.getName());
			pst.setInt(2, b.getTid());
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void deletetools_technology(int tid)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="delete from tools_technology where tid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, tid);
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public Tools_technologybean getByid(int tid)
	{
		Tools_technologybean a=null;
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from tools_technology where tid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, tid);
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				a=new Tools_technologybean();
				a.setTid(rs.getInt("tid"));
				a.setName(rs.getString("name"));
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return a;
	}
}
