<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������</title>

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
		title:'���̵� �ߺ�üũ',
		width:300,
		height:150
	});
}
function postfind()
{
	Shadowbox.open({
		content:'./postfind.jsp',
		player:'iframe',
		title:'�����ȣ �˻�',
		width:430,
		height:350
	});
}
</script>
</head>

<body>
   <div id="wrapper">
    <form id="joinForm" name="join_form">
    <p>
    <label for="userid">���̵�</label>
    <input type=text name="id" id="userid">
    <input type=button value=�ߺ�üũ id="useridBtn" onclick="idcheck()">
 
    
    </p>
    <p>
    <label for="userpwd">��й�ȣ</label>
    <input type=password name="pwd" id="userpwd">
    <input type=password name="pwd" id="userpwd2" placeholder="���Է�">
    </p>
    <p>
    <label for="username">�̸�</label>
    <input type=text name="name" id="username">
    </p>
    <p>
    <label for="usersex">����</label>
    <input type=radio name="sex" id="usersex" checked value="����">����
    <input type=radio name="sex" id="usersex" value="����">����
    </p>
    <p>
    <label for="userbday">�������</label>
    <input type=date name="bday" id="userbday">
    </p>
    <p>
    <label for="userpost">�ּ�</label>
    <span id="cellStyle">
     <input type=text name="post" id="userpost" readonly>
     <input type=button value="�����ȣ�˻�" id="userpostBtn" onclick="postfind()">
     <input type=text name="addr1" id="useraddr1" readonly>
     <input type=text name="addr2" id="useraddr2">
    </span>
    </p>
    <p>
    <label for="usertel">��ȭ��ȣ</label>
    <span id="cellStyle">
	    <select id="usertel" name="tel1">
	      <option>010</option>
	      <option>011</option>
	      <option>017</option>
	    </select>
	    <input type=text name="tel2" id="usertel1">-
	    <input type=text name="tel3" id="usertel2">
    </span>
    </p>
    <p>
    <label for="useremail">e-mail</label>
    <input type=text name="email" id="useremail"> @
    <select id="useremail2" name="email2" style="width:inherit">
	      <option>naver.com</option>
	      <option>hanmail.net</option>
	      <option>gmail.com</option>
	      <option>nate.com</option>
	      <option>hotmail.com</option>
	      <option>�����Է�</option>
	    </select>
    </p>
    <p>
    <label for="usermail">���ϼ���</label>
    <input type=radio name="mail" id="usermail" checked value="���ŵ���">���ŵ���
    <input type=radio name="mail" id="usermail" value="���Ű���">���Ű���
    </p>
    <p>
    <label for="userjob">����</label>
    <select id="userjob" name="job">
	      <option>�л�</option>
	      <option>������</option>
	      <option>�����</option>
	      <option>�ֺ�</option>
	      <option>���ػ�</option>
	      <option>��Ƽ��Ʈ</option>
	      <option>��Ÿ</option>
	    </select>
    </p>
     <p>
    <label for="usermarry">��ȥ����</label>
    <input type=radio name="marry" id="usermarry" checked value="��ȥ">��ȥ
    <input type=radio name="marry" id="usermarry" value="��ȥ">��ȥ
    </p>
    <p>
    <label for="userhobby">���ɺо�</label>
    <input type=checkbox name="hobby" id="userhobby" value="������">������
    <input type=checkbox name="hobby" id="userhobby" value="����">����
    <input type=checkbox name="hobby" id="userhobby" value="���ͳ�">���ͳ�
    <input type=checkbox name="hobby" id="userhobby" value="����">����
    <input type=checkbox name="hobby" id="userhobby" value="����">����<br>
    <input type=checkbox name="hobby" id="userhobby" value="��ȭ����">��ȭ����
    <input type=checkbox name="hobby" id="userhobby" value="���ǰ���">���ǰ���
    <input type=checkbox name="hobby" id="userhobby" value="����">����
    <input type=checkbox name="hobby" id="userhobby" value="����">����
    </p>
   
     <p>
    <label for="usersal">�ҵ����</label>
    <input type=checkbox name="sal" id="usersal" value="100">100~200
    <input type=checkbox name="sal" id="usersal" value="200">200~300
    <input type=checkbox name="sal" id="usersal" value="300">300~400<br>
    <input type=checkbox name="sal" id="usersal" value="400">400~500
    <input type=checkbox name="sal" id="usersal" value="500">500~600
    <input type=checkbox name="sal" id="usersal" value="600">600�̻�
    </p>
     <p>
    <label for="userid">���¹�ȣ</label>
    <input type=text name="num" id="usernum" >
    </p>
    <p class="btnSubmit">
    <input type=button id="btnSub" value=ȸ������>
    <input type=button id="btnCancel" value=�������>
    </p>
    </form>
  </div>
</body>
</html>







