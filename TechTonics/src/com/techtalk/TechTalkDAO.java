package com.techtalk;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * AbstractDAO.java
 * This DAO class provides CRUD database operations for the table book
 * in the database.
 * @author www.codejava.net
 *
 */
public class TechTalkDAO {
	private static String jdbcURL;
	private static String jdbcUsername;
	private static String jdbcPassword;
	private static Connection jdbcConnection;
	
	public TechTalkDAO(String jdbcURL, String jdbcUsername, String jdbcPassword) {
		this.jdbcURL = jdbcURL;
		this.jdbcUsername = jdbcUsername;
		this.jdbcPassword = jdbcPassword;
	}
	
	protected static void connect() throws SQLException {
		if (jdbcConnection == null || jdbcConnection.isClosed()) {
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				throw new SQLException(e);
			}
			jdbcConnection = DriverManager.getConnection(
										jdbcURL, jdbcUsername, jdbcPassword);
		}
	}
	
	protected static void disconnect() throws SQLException {
		if (jdbcConnection != null && !jdbcConnection.isClosed()) {
			jdbcConnection.close();
		}
	}
	
	public boolean insertTechTalk(TechTalk techtalk) throws SQLException {
		String sql = "INSERT INTO techtonics (title, description,presentor,techTalkDate,status) VALUES (?, ?, ?,?,?)";
		connect();
		
		PreparedStatement statement = jdbcConnection.prepareStatement(sql);
		statement.setString(1, techtalk.getTitle());
		statement.setString(2, techtalk.getDescription());
		statement.setString(3, techtalk.getPresentor());
		statement.setString(4, techtalk.getTechTalkDate());
		statement.setInt(5, techtalk.getStatus());
		
		boolean rowInserted = statement.executeUpdate() > 0;
		statement.close();
		disconnect();
		return rowInserted;
	}
	
	public boolean requestTechTalk(TechTalk techtalk) throws SQLException {
		String sql = "INSERT INTO techtonics (title, description,presentor,techTalkDate,status) VALUES (?, ?, ?,?,?)";
		connect();
		
		PreparedStatement statement = jdbcConnection.prepareStatement(sql);
		statement.setString(1, techtalk.getTitle());
		statement.setString(2, techtalk.getDescription());
		statement.setString(3, techtalk.getPresentor());
		statement.setString(4, techtalk.getTechTalkDate());
		statement.setInt(5, 0);
		
		boolean rowInserted = statement.executeUpdate() > 0;
		statement.close();
		disconnect();
		return rowInserted;
	}
	
	public static List<TechTalk> listAllTalks() throws SQLException {
		List<TechTalk> listTechTalk = new ArrayList<>();
		
		String sql = "SELECT * FROM techtonics WHERE status=1";
		
		connect();
		
		Statement statement = jdbcConnection.createStatement();
		ResultSet resultSet = statement.executeQuery(sql);
		
		while (resultSet.next()) {
			int id = resultSet.getInt("id");
			String title = resultSet.getString("title");
			String presentor = resultSet.getString("presentor");
			String desc = resultSet.getString("description");
			String date = resultSet.getString("techTalkDate");
			int status = resultSet.getInt("status");
			TechTalk techtalk = new TechTalk(id, title, desc,presentor,date,status);
			listTechTalk.add(techtalk);
		}
		
		resultSet.close();
		statement.close();
		
		disconnect();
		
		return listTechTalk;
	}
	
	
	public static List<TechTalk> listAllRequestedTalks() throws SQLException {
		List<TechTalk> listTechTalk = new ArrayList<>();
		
		String sql = "SELECT * FROM techtonics WHERE status=0";
		
		connect();
		
		Statement statement = jdbcConnection.createStatement();
		ResultSet resultSet = statement.executeQuery(sql);
		
		while (resultSet.next()) {
			int id = resultSet.getInt("id");
			String title = resultSet.getString("title");
			String presentor = resultSet.getString("presentor");
			String desc = resultSet.getString("description");
			String date = resultSet.getString("techTalkDate");
			int status = resultSet.getInt("status");
			TechTalk techtalk = new TechTalk(id, title, desc,presentor,date,status);
			listTechTalk.add(techtalk);
		}
		
		resultSet.close();
		statement.close();
		
		disconnect();
		
		return listTechTalk;
	}
	public boolean deleteTechTalk(TechTalk techtalk) throws SQLException {
		String sql = "DELETE FROM techtonics where id = ?";
		
		connect();
		
		PreparedStatement statement = jdbcConnection.prepareStatement(sql);
		statement.setInt(1, techtalk.getId());
		
		boolean rowDeleted = statement.executeUpdate() > 0;
		statement.close();
		disconnect();
		return rowDeleted;		
	}
	
	public boolean updateTechTalk(TechTalk techtalk) throws SQLException {
		String sql = "UPDATE techtonics SET title = ?, description = ?, presentor = ?,techTalkDate=?,status=?";
		sql += " WHERE id = ?";
		connect();
		
		PreparedStatement statement = jdbcConnection.prepareStatement(sql);
		
		statement.setString(1, techtalk.getTitle());
		statement.setString(2, techtalk.getDescription());
		statement.setString(3, techtalk.getPresentor());
		statement.setString(4, techtalk.getTechTalkDate());
		statement.setInt(5, techtalk.getStatus());
		statement.setInt(6, techtalk.getId());
		boolean rowUpdated = statement.executeUpdate() > 0;
		statement.close();
		disconnect();
		return rowUpdated;		
	}
	
	public boolean approveTechTalk(int id) throws SQLException {
		String sql = "UPDATE techtonics SET status = ?";
		sql += " WHERE id = ?";
		connect();
		
		PreparedStatement statement = jdbcConnection.prepareStatement(sql);
	
		statement.setInt(1, 1);
		statement.setInt(2, id);
		
		boolean rowUpdated = statement.executeUpdate() > 0;
		statement.close();
		disconnect();
		return rowUpdated;		
	}
	
	public TechTalk getTechTalk(int id) throws SQLException {
		TechTalk techtalk = null;
		String sql = "SELECT * FROM techtonics WHERE id = ?";
		
		connect();
		
		PreparedStatement statement = jdbcConnection.prepareStatement(sql);
		statement.setInt(1, id);
		
		ResultSet resultSet = statement.executeQuery();
		
		if (resultSet.next()) {
			String title = resultSet.getString("title");
			String description = resultSet.getString("description");
			String presentor = resultSet.getString("presentor");
			String techTalkDate = resultSet.getString("techTalkDate");
			int status = resultSet.getInt("status");
			
			techtalk = new TechTalk(id, title, description, presentor,techTalkDate,status);
		}
		
		resultSet.close();
		statement.close();
		
		return techtalk;
	}
}
