package com.jsl.queryClass;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.jsl.common.MySqlConnection;
import com.mysql.jdbc.PreparedStatement;


public class LoginQuery {
	
	public String login(String fName, String pw){
		int count=0;
		String sts="false"; //if username and pw already exist, sts must be true else false
		
		String sql = "SELECT * FROM login_det lg WHERE  lg.username = ? AND lg.password =?";
		try {
		    PreparedStatement statement = (PreparedStatement)MySqlConnection.getInstance().connect().prepareStatement(sql);
	 	    statement.setString(1, fName);
		    statement.setString(2, pw);
		    ResultSet res = (ResultSet) statement.executeQuery();
		    System.out.println(res);
		    while (res.next()){
		    	count++;				 				  
			}
		    if(count>0){
		    	sts="true";
		    }
		} catch (SQLException e) {
		    e.printStackTrace();
		} finally {
			MySqlConnection.getInstance().disconnect();
		}
		return sts;
	}
	
	
	public String signUp(String fName, String pw, String stus) throws ClassNotFoundException{
		String insertSQL = "insert into login_det(userName,password,user_status) values(?,?,?)";
		
		try {
		    PreparedStatement statement = (PreparedStatement)MySqlConnection.getInstance().connect().prepareStatement(insertSQL);
		    statement.setString(1, fName);
		    statement.setString(2, pw);
		    statement.setString(3, stus);
		    statement.executeUpdate();
		    
		} catch (SQLException e) {
		    e.printStackTrace();
		} finally {
			MySqlConnection.getInstance().disconnect();
		}
		return null;
	}

}
