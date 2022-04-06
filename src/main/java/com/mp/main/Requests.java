package com.mp.main;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class Requests
 */
@WebServlet("/Account/Requests")
public class Requests extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Requests() {
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
			if(user.getRole() == 0) {
				request.setAttribute("f_name", user.getPrenom());
				request.setAttribute("l_name", user.getNom());
				request.setAttribute("role", user.getRole());
				request.setAttribute("list", um.getRequests());
				request.getRequestDispatcher("/Pages/requests.jsp").forward(request, response);	
			} else {
				response.sendRedirect(request.getContextPath()+"/Account");
			}
		} else {
			response.sendRedirect(request.getContextPath()+"/Account");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserManager um = new UserManager();
		if(request.getParameter("accept") != null) {
			System.out.println("Accept");
			System.out.println("Id : " + request.getParameter("accept"));
			um.accept(Integer.valueOf(request.getParameter("accept")));
		}
		if(request.getParameter("refuse") != null) {
			System.out.println("Refuse");
			System.out.println("Id : " + request.getParameter("refuse"));
			um.decline(Integer.valueOf(request.getParameter("refuse")));
		}
		response.sendRedirect(request.getContextPath()+"/Account/Requests");
	}

}
