<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="com.dao.*"%>
<jsp:useBean id="dao" class="com.dao.BoardDAO"/>
<%
    String no=request.getParameter("no");
    String strPage=request.getParameter("page"); 
   //DB
    dao.qnaDelete(Integer.parseInt(no));
    response.sendRedirect("qna.jsp?page="+strPage); 
	
%>


