<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<style type="text/css">
#join{margin-top: 50px;}
tr{}
</style>
<title>Insert title here</title>
</head>
<body>
	<center>
		<div id=join>
			<table align="center" width="600" border="1">
				<tr>
					<td width=20%>아이디(이메일)</td>
					<td width=30%><input type=text size=20></td> 
					<td><input type=button size=10 value="ID중복검사">	</td>
				</tr>
				<tr>
					<td width=30%>암호</td>
					<td width=70%>
					<input type=password size=15 name=pwd>
					 <input type=password size=15 name=pwd1>
					 </td>
					 <td></td>
				</tr>
				<tr>
					<td width=30%>이름</td>
					<td width=70%><input type=text size=20></td>
				</tr>
				<tr>
					<td width=30%>생일</td>
					<td width=70%><input type=text size=4>년 <input
						type=text size=2>월 <input type=text size=2>일</td>
				</tr>
				<tr>
					<td width=30%>성별</td>
					<td width=70%>
						<input type=radio name='group1' value=man size=12 >남자
						<input type=radio name='group1' value=woman size=12 >여자
					</td>
					</tr>
					<tr>
						<td width=30%>우편번호</td>
						<td width=70%>
							<input type=text size=3>&nbsp-
							<input type=text size=3>
							<input type=button value="검색">					
						</td>
					</tr>					
						<td rowspan="2" width=30%>주소</td>
						<td width=70%>
							<input type=text size=50 name=addr1>	
						</td>
					</tr>
					<tr>
						<td width=30%></td>
						<td width=70%>	
							<input type=text size=50 name=addr2>
						</td>
					</tr>
					<tr>
						<td width=30%>전화번호</td>
						<td width=70%>
							<input type=text size=3 name=homeNum1>&nbsp-
							<input type=text size=4 name=homeNum2>&nbsp-
							<input type=text size=4 name=homeNum3>
						</td>
					</tr>
		
				<tr>
					<td width=30%>메일수신</td>
					<td width=70%>
						<input type=radio name='group2' value=agree size=12  >수신동의
						<input type=radio name='group2' value=refuse size=12 >수신거절
					</td>
				
				</tr>
				<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
				<tr>
					<td width=30%></td>
					<td width=70% >
						<a href="addInfo.jsp">
						<input type=submit  value="가입"></a>
						<a href="javascript:history.back()">
						<input type=button  value="취소">
						</a>
					</td>
				</tr>
			</table>
		</div>
	</center>

</body>
</html>