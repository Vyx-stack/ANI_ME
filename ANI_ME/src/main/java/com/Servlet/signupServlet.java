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
 * Servlet implementation class signupServle
 */
@WebServlet({"/signupServlet", "/signupServlet/create"})
public class signupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   @Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	   req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
	   
		String uri = req.getRequestURI();
		if (uri.contains("create")) { 
			try {
				
				UserDAO dao = new UserDAO();
				Users user = new Users();
				
				if(!req.getParameter("password").equals( req.getParameter("confirmPassword"))) {
					req.setAttribute("message" , "Mật khẩu và xác nhận mật khẩu không trùng khớp" );
				}
				else {				
					BeanUtils.populate(user, req.getParameterMap());
					dao.create(user);
					resp.sendRedirect("/ANI_ME/loginServlet");
					return;
				}
			} catch (Exception e) {
				req.setAttribute("message" , "ID người dùng đã tồn tại" ); 
			}
		}
		req.getRequestDispatcher("/views/signup.jsp").forward(req, resp);
	}


}
