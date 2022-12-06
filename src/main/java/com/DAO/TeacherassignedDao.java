package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.DButil.DBUtil;

import com.bean.Teacherassigned;

public class TeacherassignedDao {
	//insert
	public int insert(Teacherassigned teacher) throws ClassNotFoundException, SQLException {
		Connection con=DBUtil.dbConn();
		if(con!=null) {
			System.out.println("DB connection established");
		}
		else
		{
			System.out.println("connection failed");
		}

		String sql = "insert into teachers values(?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, teacher.getTeacher_id());
		ps.setString(2, teacher.getTeacher_name());
		return ps.executeUpdate();
	}

	//delete
	public int delete(Teacherassigned teacher) throws ClassNotFoundException, SQLException {
		Connection con = DBUtil.dbConn();
		if(con!=null) {
			System.out.println("DB connection established");
		}
		else
		{
			System.out.println("connection failed");
		}

		String sql = "delete from teachers where tid=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, teacher.getTeacher_id());
		return ps.executeUpdate();
	}

	//update
	public int edit(Teacherassigned teacher) throws ClassNotFoundException, SQLException {
		Connection con = DBUtil.dbConn();
		if(con!=null) {
			System.out.println("DB connection established");
		}
		else
		{
			System.out.println("connection failed");
		}

		String sql = "update teachers set tname = ? where tid=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, teacher.getTeacher_name());
		ps.setInt(2, teacher.getTeacher_id());

		return ps.executeUpdate();
	}

	//display

public	List<Teacherassigned>display() throws ClassNotFoundException, SQLException
	{ 
		Connection con = DBUtil.dbConn();
	if(con!=null) {
		System.out.println("DB connection established");
	}
	else
	{
		System.out.println("connection failed");
	}
	List<Teacherassigned> list = new ArrayList<Teacherassigned>();
	String sql ="select * from teachers";
	PreparedStatement ps = con.prepareStatement(sql);
	
	ResultSet rs = ps.executeQuery();
	while(rs.next()) {
		Teacherassigned teacher = new Teacherassigned();
		teacher.setTeacher_id(rs.getInt(1));
		teacher.setTeacher_name(rs.getString(2));
		list.add(teacher);
	}
	return list;
	}
	
	}


