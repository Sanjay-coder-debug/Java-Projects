package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.connection.ConnectionClass;
import com.model.RegisterPojo;

/**
 * @author Sanjay Kumar Das
 *
 */
public class RegisterDao {

	   public static int registerCustomer(RegisterPojo register) throws ClassNotFoundException, SQLException
	   {
		   
		   Connection con=ConnectionClass.createConnection();
		   String qry="insert into Register(FirstName,LastName,USerName,Email,Gender,Password,Con_Password)values(?,?,?,?,?,?,?)";
		   PreparedStatement pst=con.prepareStatement(qry);
		   pst.setString(1, register.getFirstName());
		   pst.setString(2, register.getLastName());
		   pst.setString(3, register.getUSerName());
		   pst.setString(4, register.getEmail());
		   pst.setString(5, register.getGender());
		   pst.setString(6, register.getPassword());
		   pst.setString(7, register.getCon_Password());
		   
		   int rs=pst.executeUpdate();
		   
		   if(rs>0)
		   {
			   rs=1;
		   }
		   
		return rs;
		   
	   }
	  
}
