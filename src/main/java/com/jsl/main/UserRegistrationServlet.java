package com.jsl.main;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.omg.CORBA.PRIVATE_MEMBER;

import com.jsl.queryClass.LoginQuery;

/**
 * Servlet implementation class UserRegistrationServlet
 */
@WebServlet("/userRegistrationServlet")
public class UserRegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    /*public UserRegistrationServlet() {
        super();
    }*/

	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
		//PrintWriter out = response.getWriter();
		
		String userName = request.getParameter("uName");
		System.out.println(userName+" uName");
		String psw = request.getParameter("psw");
		System.out.println(psw+" psw");
		
		
		
		//String userstatus = request.getParameter("status");
		RequestDispatcher rd;
		
		LoginQuery query = new LoginQuery();
		if(!userName.isEmpty()| userName != null){
			
			//System.out.println(userName+"Userrr");
			String sts = query.login(userName, psw); 
			if (sts .equals("true")) {
				System.out.println("jjj");
				rd = request.getRequestDispatcher("/Header.html");
				rd.forward(request, response);
			}else {
				
				rd = getServletContext().getRequestDispatcher("/UserSignUp.jsp");
				rd.forward(request, response);
			}
		}
		else {
			rd = request.getRequestDispatcher("/UserSignUp.jsp");
			rd.forward(request, response);
		}
		/*try {
			query.signUp(userName, psw, userstatus);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		
		
		
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException{
		request.getRequestDispatcher("UserRegistration.jsp").forward(request,response);
	}

}
