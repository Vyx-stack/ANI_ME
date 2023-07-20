package com.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.VideoDAO;
import com.Entity.Video;

/**
 * Servlet implementation class indexServlet
 */
@WebServlet({"/indexServlet", "/indexServlet/*", "/indexServlet/logout"})
public class indexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public indexServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uri = request.getRequestURI();
		if(uri.contains("logout")) {
			request.getSession().removeAttribute("user");
		}
		VideoDAO dao = new VideoDAO();
		List<Video> video = dao.findAll();
		
		request.setAttribute("videos", video);
		
		request.getRequestDispatcher("/views/index.jsp").forward(request,response);
	}
	
	

}
