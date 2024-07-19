package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import com.Model.StudentRegister;

public class StudentDAO {
	private Connection conn;

	public StudentDAO(Connection conn) {
		super();
		this.conn = conn;
	}

	public StudentRegister StudentLogin(StudentRegister sr) {
		StudentRegister slm = null;

		String query = "select * from AddStudent where EmailID=? and Password=?";
		try {
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, sr.getEmailID());
			ps.setString(2, sr.getPassword());

			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				slm = new StudentRegister();
				slm.setEmailID(rs.getString("EmailID"));
				slm.setPassword(rs.getString("Password"));
				slm.setStudentID(rs.getString("Student_ID"));
				slm.setName(rs.getString("Name"));
				slm.setRollNo(rs.getString("RollNO"));
				slm.setFatherName(rs.getString("FatherName"));
				slm.setDOB(rs.getString("DOB"));
				slm.setGender(rs.getString("Gender"));
				slm.setCourse(rs.getString("Course"));
				slm.setBranch(rs.getString("Branch"));
				slm.setYear(rs.getString("Year"));
				slm.setSemester(rs.getString("Semester"));
				slm.setMobileNo(rs.getString("MobileNo"));
				slm.setAddress(rs.getString("address"));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return slm;
	}

	public Boolean PasswordReset1(StudentRegister sr) {
		boolean f = false;
		String query = "update AddStudent set Password=? where EmailID=?";
		try {
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, sr.getPassword());
			ps.setString(2, sr.getEmailID());

			int i = ps.executeUpdate();

			if (i > 1) {
				f = true;

			} else {

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return f;
	}

	public Boolean AddStudent(StudentRegister sr) {
		boolean f = false;

		String query ="insert into AddStudent(Student_ID,RollNO,Name,FatherName,DOB,Gender,Course,Branch,Year,Semester,MobileNo,EmailID,Password,Address) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, sr.getStudentID());
			ps.setString(2, sr.getRollNo());
			ps.setString(3, sr.getName());
			ps.setString(4, sr.getFatherName());
			ps.setString(5, sr.getDOB());
			ps.setString(6, sr.getGender());
			ps.setString(7, sr.getCourse());
			ps.setString(8, sr.getBranch());
			ps.setString(9, sr.getYear());
			ps.setString(10, sr.getSemester());
			ps.setString(11, sr.getMobileNo());
			ps.setString(12, sr.getEmailID());
			ps.setString(13, sr.getPassword());
			ps.setString(14, sr.getAddress());

			int i = ps.executeUpdate();

			if (i > 0) {
				f = true;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return f;
	}

	public List<StudentRegister> DatabasePrint() {

		List<StudentRegister> list = new ArrayList<>();

		String query = "select * from AddStudent";
		try {
			PreparedStatement ps = conn.prepareStatement(query);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				StudentRegister sr1 = new StudentRegister();
				sr1 = new StudentRegister();
				sr1.setStudentID(rs.getString("Student_ID"));
				sr1.setRollNo(rs.getString("RollNO"));
				sr1.setName(rs.getString("Name"));
				sr1.setFatherName(rs.getString("FatherName"));
				sr1.setDOB(rs.getString("DOB"));
				sr1.setGender(rs.getString("Gender"));
				sr1.setCourse(rs.getString("Course"));
				sr1.setBranch(rs.getString("Branch"));
				sr1.setYear(rs.getString("Year"));
				sr1.setSemester(rs.getString("Semester"));
				sr1.setMobileNo(rs.getString("MobileNo"));
				sr1.setAddress(rs.getString("address"));
				sr1.setEmailID(rs.getString("EmailID"));
				sr1.setPassword(rs.getString("Password"));
				list.add(sr1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
	}

	public boolean StudentDetailUpdate(StudentRegister sr) {

		boolean f = false;
		String query = "UPDATE AddStudent SET Student_ID=?, RollNO=?, Name=?, FatherName=?, DOB=?, Course=?, Year=?, Semester=?, MobileNo=?, Password=? ,  address=? WHERE EmailID=? ";
		try {
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, sr.getStudentID());
			ps.setString(2, sr.getRollNo());
			ps.setString(3, sr.getName());
			ps.setString(4, sr.getFatherName());
			ps.setString(5, sr.getDOB());
			ps.setString(6, sr.getCourse());
			ps.setString(7, sr.getYear());
			ps.setString(8, sr.getSemester());
			ps.setString(9, sr.getMobileNo());
			ps.setString(10, sr.getPassword());
			ps.setString(11, sr.getAddress());
			ps.setString(12, sr.getEmailID());

			int i = ps.executeUpdate();
			System.out.println("Value of i is : " + i);

			if (i > 0) {
				f = true;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return f;
	}
	public boolean DataDelete(StudentRegister sr) {
		boolean f=false;
		String query="delete from AddStudent where EmailID=?";
		try {
			PreparedStatement ps=conn.prepareStatement(query);
			ps.setString(1,sr.getEmailID());
			int i=ps.executeUpdate();
			if(i > 0) {
				f=true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return f;
		
	}
	public StudentRegister getProfile(String Email){
		StudentRegister sr1=new StudentRegister();
		String query="select * from AddStudent where EmailID=?";
		try {
			PreparedStatement ps=conn.prepareStatement(query);
			ps.setString(1, Email);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				
				sr1=new StudentRegister();
				sr1.setStudentID(rs.getString("Student_ID"));
				sr1.setRollNo(rs.getString("RollNO"));
				sr1.setName(rs.getString("Name"));
				sr1.setFatherName(rs.getString("FatherName"));
				sr1.setDOB(rs.getString("DOB"));
				sr1.setGender(rs.getString("Gender"));
				sr1.setCourse(rs.getString("Course"));
				sr1.setBranch(rs.getString("Branch"));
				sr1.setYear(rs.getString("Year"));
				sr1.setSemester(rs.getString("Semester"));
				sr1.setMobileNo(rs.getString("MobileNo"));
				sr1.setAddress(rs.getString("address"));
				sr1.setEmailID(rs.getString("EmailID"));
				sr1.setPassword(rs.getString("Password"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sr1;
	}
	
	

}
