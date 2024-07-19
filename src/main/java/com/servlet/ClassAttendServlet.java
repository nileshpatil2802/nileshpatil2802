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
import com.Dao.AttendanceDAO;
import com.Model.AttendanceModel;

@WebServlet("/ClassAttendServlet")
public class ClassAttendServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		String sub=request.getParameter("subject");
		String teacher=request.getParameter("teacher");
		String id=request.getParameter("id");
		String rollNo=request.getParameter("rollNo");
		String sName=request.getParameter("studentName");
		String fName=request.getParameter("fatherName");
		String aStatus=request.getParameter("attendanceStatus");
		String date=request.getParameter("date");
		
		AttendanceModel am=new AttendanceModel(sub, teacher, id, rollNo, sName, fName, aStatus, date);
		System.out.println(am);
		AttendanceDAO dao=new AttendanceDAO(DBConnect.getConn());
		boolean f=dao.Attendance(am);
		HttpSession session;
		if(f) {
			session=request.getSession();
			session.setAttribute("Add", "Data Added Successfully");
			request.getRequestDispatcher("ClassAttendance.jsp");
		}else {
			session=request.getSession();
			session.setAttribute("Add_Failed", "Data Not Added");
			request.getRequestDispatcher("ClassAttendance.jsp");
		}
		
		
	}

}
