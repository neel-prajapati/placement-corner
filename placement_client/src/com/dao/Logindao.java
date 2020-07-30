package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.Loginbean;
import com.util.Projectutil;

public class Logindao {
	
	public Loginbean checkLogin(int id,String pass)
	{
		Loginbean a=null;
		try
		{
			Connection conn=Projectutil.createConnection();
			PreparedStatement pst;
			String sql;
			
			sql="select * from login where id=? and password=?";
			 pst=conn.prepareStatement(sql);
			
			pst.setInt(1, id);
			pst.setString(2,pass);
			
			ResultSet rs=pst.executeQuery();
			if(rs.next()){
				a=new Loginbean();
				a.setId(rs.getInt("id"));
				a.setFname(rs.getString("fname"));
				a.setMname(rs.getString("mname"));
				a.setLname(rs.getString("lname"));
				a.setDob(rs.getDate("dob"));
				a.setGender(rs.getString("gender"));
				a.setHeight(rs.getFloat("height"));
				a.setBlood_group(rs.getString("blood_group"));
				a.setAddress(rs.getString("address"));
				a.setPassword(rs.getString("password"));
				a.setSkypeid(rs.getString("skypeid"));
				a.setEmail(rs.getString("email"));
				a.setMobile(rs.getString("mobile"));
				a.setDid(rs.getInt("did"));
				a.setYear(rs.getInt("year"));
				
			}
			
			
		
		}
		catch (Exception ea) {
			ea.printStackTrace();
		}
		return a;
	
	}
	
	public void updatelogin(Loginbean s) {
		try {
			Connection conn = Projectutil.createConnection();
			String sql = "update  login set fname=?,mname=?,lname=?,dob=?,gender=?,height=?,blood_group=?,address=?,skypeid=?,email=?,mobile=?,did=?,year=? where id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(14, s.getId());
			pst.setString(1, s.getFname());
			pst.setString(2, s.getMname());
			pst.setString(3, s.getLname());
			pst.setDate(4, s.getDob());
			pst.setString(5, s.getGender());
			pst.setFloat(6, s.getHeight());
			pst.setString(7, s.getBlood_group());
			pst.setString(8, s.getAddress());
			pst.setString(9, s.getSkypeid());
			pst.setString(10, s.getEmail());
			pst.setString(11, s.getMobile());
			pst.setInt(12, s.getDid());
			pst.setInt(13, s.getYear());
			pst.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public Loginbean getloginById(int id)
	{
		Loginbean a=null;
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from login where id=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, id);
			ResultSet rs=pst.executeQuery();
			if(rs.next()){
				a=new Loginbean();
				a.setId(rs.getInt("id"));
				a.setFname(rs.getString("fname"));
				a.setMname(rs.getString("mname"));
				a.setLname(rs.getString("lname"));
				a.setDob(rs.getDate("dob"));
				a.setGender(rs.getString("gender"));
				a.setHeight(rs.getFloat("height"));
				a.setBlood_group(rs.getString("blood_group"));
				a.setAddress(rs.getString("address"));
				a.setPassword(rs.getString("password"));
				a.setMobile(rs.getString("mobile"));
				a.setSkypeid(rs.getString("skypeid"));
				a.setEmail(rs.getString("email"));
				a.setDid(rs.getInt("did"));
				a.setYear(rs.getInt("year"));
			}
					
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return a;
	}
	
	public List<Loginbean> getAlllogins()
	{
		List<Loginbean> list=new ArrayList<Loginbean>();
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from login";
			PreparedStatement pst=conn.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				Loginbean a=new Loginbean();
				a.setId(rs.getInt("id"));
				a.setFname(rs.getString("fname"));
				a.setMname(rs.getString("mname"));
				a.setLname(rs.getString("lname"));
				a.setDob(rs.getDate("dob"));
				a.setGender(rs.getString("gender"));
				a.setHeight(rs.getFloat("height"));
				a.setBlood_group(rs.getString("blood_group"));
				a.setAddress(rs.getString("address"));
				a.setPassword(rs.getString("password"));
				a.setMobile(rs.getString("mobile"));
				a.setSkypeid(rs.getString("skypeid"));
				a.setEmail(rs.getString("email"));
				a.setDid(rs.getInt("did"));
				a.setYear(rs.getInt("year"));
		
				list.add(a);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public List<Loginbean> getAllloginsbyprogram(String p,int year)
	{
		List<Loginbean> list=new ArrayList<Loginbean>();
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from login where program=? and year=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, p);
			pst.setInt(2, year);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				Loginbean a=new Loginbean();
				a.setId(rs.getInt("id"));
				a.setFname(rs.getString("fname"));
				a.setMname(rs.getString("mname"));
				a.setLname(rs.getString("lname"));
				a.setDob(rs.getDate("dob"));
				a.setGender(rs.getString("gender"));
				a.setHeight(rs.getFloat("height"));
				a.setBlood_group(rs.getString("blood_group"));
				a.setAddress(rs.getString("address"));
				a.setPassword(rs.getString("password"));
				a.setMobile(rs.getString("mobile"));
				a.setSkypeid(rs.getString("skypeid"));
				a.setEmail(rs.getString("email"));
				a.setDid(rs.getInt("did"));
				a.setYear(rs.getInt("year"));
		
				list.add(a);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public void insertLogin(Loginbean s) {
		try {
			Connection conn = Projectutil.createConnection();
			String sql = "insert into login(id,fname,mname,lname,dob,gender,height,blood_group,address,password,skypeid,email,mobile,program,year) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, s.getId());
			pst.setString(2, s.getFname());
			pst.setString(3, s.getMname());
			pst.setString(4, s.getLname());
			pst.setDate(5, s.getDob());
			pst.setString(6, s.getGender());
			pst.setFloat(7, s.getHeight());
			pst.setString(8, s.getBlood_group());
			pst.setString(9, s.getAddress());
			pst.setString(10, s.getPassword());
			pst.setString(11, s.getSkypeid());
			pst.setString(12, s.getEmail());
			pst.setString(13, s.getMobile());
			pst.setInt(14, s.getDid());
			pst.setInt(15, s.getYear());

			pst.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void deletelogin(int s) {
		try {
			Connection conn = Projectutil.createConnection();
			String sql = "delete from login where id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, s);

			pst.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void changepass(Loginbean s)
{
	try
	{
		Connection conn=Projectutil.createConnection();
		String sql="update login set password=? where id=?";
		PreparedStatement pst=conn.prepareStatement(sql);
		pst.setString(1, s.getPassword());
		pst.setInt(2, s.getId());
	
		pst.executeUpdate();
	}catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}

	}

}
