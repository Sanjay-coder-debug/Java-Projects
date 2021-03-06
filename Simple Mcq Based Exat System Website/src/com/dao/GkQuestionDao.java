package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.connection.ConnectionClass;
import com.model.GkQuestionPojo;

/**
 * @author Sanjay Kumar Das
 *
 */
public class GkQuestionDao {
      
	public static int createQuestion(GkQuestionPojo add2) throws ClassNotFoundException, SQLException
    {
  	  
  	  Connection con=ConnectionClass.createConnection();
  	  String qry="insert into GkQuestion(SerialNo,Question,Option1,Option2,Option3,Option4,Answer)values(?,?,?,?,?,?,?)";
  	  PreparedStatement pst=con.prepareStatement(qry);
  	  pst.setString(1, add2.getSerialNo());
  	  pst.setString(2, add2.getQuestion());
  	  pst.setString(3, add2.getOption1());
  	  pst.setString(4, add2.getOption2());
  	  pst.setString(5, add2.getOption3());
  	  pst.setString(6, add2.getOption4());
  	  pst.setString(7, add2.getAnswer());
  	  
  	  int rs=pst.executeUpdate();
		   
		   if(rs>0)
		   {
			   rs=1;
		   }
  	  
		return rs;
  	  
    }
}
