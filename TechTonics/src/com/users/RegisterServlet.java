package com.users;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
	String name=request.getParameter("userName");
	String email=request.getParameter("emailId");
	String password=request.getParameter("password");
	int role = Integer.parseInt(request.getParameter("role"));
	System.out.println(name + email + password);
	Connection connection= GetConnection.getConnection();
	System.out.println("before try");

	try {
		  ResultSet resultset = connection.createStatement().executeQuery("select * from techtalkusers where email = '"+email+"'");
		  System.out.println("in before check");
		if(!resultset.next()){
			System.out.println("in check result set");
			PreparedStatement statement=(PreparedStatement) connection.prepareStatement("insert into techtalkusers (username,password,email,role) values(?,?,?,?)");
			System.out.println("in after check");
			statement.setString(1, name);
			statement.setString(2, password);
			statement.setString(3, email);
			statement.setInt(4, role);
			int number=statement.executeUpdate();
			if(number == 1)
				request.setAttribute("message","SuccessFully Registered.");

		}
		else{
			request.setAttribute("Message","Email Id already Exist...");
		}
			response.sendRedirect("login.jsp");
		
	}
	catch (SQLException e1) {
		
		e1.printStackTrace();
	}

   
}


}
