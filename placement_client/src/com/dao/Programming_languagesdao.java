package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.Languagesbean;
import com.bean.Programming_Languagebean;
import com.util.Projectutil;

public class Programming_languagesdao {

	public void insertprogramming_languages(Programming_Languagebean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="insert into programming_languages(email,lid) values(?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(2, b.getLid());
			pst.setString(1, b.getEmail());
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updatelid(Programming_Languagebean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="update programming_languages set lid=? where email=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(2, b.getEmail());
			pst.setInt(1, b.getLid());
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updateemail(Programming_Languagebean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="update programming_languages set email=? where lid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, b.getEmail());
			pst.setInt(2, b.getLid());
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void deleteprogramming_languages(int lid,String email)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="delete from programming_languages where lid=? and email=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, lid);
			pst.setString(2, email);
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void deleteprogramming_languages(String email)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="delete from programming_languages where email=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, email);
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<Languagesbean> getAlllanguagesbyemail(String email)
	{
		List<Languagesbean> list=new ArrayList<Languagesbean>();
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from programming_languages where email=?";
			
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, email);
			ResultSet rs=pst.executeQuery();
			languagesdao l=new languagesdao();
			while(rs.next())
			{
				Languagesbean a=l.getByid(rs.getInt("lid"));
			
				list.add(a);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
