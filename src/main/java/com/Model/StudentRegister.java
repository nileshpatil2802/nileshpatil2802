package com.Model;

public class StudentRegister {
	
	// member fields
	
	private String StudentID;
	private String RollNo;
	private String Name;
	private String FatherName;
	private String DOB;
	private String Gender;
	private String Course;
	private String Branch;
	private String Year;
	private String Semester;
	private String MobileNo;
	private String EmailID;
	private String Password;
	private String Address;
	
	public StudentRegister() {
		super();
		// TODO Auto-generated constructor stub
	}

	public StudentRegister(String studentID, String rollNo, String name, String fatherName, String dOB, String gender,
			String course, String branch, String year, String semester, String mobileNo, String emailID, String password, String address) {
		super();
		StudentID = studentID;
		RollNo = rollNo;
		Name = name;
		FatherName = fatherName;
		DOB = dOB;
		Gender = gender;
		Course = course;
		Branch = branch;
		Year = year;
		Semester = semester;
		MobileNo = mobileNo;
		EmailID = emailID;
		Password = password;
		Address=address;		
	}

	public String getStudentID() {
		return StudentID;
	}

	public void setStudentID(String studentID) {
		StudentID = studentID;
	}

	public String getRollNo() {
		return RollNo;
	}

	public void setRollNo(String rollNo) {
		RollNo = rollNo;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getFatherName() {
		return FatherName;
	}

	public void setFatherName(String fatherName) {
		FatherName = fatherName;
	}

	public String getDOB() {
		return DOB;
	}

	public void setDOB(String dOB) {
		DOB = dOB;
	}

	public String getGender() {
		return Gender;
	}

	public void setGender(String gender) {
		Gender = gender;
	}

	public String getCourse() {
		return Course;
	}

	public void setCourse(String course) {
		Course = course;
	}

	public String getBranch() {
		return Branch;
	}

	public void setBranch(String branch) {
		Branch = branch;
	}

	public String getYear() {
		return Year;
	}

	public void setYear(String year) {
		Year = year;
	}

	public String getSemester() {
		return Semester;
	}

	public void setSemester(String semester) {
		Semester = semester;
	}

	public String getMobileNo() {
		return MobileNo;
	}

	public void setMobileNo(String mobileNo) {
		MobileNo = mobileNo;
	}

	public String getEmailID() {
		return EmailID;
	}

	public void setEmailID(String emailID) {
		EmailID = emailID;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}

	@Override
	public String toString() {
		return "StudentRegister [StudentID=" + StudentID + ", RollNo=" + RollNo + ", Name=" + Name + ", FatherName="
				+ FatherName + ", DOB=" + DOB + ", Gender=" + Gender + ", Course=" + Course + ", Branch=" + Branch
				+ ", Year=" + Year + ", Semester=" + Semester + ", MobileNo=" + MobileNo + ", EmailID=" + EmailID
				+ ", Password=" + Password + ", Address=" + Address + "]";
	}
	
	
	
	
	
	
	

	
	
	
	
	
}
