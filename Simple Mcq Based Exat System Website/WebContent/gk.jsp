<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.connection.ConnectionClass" %>
   
  
    <jsp:include page="homeHeader.jsp"></jsp:include>
    
    
    <%            
    Connection con=ConnectionClass.createConnection();
    PreparedStatement pst=con.prepareStatement("select *from GkQuestion");
    ResultSet rs=pst.executeQuery();
    out.print("<form action='result2.jsp'  method='post'>");        
    while(rs.next())
    {
 	   %>
              
            <%=rs.getString("SerialNo")%>.<%=rs.getString("Question") %><br>
            <input type="radio" name=<%=rs.getString("Answer") %> value=<%=rs.getString("Option1") %>><%=rs.getString("Option1") %><br>
            <input type="radio" name=<%=rs.getString("Answer") %> value=<%=rs.getString("Option2") %>><%=rs.getString("Option2") %><br>
            <input type="radio" name=<%=rs.getString("Answer") %> value=<%=rs.getString("Option3") %>><%=rs.getString("Option3") %><br>
            <input type="radio" name=<%=rs.getString("Answer") %> value=<%=rs.getString("Option4") %>><%=rs.getString("Option4") %><br>
            
   <%} 
           out.print("<input type='submit' value='submit'>");
           out.print("</form>");
   %>
   
   <jsp:include page="homeFooter.jsp"></jsp:include>