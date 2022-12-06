package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.DButil.DBUtil;

import com.bean.Subjects;

public class SubjectsDao {
	//insert
	public int insert(Subjects subjects) throws ClassNotFoundException, SQLException {
		Connection con=DBUtil.dbConn();
		if(con!=null) {
			System.out.println("DB connection established");
		}
		else
		{
			System.out.println("Connection failed");
		}
		String sql ="insert into subjects values(?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, subjects.getSubject_id());
		ps.setString(2,subjects.getSubject_name());
		return ps.executeUpdate();

	}

	//delete

	public int delete(Subjects subjects) throws ClassNotFoundException, SQLException {
		Connection con=DBUtil.dbConn();
		if(con!=null) {
			System.out.println("DB connection established");
		}
		else
		{
			System.out.println("Connection failed");
		}
		String sql ="delete from subjects where sid=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, subjects.getSubject_id());

		return ps.executeUpdate();

	}

	//update
	public int edit(Subjects subjects) throws ClassNotFoundException, SQLException {
		Connection con=DBUtil.dbConn();
		if(con!=null) {
			System.out.println("DB connection established");
		}
		else
		{
			System.out.println("Connection failed");
		}
		String sql ="update subjects set sname =?  where sid=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, subjects.getSubject_name());		
		ps.setInt(2, subjects.getSubject_id());

		return ps.executeUpdate();

	}

	//display

	public List<Subjects>display() throws ClassNotFoundException, SQLException{
		Connection con=DBUtil.dbConn();
		if(con!=null) {
			System.out.println("DB connection established");
		}
		else
		{
			System.out.println("Connection failed");
		}

		List<Subjects>list = new ArrayList<Subjects>();
		String sql ="select * from subjects";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			Subjects subject = new Subjects();
			subject.setSubject_id(rs.getInt(1));
			subject.setSubject_name(rs.getString(2));
			list.add(subject);

		}
		return list;

	}




}
