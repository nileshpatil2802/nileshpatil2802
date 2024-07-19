package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.Dao.AdminDAO;
import com.Dao.StudentDAO;
import com.Dao.TeacherDAO;
import com.Model.AdminRegister;
import com.Model.StudentRegister;
import com.Model.TeacherRegister;


@WebServlet("/ResetPasswordServlet")
public class ResetPasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		String rPass=request.getParameter("rPass");
		
		
		
		
		if(pass.equals(rPass)) {
			AdminRegister ar=new AdminRegister();
			
			ar.setPass(rPass);
			ar.setEmail(email);
			
			StudentRegister sr=new StudentRegister();
			sr.setPassword(rPass);
			sr.setEmailID(email);
			
			TeacherRegister tr=new TeacherRegister();
			tr.setPassword(rPass);
			tr.setEmailID(email);
			
			
			AdminDAO dao=new AdminDAO(DBConnect.getConn());
			boolean f=(boolean) dao.PasswordReset(ar);
			System.out.println(f);
			
			
			StudentDAO dao1=new StudentDAO(DBConnect.getConn());
			boolean f1=dao1.PasswordReset1(sr);
			
			TeacherDAO dao2=new TeacherDAO(DBConnect.getConn());
			boolean f2=dao2.ResetPassword2(tr);
				
			System.out.println(f2);
			
			
			HttpSession session=request.getSession();;
			if(f || f1 || f2) {
				System.out.println("These f is inside "+f);
				session.setAttribute("msg", "Password Reset Successfully");
				request.getRequestDispatcher("Login.jsp").forward(request, response);
		    
				return;
			}else {
			
				session.setAttribute("msg", "Failed to Reset password");
				request.getRequestDispatcher("ChangePassword.jsp").forward(request, response);
		   
				return;
			}
			
		}else {
			//System.out.print(email+""+pass+""+rPass);
			request.getRequestDispatcher("ChangePassword.jsp").forward(request, response);
	    
			return;
		}
		
		
	}

}
