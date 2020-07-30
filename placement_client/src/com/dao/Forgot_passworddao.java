package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bean.Forgot_passwordbean;
import com.util.Projectutil;

public class Forgot_passworddao {

	
	public Forgot_passwordbean fetchEmailData(String email)
	{
		Forgot_passwordbean f=null;
		try {
			 f=new Forgot_passwordbean();

			Connection conn=Projectutil.createConnection();
			String sql="select * from login where email=? ";
			PreparedStatement stmt=conn.prepareStatement(sql);
			stmt.setString(1, email);
			ResultSet rs=stmt.executeQuery();
			System.out.println(email);
			if(rs.next())
			{
				String name = rs.getString("fname") + " "+ rs.getString("mname")+" "+rs.getString("lname");
				f.setName(name);
				f.setEmail(rs.getString("email"));
			}
			else
			{
				f=null;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	public void UpdatePassword(String email,String pass)
	{
		try {

			Connection conn=Projectutil.createConnection();
			String sql="update login set password=? where email = ?";
			PreparedStatement stmt=conn.prepareStatement(sql);
			stmt.setString(1, pass);
			stmt.setString(2, email);
			stmt.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
