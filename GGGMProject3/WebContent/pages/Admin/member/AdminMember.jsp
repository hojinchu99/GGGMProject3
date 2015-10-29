<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AdminLTE | Dashboard</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<!-- bootstrap 3.0.2 -->
<link href="../../../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<!-- font Awesome -->
<link href="../../../css/font-awesome.min.css" rel="stylesheet"
	type="text/css" />
<!-- Ionicons -->
<link href="../../../css/ionicons.min.css" rel="stylesheet" type="text/css" />
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
			&nbsp;&nbsp;&nbsp;&nbsp; <a href="member.do">전체회원 | </a> <a
				href="normalmember.do">일반회원 | </a> <a href="admember.do">광고주회원
				| </a> <a href="adminmember.do">관리자회원 </a>
		</div>
	</div>
	<div class="row">
		<div class="col-lg-11 col-md-offset-1">
			<div class="panel panel-default">
				<div class="panel-body">
					<div class="table-responsive">
						<table class="table table-bordered table-hover">
							<thead>
								<tr>
									<th>이름</th>
									<th>회원ID</th>
									<th>생일</th>
									<th>전화번호</th>
									<th>성별</th>
									<th>우편번호</th>
									<th>주소</th>
									<th>E-mail</th>
									<th>수신여부</th>	
								</tr>
							</thead>
							<tbody>
								<c:forEach var="dto" items="${list}">
									<tr>
										<td width="10%">${dto.name}</td>
										<td width="7%">${dto.id}</td>
										<td width="10%"><fmt:formatDate value="${dto.birth }" pattern="yyyy-MM-dd"/></td>
										<td width="12%">${dto.tel}</td>
										<td width="7%">${dto.sex}</td>
										<td width="9%">${dto.post}</td>
										<td><small>${dto.addr1}<br>${dto.addr2}</small></td>
										<td>${dto.email}</td>
										<td>${dto.emailreceive}</td>									
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				<div class="panel-footer">
					<div class="container-fluid">
						<div class="row">
							<div class="col-xs-9 text-left">
								<a href="#"><i class="fa fa-angle-double-left"></i></a> <a
									href="#"><i class="fa fa-angle-left"></i></a> <a href="#">1</a>
								<a href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a
									href="#">5</a> <a href="#">6</a> <a href="#">7</a> <a href="#">8</a>
								<a href="#">9</a> <a href="#">10</a> <a href="#"><i
									class="fa fa-angle-right"></i></a> <a href="#"><i
									class="fa fa-angle-double-right"></i></a>
							</div>
							<div class="col-xs-3 text-right">
								<input type="button" value="수정"> <input type="button"
									value="삭제">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /.row -->
</body>
</html>