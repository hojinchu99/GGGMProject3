package com.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.SignupDAO;

public class IdCheckModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("EUC-KR");
		String id=req.getParameter("id");
		
		int bcheck=SignupDAO.idcheck(id);
		System.out.println("bcheck:"+bcheck);
		req.setAttribute("idcheck", 2-bcheck);
		return "/member/idcheck.jsp";
	}

}
