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
import com.Dao.TeacherDAO;
import com.Model.TeacherRegister;

@WebServlet("/DeleteTeacherAccount")
public class DeleteTeacherAccount extends HttpServlet {
	private TeacherDAO dao=null;
	
	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		 dao=new TeacherDAO(DBConnect.getConn());
		super.init();
	}
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		
		String email=request.getParameter("email");
		System.out.println("Get email is : "+email);
		
		TeacherRegister tr=new TeacherRegister();
		tr.setEmailID(email);
		
		System.out.println("Model email is : "+tr.getEmailID());
		
		//TeacherDAO dao=new TeacherDAO(DBConnect.getConn());
		boolean b=dao.TeacherAccountDelete(tr);
		HttpSession session;
		if(b) {
			session=request.getSession();
			session.setAttribute("msg","Teacher Deleted Successfully");
			request.getRequestDispatcher("AddTeacher.jsp").forward(request, response);
		}else {
			session=request.getSession();
			session.setAttribute("msg","Teacher Account Delete is Failed Please Try Again...!");
			request.getRequestDispatcher("AddTeacher.jsp").forward(request, response);
		}
		
	}

}
