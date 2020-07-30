package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.Areasbean;
import com.bean.Interestbean;
import com.util.Projectutil;

public class Interestdao {

	public void insertinterest(Interestbean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="insert into interest(email,intid) values(?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, b.getEmail());
			pst.setInt(2, b.getIntid());
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updateemail(Interestbean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="update interest set email=? where intid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, b.getEmail());
			pst.setInt(2, b.getIntid());
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updateintid(Interestbean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="update interest set intid=? where email=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(2, b.getEmail());
			pst.setInt(1, b.getIntid());
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void deleteinterest(int intid,String e)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="delete from interest where intid=? and email=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, intid);
			pst.setString(2, e);
			
			pst.executeUpdate();
			
		}
		catch (Exception es) {
			es.printStackTrace();
		}
	}
	
	public List<Areasbean> getAllinterestsareasbyemail()
	{
		List<Areasbean> list=new ArrayList<Areasbean>();
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from interest";
			PreparedStatement pst=conn.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			Areasdao d=new Areasdao();
			while(rs.next())
			{
				Areasbean a=d.getByid(rs.getInt("intid"));
				
				list.add(a);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
}
