package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bean.Electivesbean;
import com.util.Projectutil;

public class Electivesdao {

	public void insertelectives(Electivesbean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="insert into electives(eid,name) values(?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, b.getEid());
			pst.setString(2, b.getName());
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updateelectives(Electivesbean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="update electives set name=? where eid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, b.getName());
			pst.setInt(2, b.getEid());
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public void deleteelectives(int eid)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="delete from electives where eid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, eid);
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public Electivesbean getByid(int eid)
	{
		Electivesbean a=null;
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from electives where eid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, eid);
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				a=new  Electivesbean();
				a.setEid(rs.getInt("eid"));
				a.setName(rs.getString("name"));
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return a;
	}
	
	
}
