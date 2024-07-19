package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.Dao.StudentDAO;
import com.Model.StudentRegister;

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
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
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String address = request.getParameter("address");

		// System.out.println(id+"\n"+rollNo+"\n"+name+"\n"+fatherName+"\n"+dob+"\n"+gender+"\n"+course+"\n"+branch+"\n"+year+"\n"+semester+"\n"+mobileNo+"\n
		// "+email+"\n "+password+"\n "+address);

		StudentRegister sr = new StudentRegister(id, rollNo, name, fatherName, dob, gender, course, branch, year, semester, mobileNo, email, password, address);
		
		
		boolean b = dao.StudentDetailUpdate(sr);
		System.out.println("Value of B is : " + b);
		HttpSession session;
		if (b) {
			System.out.println("Your are in the block of b");
			session = request.getSession();
			session.setAttribute("msg", "Student Data Update Successfully");
			request.getRequestDispatcher("StudentEditDetail.jsp").forward(request, response);
		} else {
			System.out.println("This is Last Else");
			session = request.getSession();
			session.setAttribute("msg", "Data Updation Failed Try Again...!");
			request.getRequestDispatcher("StudentEditDetail.jsp").forward(request, response);
		}

	}

}
