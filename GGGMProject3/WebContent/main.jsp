<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.change.*,com.dao.*,java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String strNo = request.getParameter("no");
	String id = (String) session.getAttribute("id");
	memberDAO dao = new memberDAO();
	memberDTO d = dao.getMemberInfo(id);

	String color = null;
	if (strNo == null) {
		strNo = "0";
	}
	
	String jsp = mainJSPChange.change(Integer.parseInt(strNo));

	if (d.getGrade() == 1) {
		color = "black";
	} else if (d.getGrade() == 2) {
		color = "blue";
	} else {
		color = "red";
	}
%>
<c:set var="jsp" value="<%=jsp%>" />
<c:set var="dao" value="<%=d%>" />
<c:set var="color" value="<%=color%>" />
<!DOCTYPE html>
<html>
<<<<<<< HEAD
    <head>
        <meta charset="UTF-8">
        <title>GGGM | Dashboard</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <!-- bootstrap 3.0.2 -->
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- font Awesome -->
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Ionicons -->
        <link href="css/ionicons.min.css" rel="stylesheet" type="text/css" />
        <!-- Morris chart -->
        <link href="css/morris/morris.css" rel="stylesheet" type="text/css" />
        <!-- jvectormap -->
        <link href="css/jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />
        <!-- fullCalendar -->
        <link href="css/fullcalendar/fullcalendar.css" rel="stylesheet" type="text/css" />
        <!-- Daterange picker -->
        <link href="css/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
        <!-- bootstrap wysihtml5 - text editor -->
        <link href="css/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" />
        
        <!-- Theme style -->
        <link href="css/AdminLTE.css" rel="stylesheet" type="text/css" />        
        <link rel="stylesheet" href="css/faq/style.css">
        
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
=======
<head>
<meta charset="UTF-8">
<title>AdminLTE | Dashboard</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<!-- bootstrap 3.0.2 -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<!-- font Awesome -->
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<!-- Ionicons -->
<link href="css/ionicons.min.css" rel="stylesheet" type="text/css" />
<!-- Morris chart -->
<link href="css/morris/morris.css" rel="stylesheet" type="text/css" />
<!-- jvectormap -->
<link href="css/jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet"
	type="text/css" />
<!-- fullCalendar -->
<link href="css/fullcalendar/fullcalendar.css" rel="stylesheet"
	type="text/css" />
<!-- Daterange picker -->
<link href="css/daterangepicker/daterangepicker-bs3.css"
	rel="stylesheet" type="text/css" />
<!-- bootstrap wysihtml5 - text editor -->
<link href="css/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css"
	rel="stylesheet" type="text/css" />

<!-- Theme style -->
<link href="css/AdminLTE.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/faq/style.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
>>>>>>> refs/remotes/origin/master
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
<<<<<<< HEAD
     
    </head>
    <body class="skin-black" >
        <!-- header logo: style can be found in header.less -->
        <header class="header">
            <a href="main.jsp" class="logo" style="background-color: ${color}">
                <!-- Add the class icon to your logo image or logo icon to add the margining -->
                GGGM
            </a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top" role="navigation">
                <!-- Sidebar toggle button-->
                <a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <div class="navbar-right">
                    <ul class="nav navbar-nav">
                        <!-- Messages: style can be found in dropdown.less-->
                        <li class="dropdown messages-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-envelope"></i>
                                <span class="label label-success">4</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">You have 4 messages</li>
                                <li>
                                    <!-- inner menu: contains the actual data -->
                                    <ul class="menu">
                                        <li><!-- start message -->
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="img/avatar3.png" class="img-circle" alt="User Image"/>
                                                </div>
                                                <h4>
                                                    Support Team
                                                    <small><i class="fa fa-clock-o"></i> 5 mins</small>
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                            </a>
                                        </li><!-- end message -->
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="img/avatar2.png" class="img-circle" alt="user image"/>
                                                </div>
                                                <h4>
                                                    AdminLTE Design Team
                                                    <small><i class="fa fa-clock-o"></i> 2 hours</small>
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="img/avatar.png" class="img-circle" alt="user image"/>
                                                </div>
                                                <h4>
                                                    Developers
                                                    <small><i class="fa fa-clock-o"></i> Today</small>
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="img/avatar2.png" class="img-circle" alt="user image"/>
                                                </div>
                                                <h4>
                                                    Sales Department
                                                    <small><i class="fa fa-clock-o"></i> Yesterday</small>
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="img/avatar.png" class="img-circle" alt="user image"/>
                                                </div>
                                                <h4>
                                                    Reviewers
                                                    <small><i class="fa fa-clock-o"></i> 2 days</small>
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="footer"><a href="#">See All Messages</a></li>
                            </ul>
                        </li>
                        <!-- Notifications: style can be found in dropdown.less -->
                        <li class="dropdown notifications-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-warning"></i>
                                <span class="label label-warning">10</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">You have 10 notifications</li>
                                <li>
                                    <!-- inner menu: contains the actual data -->
                                    <ul class="menu">
                                        <li>
                                            <a href="#">
                                                <i class="ion ion-ios7-people info"></i> 5 new members joined today
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-warning danger"></i> Very long description here that may not fit into the page and may cause design problems
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-users warning"></i> 5 new members joined
                                            </a>
                                        </li>
=======
>>>>>>> refs/remotes/origin/master

<<<<<<< HEAD
                                        <li>
                                            <a href="#">
                                                <i class="ion ion-ios7-cart success"></i> 25 sales made
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="ion ion-ios7-person danger"></i> You changed your username
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="footer"><a href="#">View all</a></li>
                            </ul>
                        </li>
                        <!-- Tasks: style can be found in dropdown.less -->
                        <li class="dropdown tasks-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-tasks"></i>
                                <span class="label label-danger">9</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">You have 9 tasks</li>
                                <li>
                                    <!-- inner menu: contains the actual data -->
                                    <ul class="menu">
                                        <li><!-- Task item -->
                                            <a href="#">
                                                <h3>
                                                    Design some buttons
                                                    <small class="pull-right">20%</small>
                                                </h3>
                                                <div class="progress xs">
                                                    <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">20% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li><!-- end task item -->
                                        <li><!-- Task item -->
                                            <a href="#">
                                                <h3>
                                                    Create a nice theme
                                                    <small class="pull-right">40%</small>
                                                </h3>
                                                <div class="progress xs">
                                                    <div class="progress-bar progress-bar-green" style="width: 40%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">40% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li><!-- end task item -->
                                        <li><!-- Task item -->
                                            <a href="#">
                                                <h3>
                                                    Some task I need to do
                                                    <small class="pull-right">60%</small>
                                                </h3>
                                                <div class="progress xs">
                                                    <div class="progress-bar progress-bar-red" style="width: 60%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">60% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li><!-- end task item -->
                                        <li><!-- Task item -->
                                            <a href="#">
                                                <h3>
                                                    Make beautiful transitions
                                                    <small class="pull-right">80%</small>
                                                </h3>
                                                <div class="progress xs">
                                                    <div class="progress-bar progress-bar-yellow" style="width: 80%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">80% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li><!-- end task item -->
                                    </ul>
                                </li>
                                <li class="footer">
                                    <a href="#">View all tasks</a>
                                </li>
                            </ul>
                        </li>
                        <!-- User Account: style can be found in dropdown.less -->
                        <li class="dropdown user user-menu" >
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="glyphicon glyphicon-user"></i>
                                <span style="color:${color};">${dao.name }<i class="caret"></i></span>
                            </a>
                            <ul class="dropdown-menu" >
                                <!-- User image -->
                                <li class="user-header bg-light-blue">
                                    <img src="img/avatar3.png" class="img-circle" alt="User Image" />
                                    <p>
                                        ${dao.name}
                                        <small>Member since Nov. 2012</small>
                                    </p>
                                </li>
                                <!-- Menu Body -->
                                <li class="user-body">
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Followers</a>
                                    </div>
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Sales</a>
                                    </div>
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Friends</a>
                                    </div>
                                </li>
                                <!-- Menu Footer-->
                                <li class="user-footer">
                                    <div class="pull-left">
                                        <a href="#" class="btn btn-default btn-flat">Profile</a>
                                    </div>
                                    <div class="pull-right">
                                        <a href="fullpageMain.jsp" class="btn btn-default btn-flat">Sign out</a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <div class="wrapper row-offcanvas row-offcanvas-left" >
            <!-- Left side column. contains the logo and sidebar -->
            <aside class="left-side sidebar-offcanvas">
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu" >
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-bar-chart-o"></i>
                                <span>광고시청</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="main.jsp?no=1"><i class="fa fa-angle-double-right"></i>HOT</a></li>
                                <li><a href="main.jsp?no=2"><i class="fa fa-angle-double-right"></i>Local</a></li>
                                <li><a href="main.jsp?no=3"><i class="fa fa-angle-double-right"></i>추천</a>
                                </li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-laptop"></i>
                                <span>내정보</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="main.jsp?no=4"><i class="fa fa-angle-double-right"></i>환전</a></li>
                                <li><a href="main.jsp?no=5"><i class="fa fa-angle-double-right"></i>포인트 관리</a></li>
                                <li><a href="main.jsp?no=6"><i class="fa fa-angle-double-right"></i>경품 관리</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-bar-chart-o"></i>
                                <span>게시판</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="main.jsp?no=7"><i class="fa fa-angle-double-right"></i>공지사항</a></li>
                                <li><a href="main.jsp?no=8"><i class="fa fa-angle-double-right"></i>QnA</a></li>
                                <li><a href="main.jsp?no=9"><i class="fa fa-angle-double-right"></i>FAQ</a>
                                </li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-edit"></i> <span>광고주분석</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="main.jsp?no=10"><i class="fa fa-angle-double-right"></i>그래프</a></li>
                                <li><a href="main.jsp?no=11"><i class="fa fa-angle-double-right"></i>광고비용 산출</a></li>
                                <li><a href="main.jsp?no=12"><i class="fa fa-angle-double-right"></i>광고 신청</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-table"></i> <span>Admin</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="main.jsp?no=13"><i class="fa fa-angle-double-right"></i>회원관리</a></li>
                                <li><a href="main.jsp?no=14"><i class="fa fa-angle-double-right"></i>게시글 관리</a></li>
                            </ul>
                        </li>
                        
                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside>
=======
</head>
<body class="skin-black">
	<!-- header logo: style can be found in header.less -->
	<header class="header">
		<a href="main.jsp" class="logo"> <!-- Add the class icon to your logo image or logo icon to add the margining -->
			AdminLTE
		</a>
		<!-- Header Navbar: style can be found in header.less -->
		<nav class="navbar navbar-static-top" role="navigation">
			<!-- Sidebar toggle button-->
			<a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas"
				role="button"> <span class="sr-only">Toggle navigation</span> <span
				class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span>
			</a>
			<div class="navbar-right">
				<ul class="nav navbar-nav">
					<!-- Messages: style can be found in dropdown.less-->
					<li class="dropdown messages-menu"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"> <i
							class="fa fa-envelope"></i> <span class="label label-success">4</span>
					</a>
						<ul class="dropdown-menu">
							<li class="header">You have 4 messages</li>
							<li>
								<!-- inner menu: contains the actual data -->
								<ul class="menu">
									<li>
										<!-- start message --> <a href="#">
											<div class="pull-left">
												<img src="img/avatar3.png" class="img-circle"
													alt="User Image" />
											</div>
											<h4>
												Support Team <small><i class="fa fa-clock-o"></i> 5
													mins</small>
											</h4>
											<p>Why not buy a new awesome theme?</p>
									</a>
									</li>
									<!-- end message -->
									<li><a href="#">
											<div class="pull-left">
												<img src="img/avatar2.png" class="img-circle"
													alt="user image" />
											</div>
											<h4>
												AdminLTE Design Team <small><i class="fa fa-clock-o"></i>
													2 hours</small>
											</h4>
											<p>Why not buy a new awesome theme?</p>
									</a></li>
									<li><a href="#">
											<div class="pull-left">
												<img src="img/avatar.png" class="img-circle"
													alt="user image" />
											</div>
											<h4>
												Developers <small><i class="fa fa-clock-o"></i>
													Today</small>
											</h4>
											<p>Why not buy a new awesome theme?</p>
									</a></li>
									<li><a href="#">
											<div class="pull-left">
												<img src="img/avatar2.png" class="img-circle"
													alt="user image" />
											</div>
											<h4>
												Sales Department <small><i class="fa fa-clock-o"></i>
													Yesterday</small>
											</h4>
											<p>Why not buy a new awesome theme?</p>
									</a></li>
									<li><a href="#">
											<div class="pull-left">
												<img src="img/avatar.png" class="img-circle"
													alt="user image" />
											</div>
											<h4>
												Reviewers <small><i class="fa fa-clock-o"></i> 2
													days</small>
											</h4>
											<p>Why not buy a new awesome theme?</p>
									</a></li>
								</ul>
							</li>
							<li class="footer"><a href="#">See All Messages</a></li>
						</ul></li>
					<!-- Notifications: style can be found in dropdown.less -->
					<li class="dropdown notifications-menu"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"> <i
							class="fa fa-warning"></i> <span class="label label-warning">10</span>
					</a>
						<ul class="dropdown-menu">
							<li class="header">You have 10 notifications</li>
							<li>
								<!-- inner menu: contains the actual data -->
								<ul class="menu">
									<li><a href="#"> <i class="ion ion-ios7-people info"></i>
											5 new members joined today
									</a></li>
									<li><a href="#"> <i class="fa fa-warning danger"></i>
											Very long description here that may not fit into the page and
											may cause design problems
									</a></li>
									<li><a href="#"> <i class="fa fa-users warning"></i> 5
											new members joined
									</a></li>
>>>>>>> refs/remotes/origin/master

									<li><a href="#"> <i class="ion ion-ios7-cart success"></i>
											25 sales made
									</a></li>
									<li><a href="#"> <i class="ion ion-ios7-person danger"></i>
											You changed your username
									</a></li>
								</ul>
							</li>
							<li class="footer"><a href="#">View all</a></li>
						</ul></li>
					<!-- Tasks: style can be found in dropdown.less -->
					<li class="dropdown tasks-menu"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"> <i
							class="fa fa-tasks"></i> <span class="label label-danger">9</span>
					</a>
						<ul class="dropdown-menu">
							<li class="header">You have 9 tasks</li>
							<li>
								<!-- inner menu: contains the actual data -->
								<ul class="menu">
									<li>
										<!-- Task item --> <a href="#">
											<h3>
												Design some buttons <small class="pull-right">20%</small>
											</h3>
											<div class="progress xs">
												<div class="progress-bar progress-bar-aqua"
													style="width: 20%" role="progressbar" aria-valuenow="20"
													aria-valuemin="0" aria-valuemax="100">
													<span class="sr-only">20% Complete</span>
												</div>
											</div>
									</a>
									</li>
									<!-- end task item -->
									<li>
										<!-- Task item --> <a href="#">
											<h3>
												Create a nice theme <small class="pull-right">40%</small>
											</h3>
											<div class="progress xs">
												<div class="progress-bar progress-bar-green"
													style="width: 40%" role="progressbar" aria-valuenow="20"
													aria-valuemin="0" aria-valuemax="100">
													<span class="sr-only">40% Complete</span>
												</div>
											</div>
									</a>
									</li>
									<!-- end task item -->
									<li>
										<!-- Task item --> <a href="#">
											<h3>
												Some task I need to do <small class="pull-right">60%</small>
											</h3>
											<div class="progress xs">
												<div class="progress-bar progress-bar-red"
													style="width: 60%" role="progressbar" aria-valuenow="20"
													aria-valuemin="0" aria-valuemax="100">
													<span class="sr-only">60% Complete</span>
												</div>
											</div>
									</a>
									</li>
									<!-- end task item -->
									<li>
										<!-- Task item --> <a href="#">
											<h3>
												Make beautiful transitions <small class="pull-right">80%</small>
											</h3>
											<div class="progress xs">
												<div class="progress-bar progress-bar-yellow"
													style="width: 80%" role="progressbar" aria-valuenow="20"
													aria-valuemin="0" aria-valuemax="100">
													<span class="sr-only">80% Complete</span>
												</div>
											</div>
									</a>
									</li>
									<!-- end task item -->
								</ul>
							</li>
							<li class="footer"><a href="#">View all tasks</a></li>
						</ul></li>
					<!-- User Account: style can be found in dropdown.less -->
					<li class="dropdown user user-menu"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"> <i
							class="glyphicon glyphicon-user"></i> <span
							style="color:${color};">${dao.name }<i class="caret"></i></span>
					</a>
						<ul class="dropdown-menu">
							<!-- User image -->
							<li class="user-header bg-light-blue"><img
								src="img/avatar3.png" class="img-circle" alt="User Image" />
								<p>
									${dao.name} <small>Member since Nov. 2012</small>
								</p></li>
							<!-- Menu Body -->
							<li class="user-body">
								<div class="col-xs-4 text-center">
									<a href="#">Followers</a>
								</div>
								<div class="col-xs-4 text-center">
									<a href="#">Sales</a>
								</div>
								<div class="col-xs-4 text-center">
									<a href="#">Friends</a>
								</div>
							</li>
							<!-- Menu Footer-->
							<li class="user-footer">
								<div class="pull-left">
									<a href="#" class="btn btn-default btn-flat">Profile</a>
								</div>
								<div class="pull-right">
									<a href="fullpageMain.jsp" class="btn btn-default btn-flat">Sign
										out</a>
								</div>
							</li>
						</ul></li>
				</ul>
			</div>
		</nav>
	</header>
	<div class="wrapper row-offcanvas row-offcanvas-left">
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="left-side sidebar-offcanvas">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">
				<!-- sidebar menu: : style can be found in sidebar.less -->
				<ul class="sidebar-menu">
					<li class="treeview"><a href="#"> <i
							class="fa fa-bar-chart-o"></i> <span>광고시청</span> <i
							class="fa fa-angle-left pull-right"></i>
					</a>
						<ul class="treeview-menu">
							<li><a href="main.jsp?no=1"><i
									class="fa fa-angle-double-right"></i>HOT</a></li>
							<li><a href="main.jsp?no=2"><i
									class="fa fa-angle-double-right"></i>Local</a></li>
							<li><a href="main.jsp?no=3"><i
									class="fa fa-angle-double-right"></i>추천</a></li>
						</ul></li>
					<li class="treeview"><a href="#"> <i class="fa fa-laptop"></i>
							<span>내정보</span> <i class="fa fa-angle-left pull-right"></i>
					</a>
						<ul class="treeview-menu">
							<li><a href="main.jsp?no=4"><i
									class="fa fa-angle-double-right"></i>환전</a></li>
							<li><a href="main.jsp?no=5"><i
									class="fa fa-angle-double-right"></i>포인트 관리</a></li>
							<li><a href="main.jsp?no=6"><i
									class="fa fa-angle-double-right"></i>경품 관리</a></li>
						</ul></li>
					<li class="treeview"><a href="#"> <i
							class="fa fa-bar-chart-o"></i> <span>게시판</span> <i
							class="fa fa-angle-left pull-right"></i>
					</a>
						<ul class="treeview-menu">
							<li><a href="main.jsp?no=7"><i
									class="fa fa-angle-double-right"></i>공지사항</a></li>
							<li><a href="main.jsp?no=8"><i
									class="fa fa-angle-double-right"></i>QnA</a></li>
							<li><a href="main.jsp?no=9"><i
									class="fa fa-angle-double-right"></i>FAQ</a></li>
						</ul></li>
					<c:choose>
						<c:when test="${dao.grade==2 }">
							<li class="treeview"><a href="#"> <i class="fa fa-edit"></i>
									<span>광고주분석</span> <i class="fa fa-angle-left pull-right"></i>
							</a>
								<ul class="treeview-menu">
									<li><a href="main.jsp?no=10"><i
											class="fa fa-angle-double-right"></i>그래프</a></li>
									<li><a href="main.jsp?no=11"><i
											class="fa fa-angle-double-right"></i>광고비용 산출</a></li>
									<li><a href="main.jsp?no=12"><i
											class="fa fa-angle-double-right"></i>광고 신청</a></li>
								</ul></li>
						</c:when>
						<c:when test="${dao.grade==3 }">
							<li class="treeview"><a href="#"> <i class="fa fa-edit"></i>
									<span>광고주분석</span> <i class="fa fa-angle-left pull-right"></i>
							</a>
								<ul class="treeview-menu">
									<li><a href="main.jsp?no=10"><i
											class="fa fa-angle-double-right"></i>그래프</a></li>
									<li><a href="main.jsp?no=11"><i
											class="fa fa-angle-double-right"></i>광고비용 산출</a></li>
									<li><a href="main.jsp?no=12"><i
											class="fa fa-angle-double-right"></i>광고 신청</a></li>
								</ul></li>
							<li class="treeview"><a href="#"> <i class="fa fa-table"></i>
									<span>Admin</span> <i class="fa fa-angle-left pull-right"></i>
							</a>
								<ul class="treeview-menu">
									<li><a href="main.jsp?no=13"><i
											class="fa fa-angle-double-right"></i>회원관리</a></li>
									<li><a href="main.jsp?no=14"><i
											class="fa fa-angle-double-right"></i>게시글 관리</a></li>
								</ul></li>
						</c:when>
					</c:choose>

				</ul>
			</section>
			<!-- /.sidebar -->
		</aside>

		<!-- Right side column. Contains the navbar and content of the page -->
		<aside class="right-side">
			<!-- Content Header (Page header) -->
			<section class="content-header"></section>


			<!-- Main content -->
			<section class="content">

				<jsp:include page="${jsp}"></jsp:include>


			</section>
			<!-- /.content -->
		</aside>
		<!-- /.right-side -->
	</div>
	<!-- ./wrapper -->

	<!-- add new calendar event modal -->

	<!--faq js -->
	<script src="js/faq/modernizr.js"></script>
	<script src="js/faq/jquery-2.1.1.js"></script>
	<script src="js/faq/main.js"></script>

	<!-- jQuery 2.0.2 -->
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
	<!-- jQuery UI 1.10.3 -->
	<script src="js/jquery-ui-1.10.3.min.js" type="text/javascript"></script>

	<script type="text/javascript">
		$(function() {
			var no =
	<%=strNo%>
		;
			var liNo = no % 3;
			var divByThree = Math.ceil(no / 3);

			if (liNo == 0) {
				liNo = 3;
			}
			$(".sidebar-menu li:nth-child(" + divByThree + ")").addClass(
					"active");
			$(
					".sidebar-menu li:nth-child(" + divByThree
							+ ") ul li:nth-child(1)").removeClass("active");
			$(
					".sidebar-menu li:nth-child(" + divByThree
							+ ") ul li:nth-child(2)").removeClass("active");
			$(
					".sidebar-menu li:nth-child(" + divByThree
							+ ") ul li:nth-child(3)").removeClass("active");
			$(
					".sidebar-menu li:nth-child(" + divByThree
							+ ") ul li:nth-child(" + liNo + ")").addClass(
					"active");
		});
	</script>

	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
	<!-- Morris.js charts -->
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
	<script src="js/plugins/morris/morris.js" type="text/javascript"></script>
	<!-- Sparkline -->
	<script src="js/plugins/sparkline/jquery.sparkline.min.js"
		type="text/javascript"></script>
	<!-- jvectormap -->
	<script src="js/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"
		type="text/javascript"></script>
	<script src="js/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"
		type="text/javascript"></script>
	<!-- fullCalendar -->
	<script src="js/plugins/fullcalendar/fullcalendar.min.js"
		type="text/javascript"></script>
	<!-- jQuery Knob Chart -->
	<script src="js/plugins/jqueryKnob/jquery.knob.js"
		type="text/javascript"></script>
	<!-- daterangepicker -->
	<script src="js/plugins/daterangepicker/daterangepicker.js"
		type="text/javascript"></script>
	<!-- Bootstrap WYSIHTML5 -->
	<script
		src="js/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"
		type="text/javascript"></script>
	<!-- iCheck -->
	<script src="js/plugins/iCheck/icheck.min.js" type="text/javascript"></script>
	<!-- ckeditor -->
	<script src="js/plugins/ckeditor/ckeditor.js" type="text/javascript"></script>
	<!-- AdminLTE App -->
	<script src="js/AdminLTE/app.js" type="text/javascript"></script>

	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<script src="js/AdminLTE/dashboard.js" type="text/javascript"></script>

	<!-- bxslide js -->
	<script
		src="<%=request.getContextPath()%>/js/jquery.bxslider/jquery.bxslider.min.js"></script>





</body>
</html>