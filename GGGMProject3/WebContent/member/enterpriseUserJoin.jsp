<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*,java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원가입</title>
<link rel="stylesheet" type="text/css" href="join.css"/>
<link rel="stylesheet" type="text/css" href="../css/shadowbox.css"/>
<script type="text/javascript" src="../js/shadowbox.js"></script>


<script type="text/javascript">
Shadowbox.init({
   players:["iframe"]		
});
function idcheck()
{
	Shadowbox.open({
		content:'./idcheck.jsp',
		player:'iframe',
		title:'아이디 중복체크',
		width:300,
		height:150
	});
}
function postfind()
{
	Shadowbox.open({
		content:'./postfind.jsp',
		player:'iframe',
		title:'우편번호 검색',
		width:430,
		height:350
	});
}
</script>
</head>
<body>
	<br>
	<br>
	<br>
	<div id="wrapper">
	<form id="joinForm" name="join_form">
    <p>
    <label for="enterid">아이디</label>
    <input type=text name="id" id="enterid">
    <input type=button value=중복체크 id="enteridBtn" onclick="idcheck()">
    </p>
    <p>
    <label for="enterpwd">비밀번호</label>
    <input type=password name="pwd" id="enterpwd">
    <input type=password name="pwd" id="enterpwd2" placeholder="재입력">
    </p>
    <p>
    <label for="entername">이름</label>
    <input type=text name="name" id="entername">
    </p>
    <p>
    <label for="entername2">회사명</label>
    <input type=text name="name" id="entername2">
    </p>
    <p>
	<label for="entermail">사업자 등록번호</label>			
	<input type=text size=3 name=enterpriseNumber1>-
	<input type=text size=4 name=enterpriseNumber2>-
	<input type=text size=4 name=enterpriseNumber3>
	</p>
    <p>
    <label for="entersex">성별</label>
    <input type=radio name="sex" id="entersex" checked value="남자">남자
    <input type=radio name="sex" id="entersex" value="여자">여자
    </p>
    <p>
    <label for="enterbday">생년월일</label>
    <input type=date name="bday" id="enterbday">
    </p>
    <p>
    <label for="enterpost">주소</label>
    <span id="cellStyle">
     <input type=text name="post" id="enterpost" readonly>
     <input type=button value="우편번호검색" id="enterpostBtn" onclick="postfind()">
     <input type=text name="addr1" id="enteraddr1" readonly>
     <input type=text name="addr2" id="enteraddr2">
    </span>
    </p>
    <p>
    <label for="enterphone">휴대폰번호</label>
    <span id="cellStyle">
	    <select id="enterphone" name="phone1">
	      <option>010</option>
	      <option>011</option>
	      <option>017</option>
	    </select>
	    <input type=text name="phone2" id="enterphone1">-
	    <input type=text name="phone3" id="enterphone2">
    </span>
    </p>
     <p>
    <label for="entertel">회사 전화번호</label>
    <span id="cellStyle">
	    <select id="entertel" name="tel1">
	      <option>02</option>
	      <option>031</option>
	      <option>032</option>
	      <option>033</option>
	      <option>041</option>
	      <option>042</option>
	      <option>043</option>
	      <option>044</option>
	      <option>051</option>
	      <option>052</option>
	      <option>053</option>
	      <option>054</option>
	      <option>055</option>
	      <option>061</option>
	      <option>062</option>
	      <option>063</option>
	      <option>064</option>     
	    </select>
	    <input type=text name="tel2" id="entertel1">-
	    <input type=text name="tel3" id="entertel2">
    </span>
    </p>
    <p>
    <label for="enteremail">e-mail</label>
    <input type=text name="email" id="enteremail"> @
    <select id="enteremail2" name="email2" style="width:inherit">
	      <option>naver.com</option>
	      <option>hanmail.net</option>
	      <option>gmail.com</option>
	      <option>nate.com</option>
	      <option>hotmail.com</option>
	      <option>직접입력</option>
	    </select>
    </p>
    <p>
    <label for="entermail">메일수신</label>
    <input type=radio name="mail" id="entermail" checked value="수신동의">수신동의
    <input type=radio name="mail" id="entermail" value="수신거절">수신거절
    </p>
    <p class="btnSubmit">
    <input type=button id="btnSub" value=회원가입>
    <input type=button id="btnCancel" value=가입취소>
    </p>	
		</form>
		</div>

	

</body>
</html>