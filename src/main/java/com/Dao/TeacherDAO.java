package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.Model.AddTeacher;
import com.Model.TeacherRegister;

public class TeacherDAO {
	private Connection conn;

	public TeacherDAO(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public TeacherRegister TeacherLogin(TeacherRegister tr) {
		TeacherRegister tr1=null;
		
		String query="select * from AddTeacher where EmailID=? and Password=?";
		try {
			PreparedStatement ps=conn.prepareStatement(query);
			ps.setString(1, tr.getEmailID());
			ps.setString(2, tr.getPassword());
			
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				tr1=new TeacherRegister();
				tr1.setEmailID(rs.getString("EmailID"));
				tr1.setPassword(rs.getString("Password"));
				tr1.setMobileNo(rs.getString("MobileNo"));
				tr1.setTeacherID(rs.getString("TeacherID"));
				tr1.setTeacherName(rs.getString("TeacherName"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return tr1;
	}
	public Boolean ResetPassword2(TeacherRegister tr) {
		boolean f=false;
		
		String query="update AddTeacher set Password=? where EmailID=?";
		PreparedStatement ps;
		try {
			ps = conn.prepareStatement(query);
			ps.setString(1, tr.getPassword());
			ps.setString(2,tr.getEmailID());
			
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}else {
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return f;
	}
	public Boolean TeacherRegister(AddTeacher at) {
		boolean f=false;
		String query="insert into AddTeacher(TeacherID,TeacherName,MobileNo,EmailID,Password) values(?,?,?,?,?)";      
		try {
			PreparedStatement ps=conn.prepareStatement(query);
			ps.setString(1,at.getTeacherID());
			ps.setString(2, at.getTeacherName());
			ps.setString(3,at.getMobileNo());
			ps.setString(4, at.getEmailID());
			ps.setString(5,at.getPassword());
			
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return f;
	}
	public List<TeacherRegister> TeacherProfile(){
		List<TeacherRegister> list=new ArrayList<>();
		
		String query="select * from AddTeacher";
		try {
			PreparedStatement ps=conn.prepareStatement(query);
			
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				TeacherRegister tr=new TeacherRegister();
				tr=new TeacherRegister();
				tr.setTeacherID(rs.getString("TeacherID"));
				tr.setTeacherName(rs.getString("TeacherID"));
				tr.setMobileNo(rs.getString("MobileNo"));
				tr.setEmailID(rs.getString("EmailID"));
				tr.setPassword(rs.getString("Password"));
				list.add(tr);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	public List<TeacherRegister> getTeacherDatabase(){
		List<TeacherRegister> list=new ArrayList<>();
		String query="select *  from AddTeacher";
		try {
			PreparedStatement ps=conn.prepareStatement(query);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				TeacherRegister tr=new TeacherRegister();
//				tr=new TeacherRegister();
				tr.setTeacherID(rs.getString("TeacherID"));
				tr.setTeacherName(rs.getString("TeacherName"));
				tr.setMobileNo(rs.getString("MobileNo"));
				tr.setEmailID(rs.getString("EmailID"));
				list.add(tr);
			}
			rs.close();
			ps.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	public boolean TeacherAccountDelete(TeacherRegister sr) {
		boolean f=false;
		String query="delete from AddTeacher where EmailID=?";
		try {
			PreparedStatement ps=conn.prepareStatement(query);
			ps.setString(1,sr.getEmailID() );
			
			int i=ps.executeUpdate();
			if(i>0) {
				f=true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return f;
	}
}

