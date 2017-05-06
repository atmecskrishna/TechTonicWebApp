package com.techtalk;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

/**
 * ControllerServlet.java
 * This servlet acts as a page controller for the application, handling all
 * requests from the user.
 * @author www.codejava.net
 */
public class ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private TechTalkDAO techTalkDAO;

	public void init() {
		String jdbcURL = getServletContext().getInitParameter("jdbcURL");
		String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
		String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");

		techTalkDAO = new TechTalkDAO(jdbcURL, jdbcUsername, jdbcPassword);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();

		try {
			switch (action) {
			case "/new":
				showNewForm(request, response);
				break;
			case "/insert":
				insertTechTalk(request, response);
				break;
			case "/insertRequest":
				requestTechTalk(request,response);
				break;
				
			case "/requested":
				requestedTalkList(request, response);
				break;
			case "/delete":
				deleteTechTalk(request, response);
				break;
			case "/edit":
				showEditTechTalk(request, response);
				break;
			case "/update":
				updateTechTalk(request, response);
				break;
			case "/approve":
				approveTechTalk(request, response);
				break;
			case "/requestTalk":
				showRequestForm(request,response);
				break;
			case "/decline":
				declineTechTalk(request,response);
				break;
			default:
				index(request, response);
				break;
			}
		}
		catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}

	private void declineTechTalk(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException 
	{
		int id = Integer.parseInt(request.getParameter("id"));

		TechTalk techtalk = new TechTalk(id);
		techTalkDAO.deleteTechTalk(techtalk);
		response.sendRedirect("list");
		
	}

	private void index(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		HttpSession session = request.getSession(false);
		if (session.getAttribute("user").equals("admin") ){
			
		/*RequestDispatcher dispatcher = request.getRequestDispatcher("admin.jsp");
		dispatcher.forward(request, response);*/
			request.getRequestDispatcher("admin.jsp").forward(request, response);

		}
		else if(session.getAttribute("user").equals(null)){
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		else
		{
			RequestDispatcher dispatcher = request.getRequestDispatcher("user.jsp");
			dispatcher.forward(request, response);
		}
			
	}
	
	private void requestedTalkList(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<TechTalk> listTalks = techTalkDAO.listAllRequestedTalks();
		request.setAttribute("listTalks", listTalks);
		RequestDispatcher dispatcher = request.getRequestDispatcher("RequestedTechTalkList.jsp");
		dispatcher.forward(request, response);
	}

	private void showNewForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("TechTalkForm.jsp");
		dispatcher.forward(request, response);
	}
	
	private void showRequestForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("RequestTechTalk.jsp");
		dispatcher.forward(request, response);
	}

	private void showEditTechTalk(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		TechTalk existingTechTalk = techTalkDAO.getTechTalk(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("EditTechTalk.jsp");
		request.setAttribute("techtalk", existingTechTalk);
		dispatcher.forward(request, response);

	}

	private void insertTechTalk(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		String presentor = request.getParameter("presentor");
		String techTalkDate = request.getParameter("techTalkDate");
		int status = 1;
		TechTalk newTechTalk = new TechTalk(title, description,presentor,techTalkDate,status);
		techTalkDAO.insertTechTalk(newTechTalk);
		response.sendRedirect("list");
	}

	private void requestTechTalk(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		String presentor = request.getParameter("presentor");
		String techTalkDate = request.getParameter("techTalkDate");
		int status =Integer.parseInt(request.getParameter("status"));
		TechTalk newTechTalk = new TechTalk(title, description,presentor,techTalkDate,status);
		techTalkDAO.insertTechTalk(newTechTalk);
		response.sendRedirect("list");
	}
	private void updateTechTalk(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		String presentor = request.getParameter("presentor");
		String techTalkDate = request.getParameter("techTalkDate");
		int status = Integer.parseInt(request.getParameter("status"));

		TechTalk techtalk = new TechTalk(id, title, description,presentor,techTalkDate, status);
		techTalkDAO.updateTechTalk(techtalk);
		response.sendRedirect("list");
	}
	
	private void approveTechTalk(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
/*		String title = request.getParameter("title");
		String description = request.getParameter("description");
		String presentor = request.getParameter("presentor");
		String techTalkDate = request.getParameter("techTalkDate");
		int status = Integer.parseInt(request.getParameter("status"));
*/
		/*TechTalk techtalk = new TechTalk(id, title, description,presentor,techTalkDate, status);*/
		techTalkDAO.approveTechTalk(id);
		response.sendRedirect("list");
	}

	private void deleteTechTalk(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));

		TechTalk techtalk = new TechTalk(id);
		techTalkDAO.deleteTechTalk(techtalk);
		response.sendRedirect("list");

	}

}
