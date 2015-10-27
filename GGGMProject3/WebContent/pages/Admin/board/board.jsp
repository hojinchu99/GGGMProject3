<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.change.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String strNo=request.getParameter("pno");
	if(strNo==null){
		strNo="0";
	}
	String jsp=boardJSPChange.change(Integer.parseInt(strNo));

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
			<h1>※&nbsp;게시글 관리</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
				<li class="active">게시글 관리</li>
			</ol>
		</div>
	</div>
	<div class="row">
		<div class="col-md-offset-1">
			&nbsp;&nbsp;&nbsp;&nbsp; <a href="main.jsp?no=14&pno=0">전체글 | </a> <a
				href="main.jsp?no=14&pno=1">광고 | </a> <a href="main.jsp?no=14&pno=2">댓글
				| </a> <a href="main.jsp?no=14&pno=3">FAQ | </a> <a
				href="main.jsp?no=14&pno=4">QnA | </a> <a
				href="main.jsp?no=14&pno=5">1:1문의 </a>
		</div>
	</div>

	<jsp:include page="${jsp }"></jsp:include>

</body>
</html>