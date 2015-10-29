<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
			<h1>��&nbsp;ȸ�����</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
				<li class="active">ȸ��</li>
			</ol>
		</div>
	</div>
	<div class="row">
		<div class="col-md-offset-1">
			&nbsp;&nbsp;&nbsp;&nbsp; <a href="member.do">��üȸ�� | </a> <a
				href="normalmember.do">�Ϲ�ȸ�� | </a> <a href="admember.do">������ȸ��
				| </a> <a href="AdminMember.do">������ȸ�� </a>
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
									<th>�̸�</th>
									<th>ȸ��ID</th>
									<th>����</th>
									<th>��ȭ��ȣ</th>
									<th>����</th>
									<th>�����ȣ</th>
									<th>�ּ�</th>
									<th>E-mail</th>
									<th>���ſ���</th>
									<th>ȸ�����</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="d" items="${list}">
									<tr style="font-size: 9pt; text-align: center;">
										<td width="8%">${d.name}</td>
										<td width="5%">${d.id}</td>
										<td width="10%"><fmt:formatDate value="${d.birth }" pattern="yyyy-MM-dd"/></td>
										<td width="12%">${d.tel}</td>
										<td width="6%">${d.sex}</td>
										<td width="9%">${d.post}</td>
										<td width="16%"><small>${d.addr1}<br>${d.addr2}</small></td>
										<td width="15%">${d.email}</td>
										<td width="10%">${d.emailreceive}</td>
										<td width="10%"><c:choose>
												<c:when test="${d.grade==1}">
									�Ϲ�ȸ��
									</c:when>
												<c:when test="${d.grade==2}">
									������ȸ��
									</c:when>
												<c:otherwise>
									������
									</c:otherwise>
											</c:choose></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>				
			</div>
		</div>
	</div>

</body>
</html>