<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*,com.beans.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="dao" class="com.beans.FaqDAO"></jsp:useBean>
<%
	List<FaqDTO> list = dao.getAllFaq();
%>
<c:set var="list" value="<%=list %>"/>

<!DOCTYPE html>
<html>


<!--         faq css 링크 -->
        
		<link rel="stylesheet" href="../../css/faq/style.css">
		
		<script src="../../js/faq/modernizr.js"></script> <!-- Modernizr -->
		<script src="../../js/faq/jquery-2.1.1.js"></script>
		<script src="../../js/faq/main.js"></script> <!-- Resource jQuery -->

<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<div class="cd-faq-items">

			<ul id="basics" class="cd-faq-group" >
				<li class="cd-faq-title"><h2>자주 묻는 질문</h2></li>
				
				<c:forEach var="dto" items="${list}">
				
					<li>
						<a class="cd-faq-trigger" href="#0">${dto.no }. &nbsp;&nbsp; ${dto.subject }</a>
						<div class="cd-faq-content">
							<p>${dto.content} </p>
						</div> <!-- cd-faq-content -->
					</li>
				
				</c:forEach>
			</ul> <!-- cd-faq-group -->

	</div> <!-- cd-faq-items -->
	<a href="#0" class="cd-close-panel">Close</a>
	
</body>
</html>