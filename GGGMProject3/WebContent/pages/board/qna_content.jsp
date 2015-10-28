<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*,com.dao.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="dao" class="com.dao.BoardDAO"/>
<%
	String strNo=request.getParameter("no");
	String strPage=request.getParameter("page");
	int curpage=Integer.parseInt(strPage);
	String strRn=request.getParameter("rn");
    BoardDTO d=dao.qnaContentData(Integer.parseInt(strNo));
%>
<c:set var="d" value="<%=d %>"/>
<c:set var="page" value="<%=strPage %>"/>
<c:set var="no" value="<%=strNo %>"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="qna.css"/>
<script type="text/javascript">
function del()
{
	if(!confirm("삭제하시겠습니까?"))         
	 {
	     return                                            
	 }
	 else 
	 { 
		 document.deleteform.submit();     
	 }                    
}
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


<td valign="top" width="640" align="center" id="mk_center"><table id="boardtable" border="0" cellpadding="0" cellspacing="0" width="620">
<tbody><tr>
    <td align="center">
<form id="DeleteForm" name="deleteform" action="qna_delete_ok.jsp" method="post">
 <table width="1078" border="0" cellspacing="0" cellpadding="0">

  <tbody><tr align="center">
    <td><table width="700" border="0" align="center" cellpadding="0" cellspacing="0">
      <tbody><tr align="center">
       <td height="100" style="padding-left:110"><img src="img/board_1.gif"></td>
        </tr>
      <tr>
        <td></td>
        </tr>
    </tbody></table></td>
  </tr>
  <tr>
    <td><table width="700" border="0" align="center" cellpadding="0" cellspacing="0">
      <tbody><tr>
       <td width="700">
  		<table width="700" align="center" id="bv_viewdetail">
<tbody><tr>
    <td width=50% class="bv_title bv_subject" height="26">
    <span class="bv_titlesub">제 &nbsp; 목</span> : <strong>${d.subject }</strong>
    <a href="qna_content.jsp&bno=${dto.no }&page=${curpage}">${dto.subject }</a>
    <td width=50% align=left height="28" class="bv_title bv_subject" style="padding-left: 8px; padding-top:5px;">
    <span class="bv_titlesub">작성자</span> : ${d.id } </td>
    </td>
</tr>
<tr>
    <td width=50% height="28" class="bv_subject" style="padding-left: 8px; padding-top:5px;">
    <span class="bv_titlesub">조회수</span> : ${d.hit } </td>
     <td width=50% align=left height="28" class="bv_subject" style="padding-left: 8px; padding-top:5px;">
    <span class="bv_titlesub">작성일</span> : ${d.regdate }
    <input type=hidden size=15 name=no value=${no }>
    <input type=hidden size=15 name=page value=${page }> 
    </td>
   
</tr>
<tr>
    <td class="bv_subject" height="230" valign="top" style="padding: 13px 8px">${d.content }</td>
</tr>
</tbody></table>

<!-- END BOARD VIEW -->



<!-- COMMENT -->
<table align="center" id="bv_commenttable">
    <tbody><tr>
    <td style="padding-bottom:10">
    <style type="text/css">
#comment_reply_input {
    position: absolute;
    display: none;
    border: 2px solid #757575;
    padding: 7px;
    background: #FFF;
    z-index: 5;
}
#comment_password {
    position: absolute;
    display: none;
    width: 300px;
    border: 2px solid #757575;
    padding: 7px;
    background: #FFF;
    z-index: 6;
}
</style>
<div id="check_auth" style="position: absolute; z-index: 10;"></div>
<div id="comment_reply_input"></div>
<div id="comment_password">
    <form onsubmit="comment_password_submit(); return false;" style="height: 20px; margin: 0; padding: 0;">
    <input type="hidden" id="pw_num" name="pw_num" value="">
    <input type="hidden" id="pw_mode" name="pw_mode" value="">
    <input type="hidden" id="formnum" name="formnum" value="1">
    <span style="font-weight: bold;">비밀번호</span>
    <input type="password" id="input_passwd" name="input_passwd" size="25" value="" style="vertical-align: middle;">
    <img src="images/btn_ok.gif" alt="확인" onclick="comment_password_submit();" style="border: 0px; cursor: pointer; vertical-align: middle;">
    <img src="images/btn_close.gif" alt="닫기" onclick="comment_password_close();" style="border: 0px; cursor: pointer; position: absolute; top: 5px; right: 5px;">
    </form>
</div>
<form name="comment_reply_form" action="board.html?" method="post">
<input type="hidden" name="code" value="hyojung99">
<input type="hidden" name="num1" value="438171">
<input type="hidden" name="num2" value="00000">
<input type="hidden" name="page" value="">
<input type="hidden" name="lock" value="Y">
<input type="hidden" name="type" value="v">
<input type="hidden" name="type2" value="">
<input type="hidden" name="comnum" value="">
<input type="hidden" name="comtype" value="">
<input type="hidden" name="depth" value="">
<input type="hidden" name="cname" value="">
<input type="hidden" name="cpass" value="">
<input type="hidden" name="secret" value="">
<input type="hidden" name="comment" value="">
<input type="hidden" name="privercy_agree" value="">
<input type="hidden" name="third_party_agree" value="">
<input type="hidden" name="trust_agree" value="">
</form>
<form id="comment_form" name="comment" action="board.html?" method="post">

<style type="text/css">
#bc_commentlist , #bc_write{
    border-collapse : collapse;
}
#bc_commentlist {
    color   : #8C8C8C;
}
#bc_write{
    border-top : 1px #cccccc solid;
    padding-bottom   : 7px;
}
.bc_list {
    border-top : 1px #cccccc solid;
    vertical-align  : top;
}
.bc_commentname {
    padding     : 10px;
    text-align  : left;
    width   : 80px;
    color   : #6c6c6c;
}
.bc_commenttext {
    padding     : 10px;
}
.bc_commentline {
    padding-top : 11px;
    width   : 3px;
}
.bc_commentsetup {
    padding     : 10px;
    text-align  : right;
    font-size   :8pt;
    width   : 75px;
}

.bc_title {
    color  : #555555;
    font-weight : bold;
    text-align : left;
    padding : 3px 0px 3px 0px;
}

.bc_title_name {
    width : 60px;
    padding-left: 10px;
}

#bc_textarea {
    height: 42px;
    border: 1px solid #EEEEEE;
}

#bc_input_writer , #bc_input_passwd {
    border: 1px solid #EEEEEE;
    width   : 110px;
    margin : 0px;
}
#bc_input_writer { margin-right : 10px;}
#bc_input_passwd { margin-left : 20px;}

/* 로그인 시 코멘트 작성자명 style */
.bc_writer {
    color   : #6c6c6c;
    padding-right : 20px;
    font-weight : normal;
}
#bc_agree { 
    border-bottom : 1px solid #CCCCCC;
}
td.bc_agree_title { 
    padding : 5px;
}
.privercy_contract {
    padding: 10px;
    width : 750px;
    height : 100px;
    border : 1px solid #CCCCCC;
}
</style>

<!-- COMMENT LIST -->
<table id="bc_commentlist" border="0" cellpadding="0" cellspacing="0" width="100%">
<!-- LOOP START -->

<!-- LOOP END -->
</table>
<!-- END COMMENT LIST -->

<!-- COMMENT WRITE -->
<div id="comment_input">

<table id="bc_write" border="0" cellpadding="0" cellspacing="0" width="100%">
<tbody><tr>
    <td class="bc_title bc_title_name"><img src="img/qna_dot_black.gif" align="absmiddle"> name</td>
    <td class="bc_title">
        <input id="bc_input_writer" type="text" name="cname" size="10" value="" onclick="CheckLogin()" onkeyup="CheckLogin()">
        <img src="img/qna_dot_black.gif" align="absmiddle"> password
        <input id="bc_input_passwd" type="password" name="cpass" size="12" onclick="CheckLogin()" onkeyup="CheckLogin()">
        <input type="hidden" name="secret" value="N">
    </td>
</tr>
<tr>
    <td class="bc_title_name"></td>
    <td>
        <textarea id="bc_textarea" name="comment" rows="3" style="width:510px" onchange="Checklength(this);" onkeyup="Checklength(this);" onclick="CheckLogin()"></textarea>
        <a href="JavaScript:comment('');">
        <img src="img/button_comment.gif" style="vertical-align:top;" border="0"></a>
    </td>
</tr>
</tbody></table>
</div>
<!-- END COMMENT WRITE -->
<input type="hidden" name="code" value="hyojung99">
<input type="hidden" name="num1" value="438171">
<input type="hidden" name="num2" value="00000">
<input type="hidden" name="page" value="">
<input type="hidden" name="lock" value="Y">
<input type="hidden" name="type" value="v">
<input type="hidden" name="type2">
<input type="hidden" name="comnum">
<input type="hidden" name="comtype">
<input type="text" name="___DUMMY___" readonly="" disabled="" style="display:none;">

</form>    </td>
    </tr>
</tbody></table>
<!-- COMMENT END -->

<!-- LINK_ (DELETE, MODIFY, INSERT ) -->
<table id="bv_showbutton" border="0" width="100%" style="margin-bottom:31px">
<tbody><tr>
    <td align="right">
     
        <a href="javascript:del()">
        <img src="img/qna_delete.gif" border="0"></a>    
        <a href="qna_modify.jsp?no=<%=d.getNo()%>&page=<%=curpage%>&rn=<%=d.getRownum()%>">
        <img src="img/qna_modify.gif" border="0"></a>
        <a href="qna.jsp?page=<%=strPage %>"><img src="img/detail_list.gif" border="0"></a> </td>
</tr>
</tbody></table>
<!-- LINK_ END -->

	</td>
      </tr>
    </tbody></table></td>
  </tr>
  <tr>
    <td height="150"></td>
  </tr>
  
</tbody></table>
</form>
    </td>
</tr>
</tbody></table>

<script type="text/javascript" src="js/cookie.js"></script>
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