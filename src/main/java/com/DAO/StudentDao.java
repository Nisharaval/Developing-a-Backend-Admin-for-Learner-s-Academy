package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.DButil.DBUtil;
import com.bean.Students;




public class StudentDao {
	//insertion
		public int insert(Students student) throws SQLException, ClassNotFoundException {
			Connection con=DBUtil.dbConn();
			if(con!=null) 
			{
				System.out.println("connection with dB is established ");
			}
			else {
				System.out.println("connection failed ");
			}
			
			String sql="insert into Students values(?,?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, student.getStudent_id());
			ps.setString(2, student.getFirst_Name());
			ps.setString(3, student.getLast_Name());
			ps.setString(4, student.getDOB());
			ps.setString(5, student.getAddress());
			ps.setLong(6,student.getPhonenumber());
			ps.setString(7, student.getClasses());
			
			return ps.executeUpdate();
		}
		
		
		//delete
		public int delete(Students student) throws ClassNotFoundException, SQLException {
			Connection con=DBUtil.dbConn();
			if(con!=null) {
				System.out.println("connection with dB is established ");
			}
			else {
				System.out.println("connection failed ");
			}
			
			String sql="delete from Students where id=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, student.getStudent_id());
			return ps.executeUpdate();
		}
		
		//update
		public int edit(Students student) throws ClassNotFoundException, SQLException {
			Connection con=DBUtil.dbConn();
			if(con!=null) {
				System.out.println("connection with dB is established ");
			}
			else {
				System.out.println("connection failed ");
			}
			
			String sql="update Students set fname=?, lname =? where  id=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, student.getFirst_Name());
			ps.setString(2, student.getLast_Name());
			ps.setInt(3, student.getStudent_id());
			return ps.executeUpdate();
		}
		
		//display
		public List<Students> display() throws ClassNotFoundException, SQLException{
			Connection con=DBUtil.dbConn();
			if(con!=null) {
				System.out.println("connection with dB is established ");
			}
			else {
				System.out.println("connection failed ");
			}
			List<Students> list=new ArrayList<Students>();
			String sql="select * from Students";
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				Students student=new Students();
				student.setStudent_id(rs.getInt(1));
				student.setFirst_Name(rs.getString(2));
				student.setLast_Name(rs.getString(3));
				student.setDOB(rs.getString(4));
				student.setAddress(rs.getString(5));
				student.setPhonenumber(rs.getLong(6));
				student.setClasses(rs.getString(7));
				list.add(student);
			}
			return list;
		}
	
		
			

}
