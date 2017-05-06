package com.users;
import java.sql.Connection;
import java.sql.DriverManager;

public class GetConnection {
	private static Connection connection=null;
	public static Connection getConnection()
	{
		try{  
			if(connection == null)
			{
				Class.forName("com.mysql.jdbc.Driver");  
				connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/techtalk?useSSL=true","root","root");
				

			}
		}
		catch(Exception e){ System.out.println(e);}  
		return connection;
	}  

}
