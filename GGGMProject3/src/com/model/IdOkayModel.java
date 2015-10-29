package com.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class IdOkayModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String usableid=req.getParameter("usableId");
		req.setAttribute("id", usableid);
		
		return "/member/join.jsp";
	}

}
