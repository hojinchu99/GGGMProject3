<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.dao.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="dao" class="com.dao.memberDAO"/>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	int count = dao.memberIdCount(id);
	String result = "";
	if (count == 0) {
		result = "NOID";
	} else {
		memberDTO d = dao.getMemberInfo(id);
		if (pwd.equals(d.getPwd())) {
			result = "OK";
			session = request.getSession();
			session.setAttribute("id", id);
			session.setAttribute("name", d.getName());
			session.setAttribute("grade", d.getGrade());
			response.sendRedirect("main.jsp");
		} else {
			result = "NOPWD";
		}
	}
%>
<c:set var="result" value="<%=result %>"/>
<c:choose>
	<c:when test="${result=='NOID' }">
		<script>
			alert("아이디가 존재하지 않습니다")
			location.replace("fullpageMain.jsp");
		</script>		
	</c:when>
	<c:when test="${result=='NOPWD' }">
		<script>
			alert("비밀번호가 틀립니다.")
			history.back();
		</script>
	</c:when>
	<c:otherwise>
		<c:redirect url="main.jsp" />
	</c:otherwise>
</c:choose>