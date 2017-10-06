package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import database.Match;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setAttribute("alert", "404");
		request.getRequestDispatcher("../index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userEmail = request.getParameter("Email");
		String userPassword = request.getParameter("password");
		String loginResult = Match.Match(userEmail, userPassword);
		if(loginResult == "access"){
			HttpSession session = request.getSession();
			session.setAttribute("userEmail",userEmail);
			request.getRequestDispatcher("../index.jsp").forward(request, response);
		}
		else if(loginResult == "admin"){
			HttpSession session = request.getSession();
			session.setAttribute("userEmail","admin");
			request.getRequestDispatcher("../index.jsp").forward(request, response);
		}
		else request.setAttribute("alert", "用户名或密码错误！");
	}

}
