package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bean.Projectbean;
import com.util.Projectutil;

public class Projectdao {
	public void insertproject(Projectbean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="insert into project(pid,name,language,description,guide,start,end,team) values(?,?,?,?,?,?,?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, b.getPid());
			pst.setString(2, b.getName());
			pst.setString(3, b.getLanguage());
			pst.setString(4, b.getDescription());
			pst.setString(5, b.getGuide());
			pst.setDate(6, b.getStart());
			pst.setDate(7, b.getEnd());
			pst.setInt(8, b.getTeam());

			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updateproject(Projectbean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="update project set name=?,language=?,description=?,guide=?,start=?,end=?,team=? where pid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);

			pst.setInt(8, b.getPid());
			pst.setString(1, b.getName());
			pst.setString(2, b.getLanguage());
			pst.setString(3, b.getDescription());
			pst.setString(4, b.getGuide());
			pst.setDate(5, b.getStart());
			pst.setDate(6, b.getEnd());
			pst.setInt(7, b.getTeam());

			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void deleteproject(int pid)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="delete from project where pid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, pid);
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public Projectbean getByid(int pid)
	{
		Projectbean a=null;
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from project where pid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, pid);
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				a=new Projectbean();
				a.setPid(rs.getInt("pid"));
				a.setName(rs.getString("name"));
				a.setLanguage(rs.getString("language"));
				a.setGuide(rs.getString("guide"));
				a.setStart(rs.getDate("start"));
				a.setEnd(rs.getDate("end"));
				a.setTeam(rs.getInt("team"));
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return a;
	}
}
