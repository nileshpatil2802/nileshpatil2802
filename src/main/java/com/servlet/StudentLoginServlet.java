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


@WebServlet("/StudentLoginServlet")
public class StudentLoginServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		
//		System.out.println(email);
//		System.out.println(pass);
		
		
		StudentRegister sr=new StudentRegister();
		sr.setEmailID(email);
		sr.setPassword(pass);
		
//		System.out.println(sr.getEmailID());
//		System.out.println(sr.getPassword());
		
		StudentDAO dao=new StudentDAO(DBConnect.getConn());
		StudentRegister sr1=dao.StudentLogin(sr);
		System.out.println(sr1);
		HttpSession session;
		if(sr1 != null) {
			
			session=request.getSession();
			session.setAttribute("student", sr1);
			System.out.println("Hiii");
			session.setAttribute("msg","Login Successfully");
			response.sendRedirect("StudentPanel.jsp");
			
		}else {
			session=request.getSession();
			session.setAttribute("msg", "Login Failed");
			response.sendRedirect("Login.jsp");
		}
	}

}
