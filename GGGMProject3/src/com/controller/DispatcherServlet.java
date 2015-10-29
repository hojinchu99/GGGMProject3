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
		//�ش� ������ �Ľ��ϰ� �ʿ� ����
		
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			// ~/main.do���� main��������
			String cmd=request.getRequestURI();
			cmd=cmd.substring(request.getContextPath().length()+1, cmd.lastIndexOf('.'));
			Model model=wc.getBean(cmd);// �ش��ϴ� ~ModelŬ������ ������
			System.out.println("���� cmd ��:\""+cmd+"\"");
			String jsp=model.handlerRequest(request, response);
			//�ش� �� Ŭ������ �����ǵ� �޼ҵ带 ȣ��, request�� ������Ŵ
			
			// ~/main.do���� do��������
			String type=jsp.substring(jsp.lastIndexOf('.')+1);
			if(type.equals("do")){//Ȯ���ڰ� do�� ���
				response.sendRedirect(jsp);
				//*.do�� �����ؾ� �����Ͱ��� �����ͼ� ȭ�鿡 ����ϱ� ������
				//sendRedirect�� ��
			}else{//html�̳� jsp�� ���
				RequestDispatcher rd=request.getRequestDispatcher(jsp);
				rd.forward(request, response);
				//���⿡ �ش��ϴ� �κ��� ������ ó���� �ʿ���� �κ�
			}
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}
		
		
		
	}

}
