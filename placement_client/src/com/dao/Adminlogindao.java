package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.Adminloginbean;
import com.util.Projectutil;

public class Adminlogindao {
	
	
	
	public Adminloginbean checkLogin(String id,String pass)
	{
		Adminloginbean a=null;
		try
		{
			Connection conn=Projectutil.createConnection();
			PreparedStatement pst;
			String sql;
			
			sql="select * from adminlogin where adminid=? and password=?";
			 pst=conn.prepareStatement(sql);
			
			pst.setString(1, id);
			pst.setString(2,pass);
			
			ResultSet rs=pst.executeQuery();
			if(rs.next()){
				a=new Adminloginbean();
				a.setAdminid(rs.getString("adminid"));
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
			}
			
			
		
		}
		catch (Exception ea) {
			ea.printStackTrace();
		}
		return a;
	
	}
	
	public void updateadminlogin(Adminloginbean s) {
		try {
			Connection conn = Projectutil.createConnection();
			String sql = "update  adminlogin set fname=?,mname=?,lname=?,dob=?,gender=?,height=?,blood_group=?,address=?,password=?,mobile=? where adminid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(11, s.getAdminid());
			pst.setString(1, s.getFname());
			pst.setString(2, s.getMname());
			pst.setString(3, s.getLname());
			pst.setDate(4, s.getDob());
			pst.setString(5, s.getGender());
			pst.setFloat(6, s.getHeight());
			pst.setString(7, s.getBlood_group());
			pst.setString(8, s.getAddress());
			pst.setString(9, s.getPassword());
			pst.setString(10, s.getMobile());
			pst.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public Adminloginbean getadminById(String id)
	{
		Adminloginbean a=null;
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from adminlogin where adminid=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, id);
			ResultSet rs=pst.executeQuery();
			if(rs.next()){
				a=new Adminloginbean();
				a.setAdminid(rs.getString("adminid"));
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
			}
					
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return a;
	}
	
	public List<Adminloginbean> getAlladmins()
	{
		List<Adminloginbean> list=new ArrayList<Adminloginbean>();
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from adminlogin";
			PreparedStatement pst=conn.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				Adminloginbean a=new Adminloginbean();
				a.setAdminid(rs.getString("adminid"));
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
				list.add(a);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public void insertadminlogin(Adminloginbean s) {
		try {
			Connection conn = Projectutil.createConnection();
			String sql = "insert into adminlogin(adminid,fname,mname,lname,dob,gender,height,blood_group,address,password,mobile) values(?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, s.getAdminid());
			pst.setString(2, s.getFname());
			pst.setString(3, s.getMname());
			pst.setString(4, s.getLname());
			pst.setDate(5, s.getDob());
			pst.setString(6, s.getGender());
			pst.setFloat(7, s.getHeight());
			pst.setString(8, s.getBlood_group());
			pst.setString(9, s.getAddress());
			pst.setString(10, s.getPassword());
			pst.setString(11, s.getMobile());

			pst.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void deleteadminlogin(String s) {
		try {
			Connection conn = Projectutil.createConnection();
			String sql = "delete from adminlogin where adminid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, s);

			pst.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void changepass(Adminloginbean s)
{
	try
	{
		Connection conn=Projectutil.createConnection();
		String sql="update adminlogin set password=? where adminid=?";
		PreparedStatement pst=conn.prepareStatement(sql);
		pst.setString(1, s.getPassword());
		pst.setString(2, s.getAdminid());
	
		pst.executeUpdate();
		System.out.println("Password Update Successfully");	
	}catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}

	}
}
