<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>An example showing how the fullPage.js jQuery plugin
	works</title>

<!-- css files -->
<link
	href='http://fonts.googleapis.com/css?family=Alegreya+Sans:300,400,700'
	rel='stylesheet' type='text/css'>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/2.6.6/jquery.fullPage.css"
	rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<!-- Bootstrap, CSS, Fonts of Login box -->
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/stylish-portfolio.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <![endif]-->

<link rel="stylesheet" type="text/css" href="css/shadowbox.css" />

<style type="text/css">
@import url(http://fonts.googleapis.com/earlyaccess/jejuhallasan.css);

@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);

.header-top clearfix {
	z-index: -1;
}

#loginMain {
	background-image: url(img/back3.jpg);
	background-size: 100% 100%;
	height: 100%;
	position: relative;
	top: -13px;
}

#signUp {
	float: right;
	margin: 5px 5px;
	font-size: 200%;
	padding: 0 29px 0 10px;
    margin: 0 -25px 0 0;
    horizontal-size: 35px;
}
#signupBtn {
	background-color: #EF851D;
	color: white;
	border-radius: .25em;
	border-size: 2px;
}

section.main {
	position: absolute;
	top: 37.5%;
	left: 38%;
}

#mainHead {
	color: white;
	padding-top: 100px;
	font-size: 450%;
	text-shadow: 1.5px 1.5px #0A0A00;
	font-family: 'SeoulHangang', sans-serif;
}



#video_bg {
	position: absolute;
	top: 0px;
	left: 0px;
	min-width: 100%;
	min-height: 100%;
	width: auto;
	height: overflow: hidden 100%;
}

.vertical-scrolling{
	position:relative;
}

.blackcover{
	position:absolute;
	width:100%;
	height:100%;
	
	
}

#page2 {
	background-size: 100% 100%;
	height: 100%;
	position: relative;
	top: 0px;
}

#page2_1 {
	color: white;
	padding-top: 100px;
	font-size: 800%;
	text-shadow: 1.5px 1.5px #0A0A00;
	font-family: 'SeoulHangang', sans-serif;
	line-height: 150% /* color: black;
	padding-top: 20px;
	font-size: 450%;
	font-family: 'SeoulHangang', sans-serif;
	font-size:100%; */
}

#font2_1 {
	font-size: 300%;
	font-weight:bold;
	color: #3FE1E2;
	text-shadow: 1.5px 1.5px #0A0A00;
	font-family: 'SeoulHangang', sans-serif;
}

#page3 {
	background-size: 100% 100%;
	height: 100%;
	position: relative;
	top: 0px;
}

#page4 {
	background-image: url(img/back4.jpg);
	background-size: 100% 100%;
	height: 100%;
	position: relative;
	top: 0px;
}

#page4_1 {
	color: white;
	padding-top: 300px;
	font-size: 550%;
	text-shadow: 1.5px 1.5px #0A0A00;
	font-family: 'SeoulHangang', sans-serif;
}

section.main_1 {
	position: absolute;
	top: 55%;
	left: 38%;
}

#page3_1 {
	z-index: 1;
	color: white;
	padding-top: 100px;
	font-size: 750%;
	text-shadow: 1.5px 1.5px #0A0A00;
	font-family: 'Nanum Gothic', sans-serif;
}

#font3_1 {
	color: white;
	font-size: 150%;
	font-family: 'Nanum Gothic', sans-serif;
	float: center;
	padding: 90px;
	text-shadow: 1.5px 1.5px #0A0A00;
	font-family: 'SeoulHangang', sans-serif;
	text-shadow: 1.5px 1.5px #0A0A00;
}

.tags {
	color: white;
	font-size: 80%;
	font-family: 'SeoulHangang';
}

#page_1 {
	background-image: url(img/back5.jpg);
	background-size: 100% 100%;
	height: 80%;
	position: relative;
}

#font1_1 {
	color: white;
	font-size: 400%;
	float: left;
	padding: 250px;
	text-shadow: 1.5px 1.5px #0A0A00;
	font-family: 'SeoulHangang', sans-serif;
}

#font1_2 {
	color: white;
	font-size: 200%;
	text-shadow: 1.5px 1.5px #0A0A00;
	font-family: 'SeoulHangang', sans-serif;
}

#page1_1 {
	width: 230px;
	height: 50px;
	background-color: orange;
	position: absolute;
	bottom: 280px;
	left: 350px;
	border-radius: 5px;
}

#page_2 {
	height: 100%;
	float: left;
	background-color: rgb(155, 107, 204);
	width: 33%;
	position: relative;
	top: 0px;
}

#page_3 {
	height: 100%;
	float: left;
	background-color: rgb(231, 76, 60);
	width: 33%;
	position: relative;
	top: 0px;
}

#page_4 {
	height: 100%;
	float: right;
	background-color: rgb(39, 215, 231);
	width: 34%;
	position: relative;
	top: 0px;
}

#container {
	width: 100%;
	height: 22%;
}
</style>
<script type="text/javascript" src="js/shadowbox.js"></script>
<script type="text/javascript">
Shadowbox.init({
   players:["iframe"]		
});
function twojoin()
{
	Shadowbox.open({
		content:'member/twojoin.jsp',
		player:'iframe',
		title:'회원가입',
		width:650,
		height:770
		
	});
}
</script>
</head>
<body>

	<header>
		<div class="header-top clearfix">
			<h1 class="l-left">
				<a href="#firstSection"><img src="img/gggm.png"
					style="width: 13%; height: 13%;"></a>
			</h1>
		</div>
	</header>
	<div id="fullpage">
		<section class="vertical-scrolling">
			<!-- <h2>fullPage.js</h2> -->

			<div id="loginMain">
				<div id=signUp>
					<input id="signupBtn" type="button" value="Sign Up Now"
						onclick="twojoin()" style="position: absolute;top: 530px;right: 590px;">
				</div>
				<h3 id="mainHead">
					광고를 보는 것만으로<br>돈을 벌 수 있다면?
				</h3>
				<section class="main">
					<form action="login.do" method="post" id=frmlogin
						class="form-5 clearfix">
						<p>
							<input type="text" id="login" name="id" placeholder="Username">
							<input type="password" name="pwd" id="password"
								placeholder="Password">
						</p>
						<button type="button" id="loginBtn">
							<i class="fa fa-arrow-right"></i> <span>Sign in</span>
						</button>
					</form>
				</section>
			</div>
			<div class="scroll-icon1">
				<a href="" class="tags">약관</a> <a href="" class="tags">개인정보보호</a> <a
					href="" class="tags">채용</a> <a href="" class="tags">지원</a>
			</div>
			<div class="scroll-icon">
				<p>Jump into the last slide</p>
				<a href="#fifthSection/1" class="icon-up-open-big"></a>

			</div>
		</section>
		<%-------------------------------------------------------------------------- --%>
		<section class="vertical-scrolling">
			<div class="blackcover"></div>
			<div class=video>
				<video id="video_bg" preload autoplay="autoplay" loop
					style="width: 100% height:100%">
					<source src="./1.mp4">
				</video>
				<div id="page2">
					<h3 id="page2_1">광고구마는</h3>
					<li id="font2_1">잠재 소비자와 광고주를<br>연결시키는 광고 플랫폼입니다.
					</li>
				</div>
			</div>
		</section>
		<%-------------------------------------------------------------------------- --%>
		<section class="vertical-scrolling">
			<div id="page_1">
				<li id="font1_1">Change One's Mind<br>Make Money
				</li>
				<div id="page1_1">
					<li id="font1_2">CONTACT US</li>
				</div>

			</div>
			<div id="container">
				<div id="page_2">
					<li id=font3_1>"1시간 광고만 봐도<br> ￦1,5000 수익을"
					</li>
				</div>
				<div id="page_3">
					<li id=font3_1>"클릭 한번으로 <br> <i class="fa fa-car"></i>경품,쿠폰까지!"
					</li>
				</div>
				<div id="page_4">
					<li id=font3_1>"알려진 만큼 지불한다"<br> <i
						class="fa fa-line-chart"></i> 광고 분석 서비스
					</li>
				</div>
			</div>
		</section>
		<%-------------------------------------------------------------------------- --%>
		<section class="vertical-scrolling">
			<div id="page4">
				<div id=signUp>
					<input id="signupBtn" type="button" value="Sign Up Now"
						onclick="twojoin()">
				</div>
				<h3 id="page4_1">
					지금까지 없었던 서비스<br>당신이 선두입니다.
				</h3>
				<section class="main_1">
					<form action="login.do" method="post" id=frmlogin
						class="form-5 clearfix">
						<p>
							<input type="text" id="login" name="id" placeholder="Username">
							<input type="password" name="pwd" id="password"
								placeholder="Password">
						</p>
						<button type="button" id="loginBtn">
							<i class="fa fa-arrow-right"></i> <span>Sign in</span>
						</button>
					</form>
				</section>
			</div>
		</section>
		<%-------------------------------------------------------------------------- --%>
	</div>

	<!-- js files -->
	<!-- js for fullPage -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script>
	<script src="js/fullpage.js"></script>
	<script src="js/main.js"></script>

	<script type="text/javascript" src="js/jquery.placeholder.min.js"></script>
	<script type="text/javascript" src="js/shadowbox.js"></script>
	<script type="text/javascript">
		Shadowbox.init({
			players : [ "iframe" ]
		});
		function join() {
			Shadowbox.open({
				content : 'join.jsp',
				player : 'iframe',
				title : '회원가입',
				width : 800,
				height : 700
			});
		}
		$('#loginBtn').click(function(){
			var id=$('#login').val();
			if(id=="")
			{
				$('#login').focus();
				return;
			}
			var pwd=$('#password').val();
			if(pwd=="")
			{
				$('#password').focus();
				return;
			}
			$('#frmlogin').submit();				
		});
	</script>
</body>
</html>