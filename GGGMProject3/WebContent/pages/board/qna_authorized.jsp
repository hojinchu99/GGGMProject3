<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*,com.dao.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="dao" class="com.dao.BoardDAO"/>
<%
	String strNo=request.getParameter("no");
	String strPage=request.getParameter("page");
	String strRn=request.getParameter("rn");
	int curpage=Integer.parseInt(strPage);
    BoardDTO d=dao.qnaContentData2(Integer.parseInt(strNo));
%>
<c:set var="d" value="<%=d %>"/>
<c:set var="curpage" value="<%=strPage %>"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
  <script type="text/javascript">
    $(function(){
    	$('#btnSub').click(function(){
    		if(document.form1.pwd.value=="")
    		{
    			alert("비밀번호를 입력하세요");
    	    	document.form1.passwd.focus();
    	    	return;
    		}
    		$('#authorizedForm').submit();
    	});
    });
    
    </script>
</head>
<body>
<table border="0" cellspacing="0" cellpadding="0" width="770" id="makebanner">
<tbody><tr>

<!-- 전체 레이아웃 테이블 -->
<form action="/shop/shopbrand.html" method="post" name="search"></form>
<td valign="top" width="150" height="100%" id="mk_left">
<br>            <script>
                // login id setting
                if(typeof document.search != "undefined" && typeof document.search.id != "undefined" && typeof document.search.save_id != "undefined") {
                    document.search.id.value = getCookieMS('save_id');
                    if(document.search.id.value=="null") document.search.id.value="";
                    if(typeof document.search.id != "undefined" && document.search.id.value.length>0) document.search.save_id.checked=true; 
                }
            </script></td>
<form name="formlogin" method="post" action="/html/mainm.html"></form>
<input type="hidden" name="id"><input type="hidden" name="passwd">
<input type="hidden" name="type" value="login">
<input type="hidden" name="returnurl" value="/board/board.html?code=hyojung99&amp;page=1&amp;type=v&amp;num1=438122&amp;num2=00000&amp;s_id=&amp;stext=%BB%F3%C7%B0&amp;ssubject=ok&amp;shname=&amp;scontent=&amp;datekey=0&amp;lock=Y&amp;code=hyojung99">
<input type="hidden" name="ssl">
<input type="hidden" name="sslid" value="hyojung99">
<input type="hidden" name="sslip" value="www.style-story.com">
<input type="hidden" name="formname" value="formlogin">
<input type="hidden" name="sendfunc" value="formnewsend">
<input type="hidden" name="msecure_key">
<input type="hidden" name="save_id">

<td valign="top" width="640" align="center" id="mk_center"><table id="boardtable" border="0" cellpadding="0" cellspacing="0" width="620">
<tbody><tr>
    <td align="center">
<form id="authorizedForm" name="form1" action="qna_authorized_ok.jsp" method="post"><!-- CHECK PASSWORD FORM -->
<style>
#bp_input SPAN {
    color           : #000000;
    font-weight     : 800;
    padding-left    : 5px;    
}
#bp_input_passwd {
    border          : 1px #d0d0d0 solid;
    width           : 142px;
}
#bp_middle {
    padding         : 6px 0px;
}
#bp_button {
    margin-top      : 12px;
    margin-bottom   : 15px;
}

</style><table width="990" border="0" align="center" cellpadding="0" cellspacing="0">
  <tbody><tr>
    <td height="180" align="center"><img src="img/board_1.gif" width="72" height="23"></td>
  </tr>
 
  <tr>
    <td><table width="700" border="0" align="center" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td><table width="325" border="0" align="center" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td height="1" colspan="3" bgcolor="#d0d0d0"></td>
      </tr>
      <tr>
        <td width="1" rowspan="5" bgcolor="#d0d0d0"></td>
        <td height="35"></td>
        <td width="1" rowspan="5" bgcolor="#d0d0d0"></td>
      </tr>
      <tr>
        <td align="center"><div id="bp_middle"><span><b>비밀번호</b> </span>
        <input id="bp_input_passwd" type="password" name="pwd" size="12">
        <input type=hidden name=no value="<%=strNo %>">
        <input type=hidden name=rn value="<%=strRn %>">
        <input type=hidden name=page value="<%=strPage %>">
		<%--hidden no,page,rn --%>
        </div></td>
      </tr>
      <tr>
        <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tbody><tr>
            <td height="70" colspan="3" align="center">
              <img src="img/detail_ok.gif" border="0" id="btnSub"></a>
			  <a href="javascript:history.back()"><img src="img/detail_cancel.gif" border="0"></a></td>
            </tr>
       
        </tbody></table></td>
      </tr>
      <tr>
        <td></td>
      </tr>
      <tr>
        <td height="50" align="center" valign="middle"><img src="img/bd_pass01.gif" width="310" height="40"></td>
      </tr>
      <tr>
        <td height="1" colspan="3" bgcolor="#d0d0d0"></td>
      </tr>
    </tbody></table></td>
      </tr>
    </tbody></table></td>
  </tr>
  <tr>
    <td height="150"></td>
  </tr>
  
</tbody></table>
    <input type="hidden" name="lock" value="Y">
    <input type="hidden" name="lock_check" value="Y">    <input type="hidden" name="BRO_CHK_KEY" value="84bcafcc075e6abdbf6c5b7fd46d4c8d6ff3744e50964a13da6360555c04a6e6">
    <input type="hidden" name="code" value="hyojung99">
    <input type="hidden" name="num1" value="438122">
    <input type="hidden" name="num2" value="00000">
    <input type="hidden" name="page" value="1">
    <input type="hidden" name="type" value="v">    
    </form>
    </td>
    
    
</tr>
</tbody></table>
<script type="text/javascript" src="/js/cookie.js"></script>
<script type="text/javascript">
var selectedobj;
var dragapproved = false;
var zindex = 100;
function drag_move() {
	if(dragapproved) {
		selectedobj.style.left = base_x + event.clientX - previous_x;
		selectedobj.style.top  = base_y + event.clientY - previous_y;
		return false;
	}
}

function start_drag(drag_id) {
	selectedobj = document.getElementById(drag_id);
	selectedobj.style.zIndex = zindex++;
        if(document.body && document.body.setCapture) {
           // body 화면 고정(IE전용) 
           document.body.setCapture();
        }
	base_x = parseInt(selectedobj.style.left);
	base_y = parseInt(selectedobj.style.top);
	previous_x = event.clientX;
	previous_y = event.clientY;
	dragapproved = true;
}

function drag_release() {
	dragapproved=false;
        if (document.body && document.body.releaseCapture) {
          // body화면 고정풀기(IE전용)
          document.body.releaseCapture();
        }
}
document.onmousemove = drag_move;
document.onmouseup = drag_release;
</script>


<script type="text/javascript">
    function nhn_anchor(pid) {
        
        
    }
</script>
</td></tr></tbody></table>
</body>
</html>