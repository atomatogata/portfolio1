package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.SnowDAO2;

@WebServlet("/SnowWriter")
public class SnowWriter extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//		request.setCharacterEncoding("UTF-8");
		//		String name = request.getParameter("name");
		//		String text = request.getParameter("text");
		//		SnowDAO2 snowDAO2 = new SnowDAO2();
		//		snowDAO2.insert(name, text);
		//
		//		RequestDispatcher dispatcher = request.getRequestDispatcher("/WelcomServlet");
		//		dispatcher.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		int type = Integer.parseInt(request.getParameter("type"));
		String name = request.getParameter("name");
		String text = request.getParameter("text");
		SnowDAO2 snowDAO2 = new SnowDAO2();
		snowDAO2.insert(type, name, text);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/WelcomServlet");
		dispatcher.forward(request, response);
	}

}
