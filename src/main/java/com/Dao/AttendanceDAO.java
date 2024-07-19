package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.Model.AttendanceModel;

public class AttendanceDAO {
	Connection conn=null;

	/**
	 * @param conn
	 */
	public AttendanceDAO(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public Boolean Attendance(AttendanceModel am1) {
			boolean f=false;
			
			String query="insert into attendance(Id,RollNo,Student_Name,Father_Name,Attend_Status,Date,Subject_Name,Teacher_Name) values(?,?,?,?,?,?,?,?)";
			try {
				PreparedStatement ps=conn.prepareStatement(query);
				ps.setString(1, am1.getId());
				ps.setString(2, am1.getRollNo());
				ps.setString(3, am1.getsName());
				ps.setString(4, am1.getfName());
				ps.setString(5, am1.getsStatus());
				ps.setString(6, am1.getDate());
				ps.setString(7,am1.getSubject());
				ps.setString(8, am1.getTeacher());
				
				int i=ps.executeUpdate();
				while(i>0) {
					f=true;
					
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return f;
		
	}
	public List<AttendanceModel> GetAttendanceData(){
		List<AttendanceModel> list=new ArrayList<>();
		String query="select * from attendance";
		try {
			PreparedStatement ps=conn.prepareStatement(query);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				AttendanceModel a1=new AttendanceModel();
				a1.setId(rs.getString("Id"));
				a1.setRollNo(rs.getString("RollNo"));
				a1.setsName(rs.getString("Student_Name"));
				a1.setfName(rs.getString("Father_Name"));
				a1.setsStatus(rs.getString("Attend_Status"));
				a1.setDate(rs.getString("Date"));
				a1.setSubject(rs.getString("Subject_Name"));
				a1.setTeacher(rs.getString("Teacher_Name"));
				list.add(a1);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
}
