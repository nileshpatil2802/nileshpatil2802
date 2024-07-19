package com.Model;

public class TeacherRegister {

		private String TeacherID;
		private String TeacherName;
		private String MobileNo;
		private String EmailID;
		private String Password;
		
		public TeacherRegister() {
			super();
			// TODO Auto-generated constructor stub
		}

		public TeacherRegister(String teacherID, String teacherName, String mobileNo, String emailID, String password) {
			super();
			TeacherID = teacherID;
			TeacherName = teacherName;
			MobileNo = mobileNo;
			EmailID = emailID;
			Password = password;
		}

		public String getTeacherID() {
			return TeacherID;
		}

		public void setTeacherID(String teacherID) {
			TeacherID = teacherID;
		}

		public String getTeacherName() {
			return TeacherName;
		}

		public void setTeacherName(String teacherName) {
			TeacherName = teacherName;
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

		@Override
		public String toString() {
			return "TeacherRegister [TeacherID=" + TeacherID + ", TeacherName=" + TeacherName + ", MobileNo=" + MobileNo
					+ ", EmailID=" + EmailID + ", Password=" + Password + "]";
		}
		
		
}
