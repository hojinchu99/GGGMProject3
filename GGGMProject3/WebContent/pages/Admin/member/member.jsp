<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.change.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String strNo=request.getParameter("pno");
	if(strNo==null){
		strNo="0";
	}
	String jsp=memberJSPChange.change(Integer.parseInt(strNo));

%>
<c:set var="jsp" value="<%=jsp %>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AdminLTE | Dashboard</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<!-- bootstrap 3.0.2 -->
<link href="../../../css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<!-- font Awesome -->
<link href="../../../css/font-awesome.min.css" rel="stylesheet"
	type="text/css" />
<!-- Ionicons -->
<link href="../../../css/ionicons.min.css" rel="stylesheet"
	type="text/css" />
<!-- Theme style -->
<link href="../../../css/AdminLTE.css" rel="stylesheet" type="text/css" />
</head>
<body class="skin-black">
	<div class="row">
		<div class="col-md-offset-1">
			<h1>※&nbsp;회원목록</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
				<li class="active">회원</li>
			</ol>
		</div>
	</div>
	<div class="row">
		<div class="col-md-offset-1">
			&nbsp;&nbsp;&nbsp;&nbsp; <a href="main.jsp?no=13&pno=0">전체회원 | </a> <a
				href="main.jsp?no=13&pno=1">일반회원 | </a> <a href="main.jsp?no=13&pno=2">광고주회원
				| </a> <a href="main.jsp?no=13&pno=3">관리자회원 </a>
		</div>
	</div>

	<jsp:include page="${jsp }"></jsp:include>

</body>
</html>