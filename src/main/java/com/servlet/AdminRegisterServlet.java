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
import com.Dao.AdminDAO;
import com.Model.AdminRegister;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/AdmRegServlet")
public class AdminRegisterServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		String rpass=request.getParameter("rpass");
		
		
		
		AdminRegister ad=new AdminRegister();
		ad.setName(name);
		ad.setEmail(email);
		ad.setPass(pass);
		
		
		
		
		AdminDAO dao=new AdminDAO(DBConnect.getConn());
		boolean f=dao.adminRegister(ad);
		
		HttpSession session;
		if(f) {
			session=request.getSession();
			session.setAttribute("msg","Admin Registration Successfully...");
			response.sendRedirect("Login.jsp");
		}else {
			session=request.getSession();
			session.setAttribute("msg","Admin Registration is Failed Please Try Again...!");
			response.sendRedirect("AdminRegister.jsp");
		}
		
	}


}
