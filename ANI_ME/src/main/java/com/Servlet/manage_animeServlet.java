package com.Servlet;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.beanutils.BeanUtils;

import com.DAO.VideoDAO;

import com.Entity.Video;

/**
 * Servlet implementation class manage_animeServlet
 */
@WebServlet({ "/manage_animeServlet", "/manage_animeServlet/edit/*", "/manage_animeServlet/create",
		"/manage_animeServlet/update", "/manage_animeServlet/delete", "/manage_animeServlet/postImage" })
public class manage_animeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		VideoDAO dao = new VideoDAO();
		Video video = new Video();
		String uri = req.getRequestURI();

		if (uri.contains("edit")) { // user/edit/id
			String id = uri.substring(uri.lastIndexOf("/") + 1);
			video = dao.findById(id);
		} else if (uri.contains("create")) { // user/create
			try {
				BeanUtils.populate(video, req.getParameterMap());
				dao.create(video);
			} catch (Exception e) {
				System.out.println(e);
			}
		} else if (uri.contains("update")) { // user/update
			try {
				BeanUtils.populate(video, req.getParameterMap());
				dao.update(video);
			} catch (Exception e) {
				System.out.println(e);
			}
		} else if (uri.contains("delete")) {
			try {
				String id = req.getParameter("maVideo");

				dao.delete(id);
			} catch (Exception e) {
				System.out.println(e);
			}
		}

		req.setAttribute("form", video);
		req.setAttribute("videos", dao.findAll());
		req.getRequestDispatcher("/views/manage-anime.jsp").forward(req, resp);

	}

}
