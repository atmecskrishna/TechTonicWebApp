package com.users;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

/**
 * Servlet implementation class ForgotPassword
 */
@WebServlet("/ForgotPassword")
public class ForgotPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForgotPassword() {
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
		// TODO Auto-generated method stub
		User user=null;
		String emailId=request.getParameter("emailId");
		
		
		/*if(emailId=="")
		{
			//request.setAttribute("info","username Or Password is Not Entered ...");
			
			request.getRequestDispatcher("login.jsp").forward(request, response);

		}

		else{

			if(ValidUser.isEmailExist(emailId))
			{
				HttpSession session=request.getSession();
				Connection connection= GetConnection.getConnection();
				try {
					user=GetUser.getUser(emailId);
					System.out.println(user);
					session.setAttribute("email",user.getEmailId());
					System.out.println(user.getEmailId());
					String randomPwd = ValidUser.getSaltString();
					PreparedStatement statement =(PreparedStatement) connection.prepareStatement("update techtalkusers set password=? where email=?");
					statement.setString(1, randomPwd);
					statement.setString(2, emailId);
					int number=statement.executeUpdate();
					if(number == 1)
						request.setAttribute("message","SuccessFully updated.");
					String to=emailId;  
				    String subject="Your new Password is";  
				    String msg="Your new password is:  "+randomPwd;  
				          
				    Mailer.send(to, subject, msg);  
			
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			}
			else
				
			response.sendRedirect("login.jsp");
		}*/

	}


}
