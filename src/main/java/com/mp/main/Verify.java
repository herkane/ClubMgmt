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
			gmailCode = (String) session.getAttribute("gmailCode");
			if(gmailCode.equals(request.getParameter("code"))) {
				UserManager user = new UserManager();
				String email = (String) session.getAttribute("email");
				System.out.println(email);
				User userSession = user.getUser(email);
				userSession.setAccount_status(1);
				user.activateAccount(userSession);
				session.setAttribute("user", userSession);
				response.sendRedirect(request.getContextPath()+"/Account");		
				session.removeAttribute("email");
				session.removeAttribute("gmailCode");
			} else {
				response.sendRedirect(request.getContextPath()+"/SignUp/Verify?error=1");
			}
		} else {
			response.sendRedirect(request.getContextPath()+"/Account");			
		}
	}

}
