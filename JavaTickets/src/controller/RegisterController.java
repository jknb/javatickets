package controller;

import java.io.IOException;
//import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAO;
import domain.User;

/**
 * Servlet implementation class RegisterController
 */
@WebServlet("/register")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");

		//reading parameters from request
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
			
		RequestDispatcher rd = request.getRequestDispatcher("/register.jsp");

		try {

			/*
			 * if(username == null || username.length() < 2
					|| password == null || password.length() < 2
					|| email == null || email.length() < 2) {
		
				
				request.setAttribute("errormessage", "Not valid data!");
				
				rd.forward(request, response);
				return;
			}
			*/
						

			User user = new User(username, password, email);

			UserDAO userdao = new UserDAO();

			
			userdao.saveUser(user); 

			

			request.setAttribute("message", "Registration completed successfully!");

			rd.forward(request, response);
			return;

		} catch (Exception e) {
			
			request.setAttribute("errormessage", e.getMessage());
			
			rd.forward(request, response);	
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
