package com.DAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.DButil.DBUtil;
import com.bean.Reports;


public class ReportsDao {
	//insertion
			public int insert(Reports report) throws SQLException, ClassNotFoundException {
				Connection con=DBUtil.dbConn();
				if(con!=null) 
				{
					System.out.println("connection with dB is established ");
				}
				else {
					System.out.println("connection failed ");
				}
				
				String sql="insert into reports values(?,?,?)";
				PreparedStatement ps = con.prepareStatement(sql);
					ps.setInt(1, report.getRid());
					ps.setString(2, report.getRsubjectname());
					ps.setString(3, report.getRteachername());

				
				return ps.executeUpdate();
			}
			
			
			//delete
			public int delete(Reports report) throws ClassNotFoundException, SQLException {
				Connection con=DBUtil.dbConn();
				if(con!=null) {
					System.out.println("connection with dB is established ");
				}
				else {
					System.out.println("connection failed ");
				}
				
				String sql="delete from reports where id=?";
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setInt(1, report.getRid());
				return ps.executeUpdate();
			}
			
			//update
			public int edit(Reports report) throws ClassNotFoundException, SQLException {
				Connection con=DBUtil.dbConn();
				if(con!=null) {
					System.out.println("connection with dB is established ");
				}
				else {
					System.out.println("connection failed ");
				}
				
				String sql="update reports set sname=?, tname =? where  id=?";
				PreparedStatement ps =con.prepareStatement(sql);
				ps.setString(2, report.getRsubjectname());
				ps.setString(3, report.getRteachername());
				ps.setInt(1, report.getRid());
				return ps.executeUpdate();
			}
			
			//display
			public List<Reports> display() throws ClassNotFoundException, SQLException{
				Connection con=DBUtil.dbConn();
				if(con!=null) {
					System.out.println("connection with dB is established ");
				}
				else {
					System.out.println("connection failed ");
				}
				List<Reports> list=new ArrayList<Reports>();
				String sql="select * from reports";
				PreparedStatement ps=con.prepareStatement(sql);
				ResultSet rs=ps.executeQuery();
				while(rs.next()) {
					Reports report=new Reports();
					report.setRid(rs.getInt(1));
					report.setRsubjectname(rs.getString(2));
					report.setRteachername(rs.getString(2));
					
					list.add(report);
				}
				return list;
			}

}
