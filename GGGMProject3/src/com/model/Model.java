package com.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//여러 개의 클래스를 묶어서 관리하기 위한 Model Interface
public interface Model {
	
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception;
	
}
