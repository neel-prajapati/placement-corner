package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import com.bean.Materialbean;
import com.util.Projectutil;

public class Materialdao {

	public void insertmaterial(Materialbean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="insert into material(link,sid) values(?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(2, b.getSid());
			pst.setString(1, b.getLink());
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updatematerial(Materialbean b,String newlink)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="update material set link=? where sid=? and link=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(3, b.getLink());
			pst.setInt(2, b.getSid());
			pst.setString(1, newlink);
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void deletematerial(Materialbean aid)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="delete from material where sid=? and link=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, aid.getSid());
			pst.setString(2, aid.getLink());
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public Materialbean getByid(Materialbean m)
	{
		Materialbean a=null;
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from material where sid=? and link=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, m.getSid());
			pst.setString(2, m.getLink());
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				a=new Materialbean();
				a.setSid(rs.getInt("sid"));
				a.setLink(rs.getString("link"));
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return a;
	}
	
	
	public List<Materialbean> getAlllinksbysid(int sid)
	{
		List<Materialbean> list=new ArrayList<Materialbean>();
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from material where sid=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, sid);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				Materialbean m=new Materialbean();
				m.setSid(rs.getInt("sid"));
				m.setLink(rs.getString("link"));
				list.add(m);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
