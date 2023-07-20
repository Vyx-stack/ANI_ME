package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.DAO.UserDAO;
import com.Entity.Users;

/**
 * Servlet implementation class edit_profileServlet
 */
@WebServlet({"/edit_profileServlet", "/edit_profileServlet/update"})
public class edit_profileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   @Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	   req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");	   
		String uri = req.getRequestURI();
		
		String id = (String) req.getSession().getId();
		System.out.println(id);
		UserDAO dao = new UserDAO();
		Users user = dao.findById(id);		
		
		if (uri.contains("update")) {
			try {			 
				BeanUtils.populate(user, req.getParameterMap());
				dao.update(user);
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		req.setAttribute("form", user);
		req.getRequestDispatcher("/views/edit-profile.jsp").forward(req, resp);
	}

}
