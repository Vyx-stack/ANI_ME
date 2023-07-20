package com.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.DAO.UserDAO;
import com.DAO.VideoDAO;
import com.Entity.Users;
import com.Entity.Video;

/**
 * Servlet implementation class manage_userServlet
 */
@WebServlet({ "/manage_userServlet", "/manage_userServlet/create",
		"/manage_userServlet/update", "/manage_userServlet/delete", "/manage_userServlet/edit/*" })
public class manage_userServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		UserDAO dao = new UserDAO();
		Users user = new Users();
		String uri = req.getRequestURI();

		if (uri.contains("edit")) { // user/edit/id
			String id = uri.substring(uri.lastIndexOf("/") + 1);
			user = dao.findById(id);
		} else if (uri.contains("update")) { // user/update
			try {
				BeanUtils.populate(user, req.getParameterMap());
				dao.update(user);
			} catch (Exception e) {
				System.out.println(e);
			}
		} else if (uri.contains("delete")) { 
			try {
				String id = req.getParameter("id");
				dao.delete(id);
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		
		req.setAttribute("form", user); 
		req.setAttribute("users", dao.findAll());
		req.getRequestDispatcher("/views/manage-user.jsp").forward(req, resp);
	}

}
