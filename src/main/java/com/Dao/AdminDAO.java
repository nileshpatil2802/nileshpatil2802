package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import com.Model.AdminRegister;

public class AdminDAO {

		private Connection conn;

		public AdminDAO(Connection conn) {
			super();
			this.conn = conn;
		}
		
		public boolean adminRegister(AdminRegister ad) {
			
			boolean f=false;
			
			String query="insert into adminregister (Name,Email,Password) values(?,?,?)";
			try {
				PreparedStatement ps=conn.prepareStatement(query);
				ps.setString(1,ad.getName());
				ps.setString(2, ad.getEmail());
				ps.setString(3, ad.getPass());
				
				
				int i=ps.executeUpdate();
				if(i>0) {
					f=true;
					
					
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return f;
		}
		public AdminRegister AdminLogin(AdminRegister ad) {
			AdminRegister admin=null;
			String query="select * from adminRegister where email=? and password=?";
			try {
				PreparedStatement ps=conn.prepareStatement(query);
				ps.setString(1, ad.getEmail());
				ps.setString(2, ad.getPass());
				
				ResultSet rs=ps.executeQuery();
				if(rs.next()) {
					admin=new AdminRegister();
					admin.setName(rs.getString("Name"));
					admin.setEmail(rs.getString("Email"));
					admin.setPass(rs.getString("Password"));
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return admin;
			
		}
		public Boolean PasswordReset(AdminRegister ar) {
			boolean f=false;
			
			String query="update adminregister set password=? where email=?";
			try 
			
			
			
			{
				PreparedStatement ps=conn.prepareStatement(query);
				ps.setString(1, ar.getPass());
				ps.setString(2, ar.getEmail());
				
				int i=ps.executeUpdate();
				 
				if(i==1) {
					f=true;
					
				}else {
					
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return f;
		}

		public AdminRegister AdminProfile(String name){
			AdminRegister ar=new AdminRegister();
			String query="select * from adminregister where name=?";
			try {
				PreparedStatement ps=conn.prepareStatement(query);
				ps.setString(1,name);
				ResultSet rs=ps.executeQuery();
				if(rs.next()) {
					
					ar.setName(rs.getString("Name"));
					ar.setEmail(rs.getString("Email"));
					ar.setPass(rs.getString("Password"));
					
				}
				
				
				} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return ar;
		}
		
		
}
