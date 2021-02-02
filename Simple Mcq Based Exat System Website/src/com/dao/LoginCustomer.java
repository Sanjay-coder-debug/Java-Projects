package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.connection.ConnectionClass;
import com.model.RegisterPojo;

public class LoginCustomer {
             
	
	public static int loginCustomer(RegisterPojo register) throws ClassNotFoundException, SQLException
    {
   	 int status=0;
   	 Connection con=ConnectionClass.createConnection();
   	 String qry="select *from Register where Email=? and password=?";
   	 PreparedStatement pst=con.prepareStatement(qry);
   	 pst.setString(1, register.getEmail());
   	 pst.setString(2, register.getPassword());
   	 
   	 ResultSet rs=pst.executeQuery();
			if (rs.next()) 
			{
				status=1;
			}
	     return status;	 
    }
}
