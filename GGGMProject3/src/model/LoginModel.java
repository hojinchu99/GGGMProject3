package model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import dao.*;

public class LoginModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String id=req.getParameter("id");
		String pwd=req.getParameter("pwd");
		int count = memberDAO.memberIdCount(id);
		System.out.println(count);
		String result="";
		if(count==0){
			result="NOID";
		}else{
			memberDTO d=memberDAO.getMemberInfo(id);
			if(pwd.equals(d.getPwd())){
				result="OK";
				HttpSession session=req.getSession();
				session.setAttribute("id",id);
				session.setAttribute("grade",d.getGrade());
				session.setAttribute("name",d.getName());
				session.setAttribute("birth",d.getBirth());
			}else{
				result="NOPWD";
			}
		}
		System.out.println(result);
		req.setAttribute("result", result);
		return "login.jsp";
	}

}
