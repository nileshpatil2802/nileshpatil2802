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


@WebServlet("/DeleteDataByCheckBox")
public class DeleteDataByCheckBox extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		
		String email=request.getParameter("email");
		
		StudentRegister sr=new StudentRegister();
		sr.setEmailID(email);
		System.out.println(sr.getEmailID());
		StudentDAO dao=new StudentDAO(DBConnect.getConn());
		
			boolean b=dao.DataDelete(sr);
			System.out.println("Value of b is "+b);
			HttpSession session;
			if(b) {
				session=request.getSession();
				session.setAttribute("msg", "Student Data Deleted Successfully...");
				request.getRequestDispatcher("AddStudentByTeacher.jsp").forward(request, response);;
			}else {
				session=request.getSession();
				session.setAttribute("msg", "Student Data not Deleted Try Again...!");
				request.getRequestDispatcher("AddStudentByTeacher.jsp").forward(request, response);;
			}
			
		
	}
	

}
