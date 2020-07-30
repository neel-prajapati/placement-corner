package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bean.Hobbiesbean;
import com.util.Projectutil;

public class Hobbiesdao {
	public void inserthobbies(Hobbiesbean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="insert into hobbies(hid,name) values(?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, b.getHid());
			pst.setString(2, b.getName());
			
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
			String sql="select * from hobbies order by hid desc";
			PreparedStatement pst=conn.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				id=rs.getInt("hid");
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return id;
	}
	public void updatehobbies(Hobbiesbean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="update hobbies set name=? where hid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, b.getName());
			pst.setInt(2, b.getHid());
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void deletehobbies(int hid)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="delete from hobbies where hid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, hid);
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public Hobbiesbean getByid(int hid)
	{
		Hobbiesbean a=null;
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from hobbies where hid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, hid);
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				a=new Hobbiesbean();
				a.setHid(rs.getInt("hid"));
				a.setName(rs.getString("name"));
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return a;
	}


}
