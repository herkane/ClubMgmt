package com.mp.main;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class SignUp
 */
@jakarta.servlet.annotation.WebServlet("/SignUp")
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String gmailCode = "";
	SendEmailTLS send = null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUp() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			request.getRequestDispatcher("/Pages/SignUp.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		HttpSession session = request.getSession();
		if(session.getAttribute("user") == null) {
			if(gmailCode.isEmpty()) {
				UserManager userMngr = new UserManager();
				String f_name = request.getParameter("first_name").trim();
				String l_name = request.getParameter("last_name").trim().toUpperCase();
				String email = request.getParameter("email").trim();
				String pwd = request.getParameter("password").trim();
				int role = 2;
				User user = new User(f_name, l_name, email, pwd, role);
				userMngr.setup();
				userMngr.create(user);
				userMngr.exit();
				gmailCode = String.valueOf(Math.round(Math.random() * 100000));
				request.setAttribute("gmailCode",gmailCode);
				request.setAttribute("email", email);
				try {
					send.main(email,gmailCode);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					System.out.println("Email Sending Error : \n");
					e.printStackTrace();
				}
				request.getRequestDispatcher("/Verify").forward(request, response);
			} else {
				request.getRequestDispatcher("/Verify").forward(request, response);
			}
		} else {
			request.getRequestDispatcher("/Account").forward(request, response);
		}
	}

}
