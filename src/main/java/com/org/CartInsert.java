package com.org;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/CartInsert")
public class CartInsert extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int p_id=Integer.parseInt(request.getParameter("pid"));
		HttpSession s=request.getSession();
		String cust_id=s.getAttribute("cust_id").toString();
		
		HttpSession s1=request.getSession();
		s1.setAttribute("p_id", p_id);

		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/task1","root","root");
			
			Statement stat=conn.createStatement();
			
			stat.executeUpdate("insert into cart(p_id,cust_id) values('"+p_id+"','"+cust_id+"')");
						
			response.sendRedirect("cart-details.jsp");

		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
