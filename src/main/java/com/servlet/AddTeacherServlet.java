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
import com.Model.AddTeacher;


@WebServlet("/AddTeacherServlet")
public class AddTeacherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		
		String id=request.getParameter("teacher_id");
		String name=request.getParameter("name");
		String mobileNo=request.getParameter("mobile_no");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		//System.out.println("Get Data By Request Parameter :"+id+""+name+""+mobileNo+""+email+""+password)
		AddTeacher adt=new AddTeacher();
		adt.setTeacherID(id);
		adt.setTeacherName(name);
		adt.setMobileNo(mobileNo);
		adt.setEmailID(email);
		adt.setPassword(password);
		
		//System.out.println("Get Data From Model Class  :"+adt.getEmailID()+""+adt.getMobileNo()+""+adt.getPassword()+""+adt.getTeacherID()+""+adt.getTeacherName());
		
		TeacherDAO dao=new TeacherDAO(DBConnect.getConn());
		boolean f=dao.TeacherRegister(adt);
		System.out.println(f);
		request.setAttribute("user", f);
		HttpSession session;
		if(f) {
			System.out.println("This is True");
			session=request.getSession();
			session.setAttribute("msg", "Teacher Added Successfully...");
			request.getRequestDispatcher("AddTeacher.jsp").forward(request,response);
		}else {
			session=request.getSession();
			session.setAttribute("msg","Teacher Added Not Successfully Please Try Again...!");
			request.getRequestDispatcher("AddTeacher.jsp").forward(request,response);
		}
		
	}

}
