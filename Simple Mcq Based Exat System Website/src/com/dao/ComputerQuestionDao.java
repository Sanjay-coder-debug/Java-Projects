package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.connection.ConnectionClass;
import com.model.ComputerQuestionPojo;


public class ComputerQuestionDao {

	
	public static int createQuestion(ComputerQuestionPojo add1) throws ClassNotFoundException, SQLException
    {
  	  Connection con=ConnectionClass.createConnection();
  	 String qry="insert into ComputerQuestion(SerialNo,Question,Option1,Option2,Option3,Option4,Answer)values(?,?,?,?,?,?,?)";
     PreparedStatement pst=con.prepareStatement(qry);
	  pst.setString(1, add1.getSerialNo());
	  pst.setString(2, add1.getQuestion());
	  pst.setString(3, add1.getOption1());
	  pst.setString(4, add1.getOption2());
	  pst.setString(5, add1.getOption3());
	  pst.setString(6, add1.getOption4());
	  pst.setString(7, add1.getAnswer());
	  
	  int rs=pst.executeUpdate();
	   
	   if(rs>0)
	   {
		   rs=1;
	   }
	return rs;
	
}
}

