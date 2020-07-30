package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.Subjectsbean;
import com.util.Projectutil;

public class Subjectsdao {
	public void insertsubjects(Subjectsbean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="insert into subjects(sid,name) values(?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, b.getSid());
			pst.setString(2, b.getName());
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void updatesubjects(Subjectsbean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="update subjects set name=? where sid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, b.getName());
			pst.setInt(2, b.getSid());
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void deletesubjects(int sid)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="delete from subjects where sid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, sid);
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public Subjectsbean getByid(int sid)
	{
		Subjectsbean a=null;
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from subjects where sid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, sid);
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				a=new  Subjectsbean();
				a.setSid(rs.getInt("sid"));
				a.setName(rs.getString("name"));
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return a;
	}

	public List<Subjectsbean> getAllsubjects()
	{
		List<Subjectsbean> list=new ArrayList<Subjectsbean>();
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from subjects";
			PreparedStatement pst=conn.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				Subjectsbean a=new Subjectsbean();
				a.setSid(rs.getInt("sid"));
				a.setName(rs.getString("name"));
			
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
			String sql="select * from subjects order by sid desc";
			PreparedStatement pst=conn.prepareStatement(sql);
			
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				d=rs.getInt("sid");
						}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return d;
		
	}

}
