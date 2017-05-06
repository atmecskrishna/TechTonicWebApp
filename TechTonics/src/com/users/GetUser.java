package com.users;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

public class GetUser {

	public static User getUser(String userName) throws SQLException
	{
		
		Connection connection=GetConnection.getConnection();
		java.sql.PreparedStatement statement =  connection.prepareStatement("select * from techtalkusers where username ='"+userName+"'");
		
		ResultSet set=statement.executeQuery();
		
		set.next();
		
		User userPojo=new User();
		userPojo.setUserName(set.getString(2));
		System.out.println("after set email");
		userPojo.setEmailId(set.getString(3));
		System.out.println(userPojo);
		return userPojo; 


	}

}
