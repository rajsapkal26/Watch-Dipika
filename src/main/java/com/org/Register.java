package com.org;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Register")
public class Register extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			PrintWriter out=response.getWriter();
			
			String name=request.getParameter("input1");
			String mail=request.getParameter("input2");
			String pass=request.getParameter("input3");
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/task1","root","root");
			
			Statement stat=conn.createStatement();
			
			stat.executeUpdate("insert into register(name,mail,pass) values('"+name+"','"+mail+"','"+pass+"')");

			response.sendRedirect("thank.jsp");
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
