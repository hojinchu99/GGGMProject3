<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
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
<input type="hidden" name="returnurl" value="/board/board.html?code=hyojung99_board6&amp;code=hyojung99_board6">
<input type="hidden" name="ssl">
<input type="hidden" name="sslid" value="hyojung99">
<input type="hidden" name="sslip" value="www.style-story.com">
<input type="hidden" name="formname" value="formlogin">
<input type="hidden" name="sendfunc" value="formnewsend">
<input type="hidden" name="msecure_key">
<input type="hidden" name="save_id">

<td valign="top" width="640" align="center" id="mk_center"><table id="boardtable" border="0" cellpadding="0" cellspacing="0" width="850">
<tbody><tr>
    <td align="center">


<form action="board.html" name="form1">
    <style>
#boardtable TABLE { border-collapse : collapse; }
#boardtable IMG { border : 0px; }
#bl_table {
    border-bottom : 2px solid #d0d0d0;
}
.bl_title {
    color       : #6c6c6c;
    font-weight : normal;
    text-align  : center;
    height      : 45px;
    font-family : arial, dotum, '돋움';
    background  : #ffffff;
	border-bottom : 1px solid #d0d0d0;
	border-top : 2px solid #d0d0d0;
}
.bl_list {
    height : 45px;
    border-bottom: 1px solid #cccccc;
}
TD.bl_list, .bl_list A, .bl_list A:link, .bl_list A:visited {
    font-family: arial, dotum, '돋움';
    font-size : 12px;
    color : #6c6c6c;
}
.bl_commentNum {
    font-size   : 8pt;
    font-weight : 800;
}
.bl_pagetext, .bl_pagetext A, .bl_pagetext A:visited, .bl_pagetext A:link, .bl_pagetext A:hover {
    color       : #555555;
    font-family : Arial;
}
.bl_curpage, .bl_curpage A, .bl_curpage A:visited, .bl_curpage A:link {
    color       : #000000;
    font-family : Arial;
}
#bl_count {
    text-align: left;
    line-height : 45px;
}
#bl_search {
    text-align: right;
    line-height : 45px;
}
#bl_title_no  {
    background  : url(/images/b2/0_12/title_line_start.gif) #ffffff no-repeat;
}
#bl_title_hits {
    background  : url(/images/b2/0_12/title_line_end.gif) #ffffff right 0px no-repeat;
}
.bl_no {
    width: 40px;       
    text-align  : center;
}
.bl_icon {
    width: 30px;       
    text-align  : center;
}
.bl_product {
    width: 70px;       
    text-align  : center;
}
.bl_subject {
    text-align  : center;
}
.bl_name {
     width : 120px;
    text-align  : center;
}
.bl_date {
    width   : 70px;
    text-align  : center;
}
.bl_hits {
    width       : 60px;
    text-align  : center;
}
.leftalign {
    text-align  : left;
}
#bl_linkbutton {
    width : 70px;
    text-align : right;
}
#bl_pages {
    text-align : center;
}
</style>
<table width="850" border="0" align="center" cellpadding="0" cellspacing="0">
  <tbody><tr align="center">
    <td height="150"><img src="img/notice.gif"></td>
  </tr>
</tbody></table>


<!-- LIST TITLE -->
<table width="850" border="0" align="center" cellpadding="0" cellspacing="0" id="bl_table">
<tbody><tr>
    <td class="bl_title bl_no">NO</td>
    <td class="bl_title bl_icon">&nbsp;</td>
    
    <td class="bl_title bl_subject">CONTENTS</td>
    <td class="bl_title bl_name">WRITER</td>
    
    <td class="bl_title bl_date">DATE</td>
    
    <td></td>
</tr>
<!-- INLINE NOTICE -->

<!-- LIST REPEAT -->

<tr class="bl_noticeline">
    <td class="bl_list bl_no">:::</td>
    <td class="bl_list bl_icon"><img src="img/b2_notice.gif"></td>
    
	<td class="bl_list bl_subject leftalign" colspan="1">
        <img src="img/board_head.gif" style="margin-right:5px;" align="absmiddle"><span class="BoardBrandName"></span><a href="board.html?code=hyojung99_board6&amp;page=1&amp;type=v&amp;num1=999996&amp;num2=00000&amp;lock=N&amp;flag=notice">후기 적립금 안내</a>&nbsp;&nbsp;
    </td>
    <td class="bl_list bl_name"><div style="padding-left:2px; padding-right:2px;">작성자</div></td>
    
    <td class="bl_list bl_date"><span class="bl_oldcontent">2015/08/27</span></td>
    
    <td></td>
</tr>

<tr class="bl_noticeline">
    <td class="bl_list bl_no">:::</td>
    <td class="bl_list bl_icon"><img src="img/b2_notice.gif"></td>
    
	<td class="bl_list bl_subject leftalign" colspan="1">
        <img src="img/board_head.gif" style="margin-right:5px;" align="absmiddle"><span class="BoardBrandName"></span><a href="board.html?code=hyojung99_board6&amp;page=1&amp;type=v&amp;num1=999997&amp;num2=00000&amp;lock=N&amp;flag=notice">반품/교환/환불 규정</a>&nbsp;&nbsp;
    </td>
    <td class="bl_list bl_name"><div style="padding-left:2px; padding-right:2px;">작성자</div></td>
    
    <td class="bl_list bl_date"><span class="bl_oldcontent">2015/08/27</span></td>
    
    <td></td>
</tr>

<tr class="bl_noticeline">
    <td class="bl_list bl_no">:::</td>
    <td class="bl_list bl_icon"><img src="img/b2_notice.gif"></td></td>
    
	<td class="bl_list bl_subject leftalign" colspan="1">
        <img src="img/board_head.gif" style="margin-right:5px;" align="absmiddle"><span class="BoardBrandName"></span><a href="board.html?code=hyojung99_board6&amp;page=1&amp;type=v&amp;num1=999998&amp;num2=00000&amp;lock=N&amp;flag=notice">회원 등급제도</a>&nbsp;&nbsp;
    </td>
    <td class="bl_list bl_name"><div style="padding-left:2px; padding-right:2px;">작성자</div></td>
    
    <td class="bl_list bl_date"><span class="bl_oldcontent">2015/08/27</span></td>
    
    <td></td>
</tr>

<tr class="bl_oddline">
    <td class="bl_list bl_no">2</td>
    <td class="bl_list bl_icon"><img src="img/star_notice.gif" border="0"></td>
    
	<td class="bl_list bl_subject leftalign" colspan="1">
        <img src="img/board_head.gif" style="margin-right:5px;" align="absmiddle"><span class="BoardBrandName"></span><a href="board.html?code=hyojung99_board6&amp;page=1&amp;type=v&amp;num1=999994&amp;num2=00000&amp;lock=N">스타일스토리 공식 인스타그램 오픈이벤트</a>&nbsp;&nbsp;
    </td>
    <td class="bl_list bl_name"><div style="padding-left:2px; padding-right:2px;">작성자</div></td>
    
    <td class="bl_list bl_date"><span class="bl_oldcontent">2015/10/16</span></td>
    
    <td></td>
</tr>

<tr class="bl_evenline">
    <td class="bl_list bl_no">1</td>
    <td class="bl_list bl_icon"><img src="img/star_notice.gif" border="0"></td>
    
	<td class="bl_list bl_subject leftalign" colspan="1">
       <img src="img/board_head.gif" style="margin-right:5px;" align="absmiddle"><span class="BoardBrandName"></span><a href="board.html?code=hyojung99_board6&amp;page=1&amp;type=v&amp;num1=999995&amp;num2=00000&amp;lock=N">우체국택배 토요일 배달 알림</a>&nbsp;&nbsp;
    </td>
    <td class="bl_list bl_name"><div style="padding-left:2px; padding-right:2px;">작성자</div></td>
    
    <td class="bl_list bl_date"><span class="bl_oldcontent">2015/09/11</span></td>
    
    <td></td>
</tr>



<!-- LIST REPEAT END -->
</tbody></table>
<!-- LIST END -->

<br>
<!-- PAGING START-->
<table width="850" border="0" align="center">
<tbody><tr>
    <td id="bl_pages">
    
    
     <span class="bl_curpage bl_pagetext">1</span>
    
    
    </td>
    <td id="bl_linkbutton">
        
    </td>
</tr>
</tbody></table>
<!-- PAGING END-->
    <input type="hidden" name="s_id" value="">
    <input type="hidden" name="code" value="hyojung99_board6">
    <input type="hidden" name="page" value="1">
    <input type="hidden" name="type" value="s">
</form>
<script type="text/javascript">
function change(temp) {
    onoff   = new Array(document.form1.shname,document.form1.ssubject,document.form1.scontent, document.form1.sbrand);
    temp    = temp-1;
    if(typeof document.form1.sbrand !="undefined") temp2=4;
    else temp2=3;
    for (i=0;i<temp2;i++) {
        if(i == temp) {
            onoff[i].checked = true;
        } else {
            onoff[i].checked = false;
        }
    }
}

</script>    </td>
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