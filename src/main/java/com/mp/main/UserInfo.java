package com.mp.main;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class UserInfo
 */
@WebServlet("/Account/UsersList/UserInfo")
public class UserInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserInfo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		User userS = (User) session.getAttribute("user");
		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println(id);
		UserManager um = new UserManager();
		User user = um.getUserById(id);
		request.setAttribute("f_name", user.getPrenom());
		request.setAttribute("l_name", user.getNom());
		request.setAttribute("role", userS.getRole());
		request.setAttribute("email", user.getEmail());
		request.setAttribute("id", id);
		boolean isCurrU;
		if(user.getId() == userS.getId()) {
			isCurrU = true;
		} else {
			isCurrU = false;
		}
		request.setAttribute("isCurrU", isCurrU);
		request.getRequestDispatcher("/Pages/Profile.jsp").forward(request, response);
	}

}
