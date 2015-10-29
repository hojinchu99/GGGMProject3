package model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.memberDAO;
import dao.memberDTO;

public class ADMemberModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		List<memberDTO> list=memberDAO.getADMemberAllData();		
		req.setAttribute("list", list);
		req.setAttribute("jsp", "pages/Admin/member/admember.jsp");
		return "main.jsp";
	}

}
