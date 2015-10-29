package model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.memberDAO;
import dao.memberDTO;

public class MainModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {				
		
		req.setAttribute("jsp", "pages/main/home.jsp");
		return "main.jsp";
	}

}
