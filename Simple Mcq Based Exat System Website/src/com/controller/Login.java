package com.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.LoginCustomer;
import com.dao.LoginDao;
import com.model.LoginPojo;
import com.model.RegisterPojo;

/**
 * Servlet implementation class Login
 */
/**
 * @author Sanjay Kumar Das
 *
 *         Date-05/08/2020
 *
 *         Login Controller Class To Fetch Data From Client(Log in Data Will be
 *         Fetch By There Name)
 *
 */
@WebServlet("/com.controller.Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String email=request.getParameter("Username");
		String passWord=request.getParameter("Password");
		
		LoginPojo login=new LoginPojo();
		login.setEmail(email);
		login.setPassWord(passWord);
		
		RegisterPojo register=new RegisterPojo();
		register.setEmail(email);
		register.setPassword(passWord);
		
		if(email.equals("Sanjay@gmail.com") && passWord.equals("Sanjay1997"))
		{
//			response.sendRedirect("Admin/admin.jsp?Success");
			int check=0;
			try {
				check=LoginDao.loginAdmin(login);
				if(check>0)
				{
					HttpSession session=request.getSession();
					session.setAttribute("Email", email);
			     	response.sendRedirect("Admin/admin.jsp?Succesfully Enter To Admin Page"); 
				}
				else
    			{
					response.sendRedirect("login.jsp?Wrong Email and Password");
					}
			} catch (ClassNotFoundException e) {
							e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		}
		else
		{
			int check=0;
			try {
				check=LoginCustomer.loginCustomer(register);
				if(check>0)
				{
					HttpSession session=request.getSession();
					session.setAttribute("Email", email);
					response.sendRedirect("home.jsp?Well To Home Page");
				}
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
	}

}
