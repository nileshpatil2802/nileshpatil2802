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



@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		
		String email=request.getParameter("aEmail");
		String pass=request.getParameter("aPass");
					
		AdminRegister ad=new AdminRegister();
		ad.setEmail(email);
		ad.setPass(pass);
		
		
		
		AdminDAO dao=new AdminDAO(DBConnect.getConn());
		AdminRegister adm=dao.AdminLogin(ad);
		System.out.println(adm);
		HttpSession session=request.getSession();
		if(adm != null) {
			 
			//	 session=request.getSession();
				 session.setAttribute("admin", adm);
				 session.setAttribute("msg", "Login Successfully");
				 response.sendRedirect("AdminPanel.jsp");
			 
			
		}else {
			
			session.setAttribute("msg", "Login Failed");
			response.sendRedirect("Login.jsp");
		}
	}

}
