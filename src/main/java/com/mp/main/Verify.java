package com.mp.main;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class Verify
 */
@WebServlet("/SignUp/Verify")
public class Verify extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String gmailCode;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Verify() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/Pages/Verify.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		if(session.getAttribute("user") == null) {
			gmailCode = "0000";
			if(gmailCode.equals(request.getParameter("code"))) {
				UserManager user = new UserManager();
				User userSession = user.getUser("a@g.c");
				session.setAttribute("user", userSession);
				request.getRequestDispatcher("/Account").forward(request, response);			
			} else {
				response.sendRedirect("/Verify");
			}
		} else {
			response.sendRedirect("/Account");			
		}
	}

}
