package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.Companybean;
import com.util.Projectutil;

public class Companydao {
	public Companybean getByid(int cid)
	{
		Companybean a=null;
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from company where cid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, cid);
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				a=new Companybean();
				a.setCid(rs.getInt("cid"));
				a.setName(rs.getString("name"));
				a.setLocation(rs.getString("location"));
				a.setStipend(rs.getInt("stipend"));
				a.setCtc(rs.getInt("ctc"));
				a.setJob(rs.getString("job"));
				a.setType(rs.getString("type"));
				a.setCategory(rs.getString("category"));
				a.setCpi_ug(rs.getFloat("cpi_ug"));
				a.setCpi_pg(rs.getFloat("cpi_pg"));
				a.setOpen_for(rs.getString("open_for"));
				a.setReg_start_date(rs.getDate("reg_start_date"));
				a.setReg_end_date(rs.getDate("reg_end_date"));
				a.setPlacement_date(rs.getDate("placement_date"));
				a.setStatus(rs.getString("status"));
				a.setDescription(rs.getString("description"));
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return a;
	}
	
	public int getlastid()
	{
		int d=0;
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from company order by cid desc";
			PreparedStatement pst=conn.prepareStatement(sql);
			
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				d=rs.getInt("cid");
						}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return d;
		
	}
	public void updatecompany(Companybean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="update company set name=?,location=?,stipend=?,ctc=?,job=?,type=?,category=?,cpi_ug=?,cpi_pg=?,open_for=?,reg_start_date=?,reg_end_date=?,placement_date=?,status=?,description=? where cid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(16, b.getCid());
			pst.setString(1, b.getName());
			pst.setString(2, b.getLocation());
			pst.setInt(3, b.getStipend());
			pst.setInt(4, b.getCtc());
			pst.setString(5, b.getJob());
			pst.setString(6, b.getType());
			pst.setString(7, b.getCategory());
			pst.setFloat(8, b.getCpi_ug());
			pst.setFloat(9,b.getCpi_pg());
			pst.setString(10, b.getOpen_for());
			pst.setDate(11, b.getReg_start_date());
			pst.setDate(12, b.getReg_end_date());
			pst.setDate(13, b.getPlacement_date());
			pst.setString(14, b.getStatus());
			pst.setString(15, b.getDescription());

			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void insertcompany(Companybean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="insert into company(cid,name,location,stipend,ctc,job,type,category,cpi_ug,cpi_pg,open_for,reg_start_date,reg_end_date,placement_date,status,description) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, b.getCid());
			pst.setString(2, b.getName());
			pst.setString(3, b.getLocation());
			pst.setInt(4, b.getStipend());
			pst.setInt(5, b.getCtc());
			pst.setString(6, b.getJob());
			pst.setString(7, b.getType());
			pst.setString(8, b.getCategory());
			pst.setFloat(9, b.getCpi_ug());
			pst.setFloat(10,b.getCpi_pg());
			pst.setString(11, b.getOpen_for());
			pst.setDate(12, b.getReg_start_date());
			pst.setDate(13, b.getReg_end_date());
			pst.setDate(14, b.getPlacement_date());
			pst.setString(15, b.getStatus());
			pst.setString(16, b.getDescription());
			
			
			pst.executeUpdate();
			System.out.println("done");
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void deletecompany(int cid)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="delete from company where cid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, cid);
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<Companybean> getAllcompanies()
	{
		List<Companybean> list=new ArrayList<Companybean>();
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from company";
			PreparedStatement pst=conn.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				Companybean a=new Companybean();
				a.setCid(rs.getInt("cid"));
				a.setName(rs.getString("name"));
				a.setLocation(rs.getString("location"));
				a.setStipend(rs.getInt("stipend"));
				a.setCtc(rs.getInt("ctc"));
				a.setJob(rs.getString("job"));
				a.setType(rs.getString("type"));
				a.setCategory(rs.getString("category"));
				a.setCpi_ug(rs.getFloat("cpi_ug"));
				a.setCpi_pg(rs.getFloat("cpi_pg"));
				a.setOpen_for(rs.getString("open_for"));
				a.setReg_start_date(rs.getDate("reg_start_date"));
				a.setReg_end_date(rs.getDate("reg_end_date"));
				a.setPlacement_date(rs.getDate("placement_date"));
				a.setStatus(rs.getString("status"));
				a.setDescription(rs.getString("description"));
				list.add(a);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
