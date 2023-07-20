package com.Servlet;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.FavoriteDAO;
import com.DAO.VideoDAO;
import com.Entity.Favorite;
import com.Entity.Users;
import com.Entity.Video;

/**
 * Servlet implementation class anime_watchingServlet
 */
@WebServlet({ "/anime_watchingServlet", "/anime_watchingServlet/watch/*", "/anime_watchingServlet/like/*" })
public class anime_watchingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public anime_watchingServlet() {
		super();

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		VideoDAO dao = new VideoDAO();
		List<Video> video = dao.findAll();
		String uri = req.getRequestURI();
		String id = uri.substring(uri.lastIndexOf("/") + 1);
		Video video1 = new Video();
		Users user = new Users();
		FavoriteDAO dao1 = new FavoriteDAO();
		Favorite favorite = new Favorite();
		Users userSession = (Users) req.getSession().getAttribute("user");
		String id1 = uri.substring(uri.lastIndexOf("/") + 1);		
		Boolean check = false;
		if(userSession != null) {
			check = dao1.checkLike(userSession.getId(), id1);
		}
		 if (uri.contains("like")) {
			 
			if (check == false) {
				video1.setMaVideo(id1);
				favorite.setVideo(video1);
				user.setId(userSession.getId());
				favorite.setUsers(user);
				favorite.setLikeDate(new Date());
				dao1.create(favorite);
				req.setAttribute("checked", "Bỏ thích");
				req.setAttribute("item", dao.findById(id1));
			} else {
				dao1.remove(userSession.getId(), id1);
				req.setAttribute("checked", "Thích");
				
			}
			req.setAttribute("vid", dao.findById(id));
			
		}else if (uri.contains("watch")) {
			if(check == false) {
				req.setAttribute("checked", "Thích");
			}else {
				req.setAttribute("checked", "Bỏ thích");
			}
			req.setAttribute("vid", dao.findById(id));
		}

		req.getRequestDispatcher("/views/anime-watching.jsp").forward(req, resp);
	
	}

}
