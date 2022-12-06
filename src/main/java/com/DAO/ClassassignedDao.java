package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.DButil.DBUtil;

import com.bean.Classassigned;

public class ClassassignedDao {

	//insertion
			public int insert(Classassigned cl) throws SQLException, ClassNotFoundException {
				Connection con=DBUtil.dbConn();
				if(con!=null) {
					System.out.println("connection with dB is established ");
				}
				else {
					System.out.println("connection failed ");
				}
				
				String sql="insert into class values(?,?)";
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setInt(1, cl.getClass_id());
				ps.setString(2, cl.getClass_name());
				
				
				return ps.executeUpdate();
			}
			
			
			//delete
			public int delete(Classassigned cl) throws ClassNotFoundException, SQLException {
				Connection con=DBUtil.dbConn();
				if(con!=null) {
					System.out.println("connection with dB is established ");
				}
				else {
					System.out.println("connection failed ");
				}
				
				String sql="delete from class where cid=?";
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setInt(1,cl.getClass_id() );
				return ps.executeUpdate();
			}
			
			//update
			public int edit(Classassigned cl) throws ClassNotFoundException, SQLException {
				Connection con=DBUtil.dbConn();
				if(con!=null) {
					System.out.println("connection with dB is established ");
				}
				else {
					System.out.println("connection failed ");
				}
				
				String sql="update class set cname=? where cid=?";
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1, cl.getClass_name());
				ps.setInt(2, cl.getClass_id());
				
				return ps.executeUpdate();
			}
			
			//display
			public List<Classassigned> display() throws ClassNotFoundException, SQLException{
				Connection con=DBUtil.dbConn();
				if(con!=null) {
					System.out.println("connection with dB is established ");
				}
				else {
					System.out.println("connection failed ");
				}
				List<Classassigned> list=new ArrayList<Classassigned>();
				String sql="select * from class";
				PreparedStatement ps=con.prepareStatement(sql);
				ResultSet rs=ps.executeQuery();
				while(rs.next()) {
				 Classassigned cl = new Classassigned();
				cl.setClass_id(rs.getInt(1));
				cl.setClass_name(rs.getString(2));
					list.add(cl);
				}
				return list;
			}
}
