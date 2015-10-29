package model;

import java.util.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.*;


public class MemberModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		List<memberDTO> list=memberDAO.getMemberAllData();		
		req.setAttribute("list", list);
		req.setAttribute("jsp", "pages/Admin/member/member.jsp");
		return "main.jsp";
	}

}
