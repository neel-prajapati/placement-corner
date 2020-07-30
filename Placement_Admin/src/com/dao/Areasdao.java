package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bean.Areasbean;
import com.util.Projectutil;

public class Areasdao {
	public void insertareas(Areasbean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="insert into areas(intid,name) values(?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, b.getIntid());
			pst.setString(2, b.getName());
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updateareas(Areasbean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="update areas set name=? where intid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, b.getName());
			pst.setInt(2, b.getIntid());
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void deleteareas(int intid)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="delete from areas where intid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, intid);
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public Areasbean getByid(int intid)
	{
		Areasbean a=null;
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from areas where intid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, intid);
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				a=new Areasbean();
				a.setIntid(rs.getInt("intid"));
				a.setName(rs.getString("name"));
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return a;
	}

}
