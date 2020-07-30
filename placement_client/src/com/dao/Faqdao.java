package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.Faqbean;
import com.util.Projectutil;

public class Faqdao {

	


	public List<Faqbean> getAllFaq()
	{
		List<Faqbean> list=new ArrayList<Faqbean>();
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from faq";
			PreparedStatement pst=conn.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				Faqbean a = new Faqbean();
				a.setFaqid(rs.getInt("faqid"));
				a.setQuestion(rs.getString("question"));
				a.setAnswer(rs.getString("answer"));
				String s = rs.getString("publish");
				a.setPublish(s.charAt(0));
				list.add(a);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public List<Faqbean> getAllPublishedFaq()
	{
		List<Faqbean> list=new ArrayList<Faqbean>();
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from faq where publish = 't'";
			PreparedStatement pst=conn.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				Faqbean a = new Faqbean();
				a.setFaqid(rs.getInt("faqid"));
				a.setQuestion(rs.getString("question"));
				a.setAnswer(rs.getString("answer"));
				String s = rs.getString("publish");
				a.setPublish(s.charAt(0));
				list.add(a);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public void insertfaq(Faqbean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="insert into faq(faqid,question,answer,publish) values(?,?,?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, b.getFaqid());
			pst.setString(2, b.getQuestion());
			pst.setString(3, b.getAnswer());
			pst.setString(4, String.valueOf(b.getPublish()));
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updatefaq(Faqbean b)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="update faq set question=?,answer=?,publish=? where faqid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, b.getQuestion());
			pst.setString(2, b.getAnswer());
			pst.setString(3,String.valueOf(b.getPublish()));
			pst.setInt(4, b.getFaqid());
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void deletefaq(int faqid)
	{
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="delete from faq where faqid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, faqid);
			
			pst.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	public int lastid()
	{
		int a=0;
	
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from faq order by daqid desc";
			PreparedStatement pst=conn.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				a=rs.getInt("faqid");
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	
		return a;
	}
	public Faqbean getByid(int faqid)
	{
		Faqbean a=null;
		try
		{
			Connection conn=Projectutil.createConnection();
			String sql="select * from faq where faqid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, faqid);
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				a=new Faqbean();
				a.setFaqid(rs.getInt("faqid"));
				a.setQuestion(rs.getString("question"));
				a.setAnswer(rs.getString("answer"));
				String s=rs.getString("publish");
				a.setPublish(s.charAt(0));
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
			String sql="select * from faq order by faqid desc";
			PreparedStatement pst=conn.prepareStatement(sql);
			
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				d=rs.getInt("faqid");
						}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return d;
		
	}



}
