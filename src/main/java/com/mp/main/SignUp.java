package com.mp.main;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SignUp
 */
@jakarta.servlet.annotation.WebServlet("/SignUp")
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String gmailCode = "";
	SendEmailTLS send = null;
	DaoFactory db = DaoFactory.getInstance();
       
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
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		if(gmailCode.isEmpty()) {
			UtilisateurDaoImpl DB_user = new UtilisateurDaoImpl(db);
			String f_name = request.getParameter("first_name").trim();
			String l_name = request.getParameter("last_name").trim().toUpperCase();
			String email = request.getParameter("email").trim();
			String pwd = request.getParameter("password").trim();
			User user = new User(l_name, f_name, email, pwd);
			gmailCode = String.valueOf(Math.random());
			DB_user.ajouter(user);
			try {
				send.main(email,gmailCode);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				System.out.println("Email Sending Error : \n");
				e.printStackTrace();
			}
			request.setAttribute("user", user);
			getServletContext().getRequestDispatcher("/Pages/Verify.jsp").forward(request, response);
		} else {
			if(gmailCode.equals(request.getParameter("code"))) {
				getServletContext().getRequestDispatcher("/Pages/Dashboard.jsp").forward(request, response);
			} else {
				getServletContext().getRequestDispatcher("/Pages/SignUp.jsp").forward(request, response);
			}
		}
		
	}

}
