package com.Model;

public class AttendanceModel {

		private String Subject;
		private String teacher;
		private String id;
		private String rollNo;
		private String sName;
		private String fName;
		private String sStatus;
		private String date;
		/**
		 * 
		 */
		public AttendanceModel() {
			super();
			// TODO Auto-generated constructor stub
		}
		/**
		 * @param subject
		 * @param teacher
		 * @param id
		 * @param rollNo
		 * @param sName
		 * @param fName
		 * @param sStatus
		 * @param date
		 */
		public AttendanceModel(String subject, String teacher, String id, String rollNo, String sName, String fName,
				String sStatus, String date) {
			super();
			Subject = subject;
			this.teacher = teacher;
			this.id = id;
			this.rollNo = rollNo;
			this.sName = sName;
			this.fName = fName;
			this.sStatus = sStatus;
			this.date = date;
		}
		public String getSubject() {
			return Subject;
		}
		public void setSubject(String subject) {
			Subject = subject;
		}
		public String getTeacher() {
			return teacher;
		}
		public void setTeacher(String teacher) {
			this.teacher = teacher;
		}
		public String getId() {
			return id;
		}
		public void setId(String id) {
			this.id = id;
		}
		public String getRollNo() {
			return rollNo;
		}
		public void setRollNo(String rollNo) {
			this.rollNo = rollNo;
		}
		public String getsName() {
			return sName;
		}
		public void setsName(String sName) {
			this.sName = sName;
		}
		public String getfName() {
			return fName;
		}
		public void setfName(String fName) {
			this.fName = fName;
		}
		public String getsStatus() {
			return sStatus;
		}
		public void setsStatus(String sStatus) {
			this.sStatus = sStatus;
		}
		public String getDate() {
			return date;
		}
		public void setDate(String date) {
			this.date = date;
		}
		@Override
		public String toString() {
			return "AttendanceModel [Subject=" + Subject + ", teacher=" + teacher + ", id=" + id + ", rollNo=" + rollNo
					+ ", sName=" + sName + ", fName=" + fName + ", sStatus=" + sStatus + ", date=" + date + "]";
		}
		
		
}
