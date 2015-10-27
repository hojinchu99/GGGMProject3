<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
#idBody{
color:white;
}
#idDiv{
margin-top: 20px;
}
span{
	color:red;
}
</style>
</head>
<body id="idBody">
  <center>
  <form action="<%=request.getContextPath() %>/idcheck.do">
    <div id="idDiv">
    ID입력: <input type=text name="id" size=12>
    <input type="submit" value="아이디체크">
    <br><br>
    <c:if test="${idcheck==null}">
    	<span>아이디를 입력하세요</span>
    </c:if>
    <c:if test="${idcheck==1}">
    	<span>사용 중인 아이디입니다</span>
    </c:if>
    <c:if test="${idcheck==2}">
    	<span>사용 가능한 아이디입니다</span>
    </c:if>
    </div> 
  </form>
  </center>

</body>
</html>