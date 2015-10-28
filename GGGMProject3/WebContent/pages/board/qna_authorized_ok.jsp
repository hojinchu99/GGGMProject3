<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="com.dao.*"%>
<jsp:useBean id="dao" class="com.dao.BoardDAO"/>
<%
    String pwd=request.getParameter("pwd");
    String no=request.getParameter("no");
    String strPage=request.getParameter("page");
	String strRn=request.getParameter("rn");
   //DB
    boolean bCheck=dao.qnaAuthorizedData(Integer.parseInt(no), pwd);
    if(bCheck==true)
    {
    	response.sendRedirect("qna_content.jsp?no="+no+"&page="+strPage+"&rn="+strRn);
    }
    else
    {
%>
          <script>
          alert("비밀번호가 틀립니다");
          history.back();
          </script>
<%
    }
%>
