package com.controller;

import java.io.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.model.*;

public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private WebApplicationContext wc;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		String path=config.getInitParameter("xmlPath");
		System.out.println(path);
		//C:\Users\ ... \WEB-INF\applicationContext.xml
		wc=new WebApplicationContext(path);
		//해당 파일을 파싱하고 맵에 저장
		
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			// ~/main.do에서 main가져오기
			String cmd=request.getRequestURI();
			cmd=cmd.substring(request.getContextPath().length()+1, cmd.lastIndexOf('.'));
			Model model=wc.getBean(cmd);// 해당하는 ~Model클래스를 가져옴
			System.out.println("들어온 cmd 값:"+cmd);
			String jsp=model.handlerRequest(request, response);
			//해당 모델 클래스의 재정의된 메소드를 호출, request는 공유시킴
			
			// ~/main.do에서 do가져오기
			String type=jsp.substring(jsp.lastIndexOf('.')+1);
			if(type.equals("do")){//확장자가 do일 경우
				response.sendRedirect(jsp);
				//*.do를 실행해야 데이터값을 가져와서 화면에 출력하기 때문에
				//sendRedirect를 씀
			}else{//html이나 jsp일 경우
				RequestDispatcher rd=request.getRequestDispatcher(jsp);
				rd.forward(request, response);
				//여기에 해당하는 부분은 데이터 처리가 필요없는 부분
			}
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}
		
		
		
	}

}
