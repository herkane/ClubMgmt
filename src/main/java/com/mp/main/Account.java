package com.mp.main;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class Account
 */
@WebServlet("/Account")
public class Account extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Account() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		if(session.getAttribute("user") != null) {
			User user = (User) session.getAttribute("user");
			UserManager um = new UserManager();
			user = um.getUser(user.getEmail());
			request.setAttribute("f_name", user.getPrenom());
			request.setAttribute("l_name", user.getNom());
			request.setAttribute("role", user.getRole());		
			if(user.getRole() == 2 && user.getRequest() != null) {
				request.setAttribute("request_status", user.getRequest().getStatus());
			}
			request.getRequestDispatcher("/Pages/Dashboard.jsp").forward(request, response);
		} else {
			response.sendRedirect(request.getContextPath()+"/Index");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
