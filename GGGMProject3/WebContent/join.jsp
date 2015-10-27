<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/join.css"/>
<link rel="stylesheet" type="text/css" href="css/shadowbox.css"/>

<meta charset="EUC-KR">
<title>회원가입</title>
</head>
<body>
	<div id="wrapper">
	<form id="joinForm" name="join_form">
		<p>
		<label for="userid">아이디</label>
		<input type="text" name="id" id="userid">
		<input type="button" value="중복체크" onclick="idcheck()">
		</p>
		<p>
		<label for="userpwd">비밀번호</label>
		<input type="password" name="pwd" id="userpwd">
		<input type="password" name="pwd" id="userpwd2" placeholder="재입력">
		</p>
		<p>
		<label for="username">이름</label>
		<input type="text" name="name" id="username">
		</p>
		<p>
		<label for="usersex">성별</label>
		<input type="radio" name="name" id="usersex" checked value="남자">남자
		<input type="radio" name="name" id="usersex" value="여자">여자
		</p>
		<p>
		<label for="userbday">생년월일</label>
		<input type="date" name="bday" id="userbday">
		</p>
		<p>
		<label for="userpost">주소</label>
		<span id="cellStyle">
			<input type="text" name="post" id="userpost" readonly>
			<input type="button" value="우편번호 검색" id="userpostBtn" onclick="postfind()">
			<input type="text" name="addr1" id="useraddr1" readonly>
			<input type="text" name="addr2" id="useraddr2">
		</span>
		</p>
		<p>
		<label for="usertel">전화번호</label>
		<span class="cellStyle">
			<select id="usertel" name="tel1">
				<option>010</option>
				<option>011</option>
				<option>017</option>
			</select>
			<input type="text" name="tel2" id="usertel1">-
			<input type="text" name="tel3" id="usertel2">
		</span>
		</p>
		<p class="btnSubmit">
		
		<input type="button" name="btnSub" value="회원가입">
		<input type="button" name="btnCancel" value="가입취소">
		</p>
	</form>
	</div>
	<script type="text/javascript" src="js/shadowbox.js"></script>
	<script type="text/javascript">
		Shadowbox.init({
			players:["iframe"]
		});
		function idcheck(){
			Shadowbox.open({
				content:'idcheck.jsp',
				player:'iframe',
				title:'아이디 중복체크',
				width:300,
				height:150
			});
		}
		function postfind(){
			Shadowbox.open({
				content:'postfind.jsp',
				player:'iframe',
				title:'우편번호 검색',
				width:430,
				height:350
			});
		}
	</script>
</body>
</html>