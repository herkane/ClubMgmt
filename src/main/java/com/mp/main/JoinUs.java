package com.mp.main;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class JoinUs
 */
@WebServlet("/Account/JoinUs")
public class JoinUs extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinUs() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		if(session.getAttribute("user") != null) {
			if(user.getRole() == 2) {
				request.setAttribute("id", user.getId());
				request.getRequestDispatcher("/Pages/adhesion.jsp").forward(request, response);
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
		System.out.println(request.getParameter("id"));
		UserManager um = new UserManager();
		um.sendRequest(Integer.valueOf(request.getParameter("id")));
		response.sendRedirect(request.getContextPath()+"/Account");
	}

}
