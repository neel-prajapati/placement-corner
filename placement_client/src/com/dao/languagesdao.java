package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.Languagesbean;
import com.util.Projectutil;

public class languagesdao {

	
	public void insertlanguages(Languagesbean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="insert into languages(lid,name) values(?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, b.getLid());
			pst.setString(2, b.getName());
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updatelanguages(Languagesbean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="update languages set name=? where lid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, b.getName());
			pst.setInt(2, b.getLid());
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void deletelanguages(int lid)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="delete from languages where lid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, lid);
			
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
			String sql="select * from languages where name=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, name);
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				id=rs.getInt("lid");
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return id;
	}
	public Languagesbean getByid(int lid)
	{
		Languagesbean a=null;
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from languages where lid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, lid);
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				a=new Languagesbean();
				a.setLid(rs.getInt("lid"));
				a.setName(rs.getString("name"));
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return a;
	}
	
	public List<Languagesbean> getAlllanguages()
	{
		List<Languagesbean> list=new ArrayList<Languagesbean>();
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from languages";
			PreparedStatement pst=conn.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				Languagesbean a=new Languagesbean();
				a.setLid(rs.getInt("lid"));
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
		int id=0;
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from languages order by lid desc";
			PreparedStatement pst=conn.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				id=rs.getInt("lid");
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return id;
	}
	
}
