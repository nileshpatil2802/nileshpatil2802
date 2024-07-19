package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.Dao.StudentDAO;
import com.Model.StudentRegister;

@WebServlet("/AddStudentServletByTeacher")
public class AddStudentServletByTeacher extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private StudentDAO dao = null;

	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method
		dao = new StudentDAO(DBConnect.getConn());

		super.init();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		String id = request.getParameter("student_id");
		String rollNo = request.getParameter("roll_no");
		String name = request.getParameter("name");
		String fatherName = request.getParameter("father_name");
		String dob = request.getParameter("dob");
		String gender = request.getParameter("gender");
		String course = request.getParameter("course");
		String branch = request.getParameter("branch");
		String year = request.getParameter("year");
		String semester = request.getParameter("semester");
		String mobileNo = request.getParameter("mobile_no");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String password = request.getParameter("password");

//		System.out.println("Print the form send data " + id + "\n" + rollNo + "\n" + name + "\n" + fatherName + "\n"
//				+ dob + "\n" + gender + "\n" + course + "\n" + branch + "\n" + year + "\n" + semester + "\n" + mobileNo
//				+ "\n"+email + "\n " + password + "\n " + address); get the data successfully

		StudentRegister sr = new StudentRegister(id, rollNo, name, fatherName, dob, gender, course, branch, year,
				semester, mobileNo, email, password, address);

//		 System.out.println("This data get for Module class"+sr.getStudentID() + "\n"
//		 + sr.getRollNo() + "\n" + sr.getName() + "\n" + sr.getFatherName() + "\n"
//		 + sr.getDOB() + "\n"+sr.getGender()+"\n"+sr.getCourse()+"\n"+sr.getBranch()+"\n"+sr.getYear()+"\n"+sr.getSemester()+"\n"+sr.getMobileNo()+"\n"+sr.getEmailID()+"\n"+sr.getPassword()+"\n"+sr.getAddress());
		// The data get in module class successfully
		boolean f = dao.AddStudent(sr);
		System.out.println(f);
		// StudentDAO dao1 = new StudentDAO(DBConnect.getConn());

		HttpSession session;
		if (f) {
			session = request.getSession();

			session.setAttribute("msg", "Student Added Successfully...");

			request.getRequestDispatcher("AddStudentByTeacher.jsp").forward(request, response);
		} else {
			//System.out.println("This is Last Else");
			session = request.getSession();
			session.setAttribute("msg", "Student Data Not Added Pleasee Try Again...!");
			request.getRequestDispatcher("AddStudentByTeacher.jsp").forward(request, response);
		}
	}

}
