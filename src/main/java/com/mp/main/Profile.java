package com.mp.main;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class Profile
 */
@WebServlet("/Account/Profile")
public class Profile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Profile() {
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
		request.setAttribute("f_name", user.getPrenom());
		request.setAttribute("l_name", user.getNom());
		request.setAttribute("role", user.getRole());
		request.setAttribute("email", user.getEmail());
		request.setAttribute("id", user.getId());
		request.setAttribute("isCurrU", true);
		request.getRequestDispatcher("/Pages/Profile.jsp").forward(request, response);
		} else {
			response.sendRedirect(request.getContextPath()+"/Index");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		if(session.getAttribute("user") != null) {
			String f_name = request.getParameter("f_name").trim();
			String l_name = request.getParameter("l_name").trim();
			int id = Integer.parseInt(request.getParameter("id"));
			UserManager userManager = new UserManager();
			User user = (User) userManager.getUserById(id);
			String password = user.getPassword();
			if(!request.getParameter("password").isEmpty()) {				
				password = request.getParameter("password");
			}
			user.setNom(l_name);
			user.setPrenom(f_name);
			user.setPassword(password);
			userManager.updateUser(user);
			session.removeAttribute("user");
			session.setAttribute("user", user);
			response.sendRedirect(request.getContextPath()+"/Account");
		} else {
			response.sendRedirect(request.getContextPath()+"/Index");
		}
		
	}

}
