package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bean.Achievementsbean;
import com.util.Projectutil;

public class Achievementsdao {

	public void insertachievements(Achievementsbean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="insert into achievements(aid,name) values(?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, b.getAid());
			pst.setString(2, b.getName());
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updateachievements(Achievementsbean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="update achievements set name=? where aid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, b.getName());
			pst.setInt(2, b.getAid());
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public int getlastid()
	{
		int id=0;
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from achievements order by aid desc";
			PreparedStatement pst=conn.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				id=rs.getInt("aid");
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return id;
	}
	public void deleteachievements(int aid)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="delete from achievements where aid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, aid);
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public Achievementsbean getByid(int aid)
	{
		Achievementsbean a=null;
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from achievements where aid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, aid);
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				a=new Achievementsbean();
				a.setAid(rs.getInt("aid"));
				a.setName(rs.getString("name"));
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return a;
	}
	
	
}
