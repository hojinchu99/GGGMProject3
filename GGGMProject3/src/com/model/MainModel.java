package com.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MainModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		//req.setAttribute("title", "Home");
		//���⼱ ���� ������ �Ӽ��� ����
		
		return "fullpageMain.jsp";
	}

}