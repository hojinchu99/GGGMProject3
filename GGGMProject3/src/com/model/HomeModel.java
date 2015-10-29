package com.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.FaqDAO;
import com.beans.FaqDTO;

public class HomeModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		req.setAttribute("jsp", "./pages/main/home.jsp");
		return "main.jsp";
//		return "/pages/board/faq.jsp";
	}

}
