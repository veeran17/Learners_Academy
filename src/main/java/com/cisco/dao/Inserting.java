package com.cisco.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

public class Inserting {
	public boolean Storing (String Subjects, String Class, String Teacher) {
		Connection con=null;
	    try {
	    	Class.forName("com.mysql.cj.jdbc.Driver");
	        con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/Academy","root","adminroot");
	        String sel="insert into inserting values(?,?,?);";
	        PreparedStatement pst=con.prepareStatement(sel);
	        pst.setString(1, Subjects);
	        pst.setString(2, Class);
	        pst.setString(3, Teacher);
	        Statement st=(Statement)con.createStatement();
	       int RS=pst.executeUpdate();
	        if (RS>0)
		        return true;
	        
	        
	    } catch ( SQLException e) {
	        // TODO Auto-generated catch block
	        e.printStackTrace();
	    }
	    return false;

}
}