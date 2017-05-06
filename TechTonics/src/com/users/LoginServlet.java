package com.users;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public LoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User user=null;
		String userName=request.getParameter("userName");
		String password=request.getParameter("password");
		
		if(userName=="" || password == "")
		{
			//request.setAttribute("info","username Or Password is Not Entered ...");
			
			request.getRequestDispatcher("login.jsp").forward(request, response);

		}

		else{

			if(ValidUser.isUSerExist(userName, password))
			{
				HttpSession session=request.getSession();
				try {
					user=GetUser.getUser(userName);
					System.out.println(user);
					session.setAttribute("user",user.getUserName());
					if(userName.equals("admin") && password.equals("admin") )
					{
						request.getRequestDispatcher("admin.jsp").forward(request, response);
					}
					else
					{
						
						session.setAttribute("user",userName);
						/*  System.out.println(email);*/
						request.getRequestDispatcher("user.jsp").forward(request, response);
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			}
			else
				request.setAttribute("msg","User Not Exist.. Please Register First.");
			response.sendRedirect("login.jsp");
		}

	}

}
