<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="qna.css"/>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	/* $('#username').focus(); */
	$('#btnSub').click(function(){
		if(document.form1.id.value=="")
		{
			alert("아이디를 입력하세요");
			document.form1.id.focus();
			return;
		}
		if(document.form1.pwd.value=="")
		{
			alert("비밀번호를 입력하세요");
			document.form1.pwd.focus();
			return;
		}
		if(document.form1.subject.value=="")
		{
			alert("말머리를 입력하세요");
			return;
		}
		if (document.form1.content.value.length==0) 
		{
		      alert('내용을 입력하세요.');
		      document.form1.content.focus();
		      return;
		}
		$('#writeForm').submit();
	});
});
</script>
</head>
<body>
	<form id="writeForm" name="form1" action="qna_write_ok.jsp" method="post">
		<div id="passimg" name="passimg"
			style="position: absolute; visibility: hidden;"></div>
		<input type="hidden" name="attach1" value="">

		<table width="1078" border="0" cellspacing="0" cellpadding="0">
			<tbody>
				<tr>
					<td align="center" height=100><img src="img/board_1.gif"></td>
				</tr>
				<tr>
					<td><table width="700" border="0" align="center"
							cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<td><table width="700" border="0" align="center"
											cellpadding="0" cellspacing="0" class="bw_border_bottom"
											id="bw_table">
											<tbody>
												<tr>
													<td width="100" align="center" class="bw_title_color">아이디</td>
													<td><input id="bw_input_writer" type="text" name="id"
														size="10" value=""> &nbsp;&nbsp;&nbsp; <span
														class="bw_title_color">비밀번호&nbsp; </span> <input
														id="bw_input_passwd" name="pwd" type="password" size="10"></td>
												</tr>
												<tr>
													<td width="100" align="center" class="bw_title_color">제&nbsp;&nbsp;목</td>
													<td class="bw_title_color"><span
														style="font-family: '굴림체'";=""> <select
															name="subject">
																<option value="">제목을 선택하세요</option>
																<option value="회원정보">회원정보</option>
																<option value="광고문의">광고문의</option>
																<option value="포인트환전">포인트환전</option>
																<option value="경품관련">경품관련</option>
																<option value="기타문의">기타문의</option>
														</select>&nbsp;
													</span></td>
												</tr>
												<tr>
													<td width="100" align="center"
														class="bw_title_color bw_border_top bw_contentscolor">내용</td>
													<td class="bw_value bw_border_top bw_contentscolor">
													<textarea id="bw_contents" name="content" cols="67" rows="15"
															wrap="on" onfocus="clear_content()"
															style="font-family: 굴림체; width: 100%;"></textarea>
											     	</td>
												</tr>


											</tbody>
										</table></td>
								</tr>
								<tr>
									<td><table width="700" border="0" align="center"
											cellpadding="0" cellspacing="0">
											<tbody>
												<tr>
													<td>
														<div id="bw_button">

															
															<img src="img/detail_ok.gif" id="btnSub" alt="입력" border="0">
															<a href="javascript:history.back()"><img src="img/detail_list.gif" alt="목록" border="0"></a>
			
														</div>
													</td>
												</tr>
											</tbody>
										</table></td>
								</tr>
							</tbody>
						</table></td>
				</tr>
				<tr>
					<td height="150">&nbsp;</td>
				</tr>

			</tbody>
		</table>
	</form>
</body>
</html>