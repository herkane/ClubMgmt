package com.mp.main;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class UnjoinActivity
 */
@WebServlet("/Account/UnjoinActivity")
public class UnjoinActivity extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UnjoinActivity() {
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
		UserManager um = new UserManager();
		int act_id = Integer.parseInt(request.getParameter("id"));
		int user_id = Integer.parseInt(request.getParameter("uId"));
		ActivityUser au = new ActivityUser(act_id, user_id);
		um.minusOne(act_id);
		um.unJoin(user_id, act_id);
		response.sendRedirect(request.getContextPath()+"/Account/Activities");
		
	}

}
