package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.Examinationbean;
import com.bean.Subjectsbean;
import com.util.Projectutil;

public class Examinationdao {

	
	public void insertexamination(Examinationbean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="insert into examination(cid,sid) values(?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, b.getCid());
			pst.setInt(2, b.getSid());
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void deleteexamination(int cid,int sid)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="delete from examination where cid=? and sid=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, cid);
			pst.setInt(2, sid);
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updatecid(Examinationbean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="update examination set cid=? where sid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, b.getCid());
			pst.setInt(2, b.getSid());
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void updatesid(Examinationbean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="update examination set sid=? where cid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, b.getSid());
			pst.setInt(2, b.getCid());
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<Subjectsbean> getAllExaminationsubjectsbycid(int cid)
	{
		List<Subjectsbean> list=new ArrayList<Subjectsbean>();
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from examination";
			PreparedStatement pst=conn.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			Subjectsdao s=new Subjectsdao();
			while(rs.next())
			{
				
				Subjectsbean a=s.getByid(rs.getInt("sid"));
				
				list.add(a);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
