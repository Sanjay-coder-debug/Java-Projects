package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.connection.ConnectionClass;
import com.model.MathQuestionPojo;

/**
 * @author Sanjay Kumar Das
 *
 *         Logic for Add Question To Database
 *
 *
 */
public class MathQuestionDao {

	      public static int createQuestion(MathQuestionPojo add) throws ClassNotFoundException, SQLException
	      {
	    	  
	    	  Connection con=ConnectionClass.createConnection();
	    	  String qry="insert into Question(SerialNo,Question,Option1,Option2,Option3,Option4,Answer)values(?,?,?,?,?,?,?)";
	    	  PreparedStatement pst=con.prepareStatement(qry);
	    	  pst.setString(1, add.getSerialNo());
	    	  pst.setString(2, add.getQuestion());
	    	  pst.setString(3, add.getOption1());
	    	  pst.setString(4, add.getOption2());
	    	  pst.setString(5, add.getOption3());
	    	  pst.setString(6, add.getOption4());
	    	  pst.setString(7, add.getAnswer());
	    	  
	    	  int rs=pst.executeUpdate();
			   
			   if(rs>0)
			   {
				   rs=1;
			   }
	    	  
			return rs;
	    	  
	      }
}
