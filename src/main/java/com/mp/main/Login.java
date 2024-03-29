package com.mp.main;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.websocket.Session;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/Pages/signin.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		if(session.getAttribute("user") == null) {
			UserManager user = new UserManager();
			String email = request.getParameter("email").trim();
			String pwd = request.getParameter("password").trim();
			if(user.validate(email, pwd)) {
				User userSession = user.getUser(email); 
				if(userSession.getAccount_status() == 1) {
					session.setAttribute("user", userSession);
					System.out.println("Login success");
					response.sendRedirect(request.getContextPath()+"/Account");
				} else if (userSession.getAccount_status() ==  0) {
					// Unverified Account
					session.setAttribute("gmailCode", userSession.getGmailCode());
					session.setAttribute("email", email);
					response.sendRedirect(request.getContextPath()+"/SignUp/Verify");
				} else if (userSession.getAccount_status() == 2) {
					// Disabled account
					response.sendRedirect(request.getContextPath()+"/Login?error=2");
				}
			} else {
				// Wrong credentials
				response.sendRedirect(request.getContextPath()+"/Login?error=3");
			}
		} else {
			//Already logged in
			response.sendRedirect(request.getContextPath()+"/Account");
		}
	}

}
