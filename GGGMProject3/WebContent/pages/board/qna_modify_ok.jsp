<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="com.dao.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    request.setCharacterEncoding("EUC-KR");
%>
<jsp:useBean id="dao" class="com.dao.BoardDAO"/>
<jsp:useBean id="d" class="com.dao.BoardDTO">
 <jsp:setProperty name="d" property="*"/>
</jsp:useBean>
<%
	String strNo=request.getParameter("no");
	String strPage=request.getParameter("page");
	boolean bCheck=dao.qnaUpdate(d);
%>
<c:set var="bCheck" value="<%=bCheck %>"/>
<c:set var="page" value="<%=strPage %>"/>
<c:if test="${bCheck==true }">
<c:redirect url="qna.jsp?page=${page }" />
</c:if>
<c:if test="${bCheck==false }">
	<script>
	  alert("!!!");
	  history.back();
	</script>
</c:if>