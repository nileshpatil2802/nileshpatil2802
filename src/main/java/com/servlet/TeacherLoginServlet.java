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
import com.Dao.TeacherDAO;
import com.Model.TeacherRegister;

@WebServlet("/TeacherLoginServlet")
public class TeacherLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		
		TeacherRegister tr=new TeacherRegister();
		tr.setEmailID(email);
		tr.setPassword(pass);
		
		TeacherDAO dao=new TeacherDAO(DBConnect.getConn());
		TeacherRegister tr1=dao.TeacherLogin(tr);
		System.out.println(tr1);
		
		HttpSession session;
		if(tr1 != null) {
			session=request.getSession();
			session.setAttribute("teacher", tr1);
			session.setAttribute("msg", "Login Successfully...");
			response.sendRedirect("TeacherPanel.jsp");
		}else {
			session=request.getSession();
			session.setAttribute("msg", "Login Failed...");
			response.sendRedirect("Login.jsp");
		}
	}

}
