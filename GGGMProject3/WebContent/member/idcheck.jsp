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
  <form action="<%=request.getContextPath() %>/idcheck.do" method="post" id="frm_id">
    <div id="idDiv">
    ID�Է�: <input type=text name="id" size=12 id="idinput">
    <input type="button" value="���̵�üũ" id="idcheck">
    <br><br>
    <span id="result" style="color:yellow"></span>
	<c:if test="${idcheck==null}">
    	<span id="defaultSpan">���̵� �Է��ϼ���</span>
    </c:if>
    <c:if test="${idcheck==1}">
    	<span>��� ���� ���̵��Դϴ�</span>
    </c:if>
    <c:if test="${idcheck==2}">
    	<span>��� ������ ���̵��Դϴ�</span><br>
    	<%-- <a href="<%=request.getContextPath()%>/idokay.do?id=${usableId}" style="color:yellow">${usableId} ����ϱ�</a> --%>
    	<a href="javascript:ok()" style="color:yellow" id="usableId">${usableId}</a>&nbsp;����ϱ�
    </c:if>
    </div> 
  </form>
  </center>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$('#idcheck').click(function(){
	var id=$("#idinput").val();
	if(id==""){
		$('#defaultSpan').remove();
		$('#result').text("���̵� �Է��ϼ���");
		return;
	}
	$('#frm_id').submit();
});
function ok(){
	var id=$('#usableId').val();
	$(opener.document).find('#userid').val(id);
	
}
</script>
</body>
</html>