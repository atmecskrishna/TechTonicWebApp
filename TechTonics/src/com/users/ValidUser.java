package com.users;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Random;

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
	/*
	public static boolean  isEmailExist(String emailId)
	{
		Connection connection=GetConnection.getConnection();
		try {
			
			ResultSet set=connection.createStatement().executeQuery("select * from techtalkusers where email='"+emailId+"'");
			 
			if(set!= null)
			 return true;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	} 

	protected static String getSaltString() {
        String SALTCHARS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
        StringBuilder salt = new StringBuilder();
        Random rnd = new Random();
        while (salt.length() < 18) { // length of the random string.
            int index = (int) (rnd.nextFloat() * SALTCHARS.length());
            salt.append(SALTCHARS.charAt(index));
        }
        String saltStr = salt.toString();
        return saltStr;

    }*/
}
