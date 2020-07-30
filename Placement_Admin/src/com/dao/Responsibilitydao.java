package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bean.Responsibilitybean;
import com.util.Projectutil;

public class Responsibilitydao {

	public void insertresponsibility(Responsibilitybean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="insert into responsibility(rid,name) values(?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, b.getRid());
			pst.setString(2, b.getName());
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updateresponsibility(Responsibilitybean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="update responsibility set name=? where rid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, b.getName());
			pst.setInt(2, b.getRid());
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void deleteresponsibility(int rid)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="delete from responsibility where rid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, rid);
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public Responsibilitybean getByid(int rid)
	{
		Responsibilitybean a=null;
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from responsibility where rid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, rid);
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				a=new Responsibilitybean();
				a.setRid(rs.getInt("rid"));
				a.setName(rs.getString("name"));
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return a;
	}
}
