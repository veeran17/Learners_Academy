package com.cisco.web;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Validate {
	
	 public boolean Validation (String UN, String Psw) {
			Connection con=null;
		    try {
		    	Class.forName("com.mysql.cj.jdbc.Driver");
		        con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/Academy","root","adminroot");
		        String sel="select * from admin;";
		        PreparedStatement pst=con.prepareStatement(sel);
		        Statement st=(Statement)con.createStatement();
		        ResultSet RS=pst.executeQuery(sel);
		        if(RS.next()) {
			        //System.out.println(RS.getString("psw"));
			        if (Psw.equals(RS.getString("psw"))) {
			        	return true;
			        }
		        }
		        
		    } catch (ClassNotFoundException | SQLException e) {
		        // TODO Auto-generated catch block
		        e.printStackTrace();
		    }
		    return false;
	 }
 

	 
	 
}

