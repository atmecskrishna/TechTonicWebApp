package com.users;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ValidUser {

	public static boolean  isUSerExist(String userName,String password)
	{
		Connection connection=GetConnection.getConnection();
		try {
			
			ResultSet set=connection.createStatement().executeQuery("select * from techtalkusers where username='"+userName+"' and password='"+password+"'");
			 
			if(set!= null)
			 return true;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	} 

}
