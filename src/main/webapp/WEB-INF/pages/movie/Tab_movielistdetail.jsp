<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<html lang="en" class="no-js">
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8">
<title>Movitween</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport">
<meta content="" name="description">
<meta content="" name="author">
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css">
<link href="http://218.150.181.131/assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="http://218.150.181.131/assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css">
<link href="http://218.150.181.131/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="http://218.150.181.131/assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css">
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL PLUGIN STYLES -->
<link href="http://218.150.181.131/assets/global/plugins/jqvmap/jqvmap/jqvmap.css" rel="stylesheet" type="text/css">
<link href="http://218.150.181.131/assets/global/plugins/morris/morris.css" rel="stylesheet" type="text/css">
<!-- END PAGE LEVEL PLUGIN STYLES -->
<!-- BEGIN PAGE STYLES -->
<link href="http://218.150.181.131/assets/admin/pages/css/tasks.css" rel="stylesheet" type="text/css"/>
<!-- END PAGE STYLES -->
<!-- BEGIN THEME STYLES -->
<link href="http://218.150.181.131/assets/global/css/components.css" rel="stylesheet" type="text/css">
<link href="http://218.150.181.131/assets/global/css/plugins.css" rel="stylesheet" type="text/css">
<link href="http://218.150.181.131/assets/admin/layout3/css/layout.css" rel="stylesheet" type="text/css">
<link href="http://218.150.181.131/assets/admin/layout3/css/themes/default.css" rel="stylesheet" type="text/css" id="style_color">
<link href="http://218.150.181.131/assets/admin/layout3/css/custom.css" rel="stylesheet" type="text/css">
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico">
<style>
#graph-container {
	max-width: 500px;
	height: 400px;
}
</style>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-menu-fixed" class to set the mega menu fixed  -->
<!-- DOC: Apply "page-header-top-fixed" class to set the top menu fixed  -->
<body>
	<!-- BEGIN HEADER -->
	<div class="page-header">
		<!-- BEGIN HEADER TOP -->
		<div class="page-header-top">
			<div class="container">
				<!-- BEGIN LOGO -->
				<div class="page-logo">
					<a href="index.html"><img src="/assets/img/logo-default.png"
						alt="logo" class="logo-default"></a>
				</div>
				<!-- END LOGO -->
				<!-- BEGIN RESPONSIVE MENU TOGGLER -->
				<a href="javascript:;" class="menu-toggler"></a>
				<!-- END RESPONSIVE MENU TOGGLER -->
				<!-- BEGIN TOP NAVIGATION MENU -->
				<div class="top-menu">
					<ul class="nav navbar-nav pull-right">
						<!-- BEGIN NOTIFICATION DROPDOWN -->
						<li
							class="dropdown dropdown-extended dropdown-dark dropdown-notification"
							id="header_notification_bar"><a href="javascript:;"
							class="dropdown-toggle" data-toggle="dropdown"
							data-hover="dropdown" data-close-others="true"> <i
								class="icon-bell"></i> <span class="badge badge-default">7</span>
						</a>
							<ul class="dropdown-menu">
								<li class="external">
									<h3>
										You have <strong>12 pending</strong> tasks
									</h3> <a href="javascript:;">view all</a>
								</li>
								<li>
									<ul class="dropdown-menu-list scroller" style="height: 250px;"
										data-handle-color="#637283">
										<li><a href="javascript:;"> <span class="time">just
													now</span> <span class="details"> <span
													class="label label-sm label-icon label-success"> <i
														class="fa fa-plus"></i>
												</span> New user registered.
											</span>
										</a></li>
										<li><a href="javascript:;"> <span class="time">3
													mins</span> <span class="details"> <span
													class="label label-sm label-icon label-danger"> <i
														class="fa fa-bolt"></i>
												</span> Server #12 overloaded.
											</span>
										</a></li>
										<li><a href="javascript:;"> <span class="time">10
													mins</span> <span class="details"> <span
													class="label label-sm label-icon label-warning"> <i
														class="fa fa-bell-o"></i>
												</span> Server #2 not responding.
											</span>
										</a></li>
										<li><a href="javascript:;"> <span class="time">14
													hrs</span> <span class="details"> <span
													class="label label-sm label-icon label-info"> <i
														class="fa fa-bullhorn"></i>
												</span> Application error.
											</span>
										</a></li>
										<li><a href="javascript:;"> <span class="time">2
													days</span> <span class="details"> <span
													class="label label-sm label-icon label-danger"> <i
														class="fa fa-bolt"></i>
												</span> Database overloaded 68%.
											</span>
										</a></li>
										<li><a href="javascript:;"> <span class="time">3
													days</span> <span class="details"> <span
													class="label label-sm label-icon label-danger"> <i
														class="fa fa-bolt"></i>
												</span> A user IP blocked.
											</span>
										</a></li>
										<li><a href="javascript:;"> <span class="time">4
													days</span> <span class="details"> <span
													class="label label-sm label-icon label-warning"> <i
														class="fa fa-bell-o"></i>
												</span> Storage Server #4 not responding dfdfdfd.
											</span>
										</a></li>
										<li><a href="javascript:;"> <span class="time">5
													days</span> <span class="details"> <span
													class="label label-sm label-icon label-info"> <i
														class="fa fa-bullhorn"></i>
												</span> System Error.
											</span>
										</a></li>
										<li><a href="javascript:;"> <span class="time">9
													days</span> <span class="details"> <span
													class="label label-sm label-icon label-danger"> <i
														class="fa fa-bolt"></i>
												</span> Storage server failed.
											</span>
										</a></li>
									</ul>
								</li>
							</ul></li>
						<!-- END NOTIFICATION DROPDOWN -->
						<!-- BEGIN TODO DROPDOWN -->
						<li
							class="dropdown dropdown-extended dropdown-dark dropdown-tasks"
							id="header_task_bar"><a href="javascript:;"
							class="dropdown-toggle" data-toggle="dropdown"
							data-hover="dropdown" data-close-others="true"> <i
								class="icon-calendar"></i> <span class="badge badge-default">3</span>
						</a>
							<ul class="dropdown-menu extended tasks">
								<li class="external">
									<h3>
										You have <strong>12 pending</strong> tasks
									</h3> <a href="javascript:;">view all</a>
								</li>
								<li>
									<ul class="dropdown-menu-list scroller" style="height: 275px;"
										data-handle-color="#637283">
										<li><a href="javascript:;"> <span class="task">
													<span class="desc">New release v1.2 </span> <span
													class="percent">30%</span>
											</span> <span class="progress"> <span style="width: 40%;"
													class="progress-bar progress-bar-success"
													aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"><span
														class="sr-only">40% Complete</span></span>
											</span>
										</a></li>
										<li><a href="javascript:;"> <span class="task">
													<span class="desc">Application deployment</span> <span
													class="percent">65%</span>
											</span> <span class="progress"> <span style="width: 65%;"
													class="progress-bar progress-bar-danger" aria-valuenow="65"
													aria-valuemin="0" aria-valuemax="100"><span
														class="sr-only">65% Complete</span></span>
											</span>
										</a></li>
										<li><a href="javascript:;"> <span class="task">
													<span class="desc">Mobile app release</span> <span
													class="percent">98%</span>
											</span> <span class="progress"> <span style="width: 98%;"
													class="progress-bar progress-bar-success"
													aria-valuenow="98" aria-valuemin="0" aria-valuemax="100"><span
														class="sr-only">98% Complete</span></span>
											</span>
										</a></li>
										<li><a href="javascript:;"> <span class="task">
													<span class="desc">Database migration</span> <span
													class="percent">10%</span>
											</span> <span class="progress"> <span style="width: 10%;"
													class="progress-bar progress-bar-warning"
													aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"><span
														class="sr-only">10% Complete</span></span>
											</span>
										</a></li>
										<li><a href="javascript:;"> <span class="task">
													<span class="desc">Web server upgrade</span> <span
													class="percent">58%</span>
											</span> <span class="progress"> <span style="width: 58%;"
													class="progress-bar progress-bar-info" aria-valuenow="58"
													aria-valuemin="0" aria-valuemax="100"><span
														class="sr-only">58% Complete</span></span>
											</span>
										</a></li>
										<li><a href="javascript:;"> <span class="task">
													<span class="desc">Mobile development</span> <span
													class="percent">85%</span>
											</span> <span class="progress"> <span style="width: 85%;"
													class="progress-bar progress-bar-success"
													aria-valuenow="85" aria-valuemin="0" aria-valuemax="100"><span
														class="sr-only">85% Complete</span></span>
											</span>
										</a></li>
										<li><a href="javascript:;"> <span class="task">
													<span class="desc">New UI release</span> <span
													class="percent">38%</span>
											</span> <span class="progress progress-striped"> <span
													style="width: 38%;"
													class="progress-bar progress-bar-important"
													aria-valuenow="18" aria-valuemin="0" aria-valuemax="100"><span
														class="sr-only">38% Complete</span></span>
											</span>
										</a></li>
									</ul>
								</li>
							</ul></li>
						<!-- END TODO DROPDOWN -->
						<li class="droddown dropdown-separator"><span
							class="separator"></span></li>
						<!-- BEGIN INBOX DROPDOWN -->
						<li
							class="dropdown dropdown-extended dropdown-dark dropdown-inbox"
							id="header_inbox_bar"><a href="javascript:;"
							class="dropdown-toggle" data-toggle="dropdown"
							data-hover="dropdown" data-close-others="true"> <span
								class="circle">3</span> <span class="corner"></span>
						</a>
							<ul class="dropdown-menu">
								<li class="external">
									<h3>
										You have <strong>7 New</strong> Messages
									</h3> <a href="javascript:;">view all</a>
								</li>
								<li>
									<ul class="dropdown-menu-list scroller" style="height: 275px;"
										data-handle-color="#637283">
										<li><a href="inbox.html?a=view"> <span class="photo">
													<img src="http://218.150.181.131/assets/admin/layout3/img/avatar2.jpg"
													class="img-circle" alt="">
											</span> <span class="subject"> <span class="from">
														Lisa Wong </span> <span class="time">Just Now </span>
											</span> <span class="message"> Vivamus sed auctor nibh congue
													nibh. auctor nibh auctor nibh... </span>
										</a></li>
										<li><a href="inbox.html?a=view"> <span class="photo">
													<img src="http://218.150.181.131/assets/admin/layout3/img/avatar3.jpg"
													class="img-circle" alt="">
											</span> <span class="subject"> <span class="from">
														Richard Doe </span> <span class="time">16 mins </span>
											</span> <span class="message"> Vivamus sed congue nibh auctor
													nibh congue nibh. auctor nibh auctor nibh... </span>
										</a></li>
										<li><a href="inbox.html?a=view"> <span class="photo">
													<img src="http://218.150.181.131/assets/admin/layout3/img/avatar1.jpg"
													class="img-circle" alt="">
											</span> <span class="subject"> <span class="from"> Bob
														Nilson </span> <span class="time">2 hrs </span>
											</span> <span class="message"> Vivamus sed nibh auctor nibh
													congue nibh. auctor nibh auctor nibh... </span>
										</a></li>
										<li><a href="inbox.html?a=view"> <span class="photo">
													<img src="http://218.150.181.131/assets/admin/layout3/img/avatar2.jpg"
													class="img-circle" alt="">
											</span> <span class="subject"> <span class="from">
														Lisa Wong </span> <span class="time">40 mins </span>
											</span> <span class="message"> Vivamus sed auctor 40% nibh
													congue nibh... </span>
										</a></li>
										<li><a href="inbox.html?a=view"> <span class="photo">
													<img src="http://218.150.181.131/assets/admin/layout3/img/avatar3.jpg"
													class="img-circle" alt="">
											</span> <span class="subject"> <span class="from">
														Richard Doe </span> <span class="time">46 mins </span>
											</span> <span class="message"> Vivamus sed congue nibh auctor
													nibh congue nibh. auctor nibh auctor nibh... </span>
										</a></li>
									</ul>
								</li>
							</ul></li>
						<!-- END INBOX DROPDOWN -->
						<!-- BEGIN USER LOGIN DROPDOWN -->
						<li class="dropdown dropdown-user dropdown-dark"><a
							href="javascript:;" class="dropdown-toggle"
							data-toggle="dropdown" data-hover="dropdown"
							data-close-others="true"> <img alt="" class="img-circle"
								src="http://218.150.181.131/assets/admin/layout3/img/avatar9.jpg"> <span
								class="username username-hide-mobile">Nick</span>
						</a>
							<ul class="dropdown-menu dropdown-menu-default">
								<li><a href="extra_profile.html"> <i class="icon-user"></i>
										My Profile
								</a></li>
								<li><a href="page_calendar.html"> <i
										class="icon-calendar"></i> My Calendar
								</a></li>
								<li><a href="inbox.html"> <i class="icon-envelope-open"></i>
										My Inbox <span class="badge badge-danger"> 3 </span>
								</a></li>
								<li><a href="javascript:;"> <i class="icon-rocket"></i>
										My Tasks <span class="badge badge-success"> 7 </span>
								</a></li>
								<li class="divider"></li>
								<li><a href="extra_lock.html"> <i class="icon-lock"></i>
										Lock Screen
								</a></li>
								<li><a href="login.html"> <i class="icon-key"></i> Log
										Out
								</a></li>
							</ul></li>
						<!-- END USER LOGIN DROPDOWN -->
					</ul>
				</div>
				<!-- END TOP NAVIGATION MENU -->
			</div>
		</div>
		<!-- END HEADER TOP -->
		<!-- BEGIN HEADER MENU -->
		<div class="page-header-menu">
			<div class="container">
				<!-- BEGIN MEGA MENU -->
				<!-- DOC: Apply "hor-menu-light" class after the "hor-menu" class below to have a horizontal menu with white background -->
				<!-- DOC: Remove data-hover="dropdown" and data-close-others="true" attributes below to disable the dropdown opening on mouse hover -->
				<div class="hor-menu ">
					<ul class="nav navbar-nav">
						<li class="active"><a href="/">Home</a></li>
						<li class="menu-dropdown mega-menu-dropdown "><a
							data-hover="megamenu-dropdown" data-close-others="true"
							data-toggle="dropdown" href="javascript:;"
							class="dropdown-toggle"> Movie <i class="fa fa-angle-down"></i>
						</a>
							<ul class="dropdown-menu" style="min-width: 710px">
								<li>
									<div class="mega-menu-content">
										<div class="row">
											<div class="col-md-4">
												<ul class="mega-menu-submenu">
													<li>
														<h3>Movie</h3>
													</li>
													<li><a href="/Tab_movielist.do" class="iconify"> <i
															class="icon-home"></i> Movie List
													</a></li>
												</ul>
											</div>
											<div class="col-md-4">
												<ul class="mega-menu-submenu">
													<li>
														<h3>Actor</h3>
													</li>
													<li><a href="layout_fluid.html" class="iconify"> <i
															class="icon-cursor-move"></i> A - D
													</a></li>

												</ul>
											</div>
											<div class="col-md-4">
												<ul class="mega-menu-submenu">
													<li>
														<h3>Director</h3>
													</li>
													<li><a href="layout_click_dropdowns.html"
														class="iconify"> <i class="icon-speech"></i> A - D
													</a></li>

												</ul>
											</div>
										</div>
									</div>
								</li>
							</ul></li>
						<li class="menu-dropdown classic-menu-dropdown "><a
							data-hover="megamenu-dropdown" data-close-others="true"
							data-toggle="dropdown" href="javascript:;"> Community <i
								class="fa fa-angle-down"></i>
						</a>
							<ul class="dropdown-menu pull-left">
								<li class=" dropdown-submenu"><a href=":;"> <i
										class="icon-briefcase"></i> Notifications
								</a></li>
								<li class=" dropdown-submenu"><a href=":;"> <i
										class="icon-wallet"></i> Board
								</a>
									<ul class="dropdown-menu">
										<li class=" "><a href="/Tab_boardlist.do"> FreeBoard
										</a></li>
										<li class=" "><a href="이예영"> MyPage </a></li>
										<li class=" "><a href="portlet_general3.html"> Boards
												#2 <span class="badge badge-roundless badge-danger">new</span>
										</a></li>
									</ul></li>
								<li class=" dropdown-submenu"><a href=":;"> <i
										class="icon-bar-chart"></i> FAQ
								</a>
									<ul class="dropdown-menu">
										<li class=" "><a href="charts_amcharts.html"> 1:1 FAQ
										</a></li>
										<li class=" "><a href="charts_flotcharts.html"> Most
												Question </a></li>
									</ul></li>
							</ul></li>
						<li><a href="Tab_mypage.do">MyPage</a></li>
						<li><a href="Tab_about.do">About</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- END HEADER MENU -->
	</div>
	<!-- END HEADER -->
	<!-- BEGIN PAGE CONTAINER -->
	<div class="page-container">
		<!-- BEGIN PAGE HEAD -->
		<div class="page-head">
			<div class="container">
				<!-- BEGIN PAGE TITLE -->
				<div class="page-title">
					<h1>
						Movies <small>효자동이발사 & 봉준호</small>
					</h1>
				</div>
				<!-- END PAGE TITLE -->
				<!-- BEGIN PAGE TOOLBAR -->
				<div class="page-toolbar">
					<!-- BEGIN THEME PANEL -->
					<div class="btn-group btn-theme-panel">
						<a href="javascript:;" class="btn dropdown-toggle"
							data-toggle="dropdown"> <i class="icon-settings"></i>
						</a>
						<div
							class="dropdown-menu theme-panel pull-right dropdown-custom hold-on-click">
							<div class="row">
								<div class="col-md-6 col-sm-6 col-xs-12">
									<h3>THEME COLORS</h3>
									<div class="row">
										<div class="col-md-6 col-sm-6 col-xs-12">
											<ul class="theme-colors">
												<li class="theme-color theme-color-default"
													data-theme="default"><span class="theme-color-view"></span>
													<span class="theme-color-name">Default</span></li>
												<li class="theme-color theme-color-blue-hoki"
													data-theme="blue-hoki"><span class="theme-color-view"></span>
													<span class="theme-color-name">Blue Hoki</span></li>
												<li class="theme-color theme-color-blue-steel"
													data-theme="blue-steel"><span class="theme-color-view"></span>
													<span class="theme-color-name">Blue Steel</span></li>
												<li class="theme-color theme-color-yellow-orange"
													data-theme="yellow-orange"><span
													class="theme-color-view"></span> <span
													class="theme-color-name">Orange</span></li>
												<li class="theme-color theme-color-yellow-crusta"
													data-theme="yellow-crusta"><span
													class="theme-color-view"></span> <span
													class="theme-color-name">Yellow Crusta</span></li>
											</ul>
										</div>
										<div class="col-md-6 col-sm-6 col-xs-12">
											<ul class="theme-colors">
												<li class="theme-color theme-color-green-haze"
													data-theme="green-haze"><span class="theme-color-view"></span>
													<span class="theme-color-name">Green Haze</span></li>
												<li class="theme-color theme-color-red-sunglo"
													data-theme="red-sunglo"><span class="theme-color-view"></span>
													<span class="theme-color-name">Red Sunglo</span></li>
												<li class="theme-color theme-color-red-intense"
													data-theme="red-intense"><span
													class="theme-color-view"></span> <span
													class="theme-color-name">Red Intense</span></li>
												<li class="theme-color theme-color-purple-plum"
													data-theme="purple-plum"><span
													class="theme-color-view"></span> <span
													class="theme-color-name">Purple Plum</span></li>
												<li class="theme-color theme-color-purple-studio"
													data-theme="purple-studio"><span
													class="theme-color-view"></span> <span
													class="theme-color-name">Purple Studio</span></li>
											</ul>
										</div>
									</div>
								</div>
								<div class="col-md-6 col-sm-6 col-xs-12 seperator">
									<h3>LAYOUT</h3>
									<ul class="theme-settings">
										<li>Layout <select
											class="theme-setting theme-setting-layout form-control input-sm input-small input-inline tooltips"
											data-original-title="Change layout type"
											data-container="body" data-placement="left">
												<option value="boxed" selected="selected">Boxed</option>
												<option value="fluid">Fluid</option>
										</select>
										</li>
										<li>Top Menu Style <select
											class="theme-setting theme-setting-top-menu-style form-control input-sm input-small input-inline tooltips"
											data-original-title="Change top menu dropdowns style"
											data-container="body" data-placement="left">
												<option value="dark" selected="selected">Dark</option>
												<option value="light">Light</option>
										</select>
										</li>
										<li>Top Menu Mode <select
											class="theme-setting theme-setting-top-menu-mode form-control input-sm input-small input-inline tooltips"
											data-original-title="Enable fixed(sticky) top menu"
											data-container="body" data-placement="left">
												<option value="fixed">Fixed</option>
												<option value="not-fixed" selected="selected">Not
													Fixed</option>
										</select>
										</li>
										<li>Mega Menu Style <select
											class="theme-setting theme-setting-mega-menu-style form-control input-sm input-small input-inline tooltips"
											data-original-title="Change mega menu dropdowns style"
											data-container="body" data-placement="left">
												<option value="dark" selected="selected">Dark</option>
												<option value="light">Light</option>
										</select>
										</li>
										<li>Mega Menu Mode <select
											class="theme-setting theme-setting-mega-menu-mode form-control input-sm input-small input-inline tooltips"
											data-original-title="Enable fixed(sticky) mega menu"
											data-container="body" data-placement="left">
												<option value="not-fixed">Not Fixed</option>
										</select>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- END THEME PANEL -->
				</div>
				<!-- END PAGE TOOLBAR -->
			</div>
		</div>
		<!-- END PAGE HEAD -->
		<!-- BEGIN PAGE CONTENT -->
		<div class="page-content">
			<div class="container">
				<!-- BEGIN PAGE BREADCRUMB -->
				<ul class="page-breadcrumb breadcrumb hide">
					<li><a href="#">Home</a><i class="fa fa-circle"></i></li>
					<li class="active">Dashboard</li>
				</ul>
				<!-- END PAGE BREADCRUMB -->
				<!-- BEGIN PAGE CONTENT INNER -->
				<div class="row margin-top-10">
					<!-- BEGIN PORTLET-->
					<div class="portlet light ">
						<div id="graph-container"></div>
						<script src="http://218.150.181.131/sigma.js-1.0.3/jquery-2.1.1.min.js"></script>
						<!-- START SIGMA IMPORTS -->
<script src="http://218.150.181.131/sigma.js-1.0.3/src/sigma.core.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/conrad.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/utils/sigma.utils.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/utils/sigma.polyfills.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/sigma.settings.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/classes/sigma.classes.dispatcher.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/classes/sigma.classes.configurable.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/classes/sigma.classes.graph.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/classes/sigma.classes.camera.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/classes/sigma.classes.quad.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/captors/sigma.captors.mouse.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/captors/sigma.captors.touch.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/renderers/sigma.renderers.canvas.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/renderers/sigma.renderers.webgl.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/renderers/sigma.renderers.def.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/renderers/webgl/sigma.webgl.nodes.def.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/renderers/webgl/sigma.webgl.nodes.fast.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/renderers/webgl/sigma.webgl.edges.def.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/renderers/webgl/sigma.webgl.edges.fast.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/renderers/webgl/sigma.webgl.edges.arrow.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/renderers/canvas/sigma.canvas.labels.def.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/renderers/canvas/sigma.canvas.hovers.def.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/renderers/canvas/sigma.canvas.nodes.def.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/renderers/canvas/sigma.canvas.edges.def.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/renderers/canvas/sigma.canvas.edges.curve.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/renderers/canvas/sigma.canvas.edges.arrow.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/renderers/canvas/sigma.canvas.edges.curvedArrow.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/middlewares/sigma.middlewares.rescale.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/middlewares/sigma.middlewares.copy.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/misc/sigma.misc.animation.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/misc/sigma.misc.bindEvents.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/misc/sigma.misc.drawHovers.js"></script>
<!-- END SIGMA IMPORTS -->
<script src="http://218.150.181.131/sigma.js-1.0.3/plugins/sigma.parsers.gexf/gexf-parser.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/plugins/sigma.parsers.gexf/sigma.parsers.gexf.js"></script>
<script>


    function init() {

        //addmethod()첫번째파라미터는 함수이름, 두번째 파라미터는 해당 함수정의이다.
        //neighbors란 노드로들어오거나 나가는 선들을 말한다. 이 edge 들에 대한 정보를 가진 함수를 정의함.
        sigma.classes.graph.addMethod('neighbors', function (nodeId) {
            var k, neighbors = {}, index = this.allNeighborsIndex[nodeId]
                    || {};
            for (k in index)
                neighbors[k] = this.nodesIndex[k];
            return neighbors;
        });


        //sigmajs 인스턴스 생성
        var sigInst = new sigma(document.getElementById('graph-container'));

        //gexf 파일 파싱해서 위에서 만든 시그마인스턴스에 객체내용 집어넣음.
        sigma.parsers.gexf(
                'http://218.150.181.131/assets/gexf/051.gexf'
                , sigInst
                , function (t) {
                    //그래프의 색깔을 기존 gexf에 있던 색 그대로 사용함.
                    sigInst.graph.nodes().forEach(
                            function (n) {
                                n.originalColor = n.color;
                            });
                    sigInst.graph.edges().forEach(
                            function (e) {
                                e.originalColor = e.color;
                            });

                    sigInst.refresh();
                    // gexf-parsers.js 안의 메소드 이용법을 잘 모르것음.
                    //console.log(t.Graph('nodes')._nodes(sigInst));
                }
        );


        //그래프의 초기 셋팅 과정임. 각 속성마다 원하는 내용 지정.
        sigInst.settings({
            defaultLabelColor: '#777',
            defaultLabelSize: 12,
            defaultLabelHoverColor: '#555',  //마우스 호버시 레이블 글자색
            defaultHoverLabelBGColor: '#fff',  //마우스 호버시 레이블 배경색
            hoverFontStyle: 'bold',
            fontStyle: 'bold',
            labelThreshold: 2,
            defaultEdgeType: 'straight',
            minNodeSize: 1,
            maxNodeSize: 10,
            minEdgeSize: 1,
            maxEdgeSize: 3,
            maxRatio: 1,
            mouseEnabled: true,
            zoomingRatio: 1.0 //do not mouse wheel zoom -->1.0
        });


        //노드를 클릭했을때 정의
        sigInst.bind('overNode', function (e) {
            var nodeId = e.data.node.id, toKeep = sigInst.graph.neighbors(nodeId);
            toKeep[nodeId] = e.data.node;

            console.log(e.data.node.closnesscentrality);  //overnode 된 노드의 id 값.
            //console.log(sigInst.Graph('http://218.150.181.131/assets/gexf/051.gexf'));


            sigInst.graph.nodes().forEach(
                    function (n) {
                        if (toKeep[n.id]) {
                            n.color = n.originalColor;

                        }
                        else {
                            n.color = '#eee';
                        }
                    });
            sigInst.graph.edges().forEach(
                    function (e) {
                        if (toKeep[e.source]
                                && toKeep[e.target]) {
                            e.color = e.originalColor;
                        }
                        else {
                            e.color = '#eee';
                        }
                    });
            // Since the data has been modified, we need to
            // call the refresh method to make the colors
            // update effective.
            sigInst.refresh();

        });


        //스테이지를 클릭했을때 함수 정의
        // When the stage is clicked, we just color each
        // node and edge with its original color.
        sigInst.bind('outNode', function (e) {
            sigInst.graph.nodes().forEach(
                    function (n) {
                        n.color = n.originalColor;
                    });
            sigInst.graph.edges().forEach(
                    function (e) {
                        e.color = e.originalColor;
                    });
            // Same as in the previous event:
            sigInst.refresh();
        });

    }

    if (document.addEventListener) {
        document.addEventListener("DOMContentLoaded", init, false);
    } else {
        window.onload = init;
    }
    $('#graph-container').css('background-color', '#FFFFD7');
</script>
					</div>
					<!-- END PORTLET-->
				</div>
				<div class="row"></div>
				<div class="row"></div>
				<!-- END PAGE CONTENT INNER -->
			</div>
		</div>
		<!-- END PAGE CONTENT -->
	</div>
	<!-- END PAGE CONTAINER -->
	<!-- BEGIN PRE-FOOTER -->
	<div class="page-prefooter">
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-6 col-xs-12 footer-block">
					<h2>About</h2>
					<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
						sed diam dolore.</p>
				</div>
				<div class="col-md-3 col-sm-6 col-xs12 footer-block">
					<h2>Subscribe Email</h2>
					<div class="subscribe-form">
						<form action="javascript:;">
							<div class="input-group">
								<input type="text" placeholder="mail@email.com"
									class="form-control"> <span class="input-group-btn">
									<button class="btn" type="submit">Submit</button>
								</span>
							</div>
						</form>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12 footer-block">
					<h2>Follow Us On</h2>
					<ul class="social-icons">
						<li><a href="javascript:;" data-original-title="rss"
							class="rss"></a></li>
						<li><a href="javascript:;" data-original-title="facebook"
							class="facebook"></a></li>
						<li><a href="javascript:;" data-original-title="twitter"
							class="twitter"></a></li>
						<li><a href="javascript:;" data-original-title="googleplus"
							class="googleplus"></a></li>
						<li><a href="javascript:;" data-original-title="linkedin"
							class="linkedin"></a></li>
						<li><a href="javascript:;" data-original-title="youtube"
							class="youtube"></a></li>
						<li><a href="javascript:;" data-original-title="vimeo"
							class="vimeo"></a></li>
					</ul>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12 footer-block">
					<h2>Contacts</h2>
					<address class="margin-bottom-40">
						Phone: 800 123 3456<br> Email: <a
							href="mailto:info@metronic.com">info@metronic.com</a>
					</address>
				</div>
			</div>
		</div>
	</div>
	<!-- END PRE-FOOTER -->
	<!-- BEGIN FOOTER -->
	<div class="page-footer">
		<div class="container">2014 &copy; LinkLab 9th. All Rights
			Reserved.</div>
	</div>
	<div class="scroll-to-top">
		<i class="icon-arrow-up"></i>
	</div>
	<!-- END FOOTER -->
	<!-- BEGIN JAVASCRIPTS (Load javascripts at bottom, this will reduce page load time) -->
	<!-- BEGIN CORE PLUGINS -->
	<!--[if lt IE 9]>
<script src="http://218.150.181.131/assets/global/plugins/respond.min.js"></script>
<script src="http://218.150.181.131/assets/global/plugins/excanvas.min.js"></script> 
<![endif]-->
	<script src="http://218.150.181.131/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui-1.10.3.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="http://218.150.181.131/assets/global/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="http://218.150.181.131/assets/global/plugins/jqvmap/jqvmap/jquery.vmap.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.russia.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.world.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.europe.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.germany.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.usa.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/global/plugins/jqvmap/jqvmap/data/jquery.vmap.sampledata.js" type="text/javascript"></script>
<!-- IMPORTANT! fullcalendar depends on jquery-ui-1.10.3.custom.min.js for drag & drop support -->
<script src="http://218.150.181.131/assets/global/plugins/morris/morris.min.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/global/plugins/morris/raphael-min.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/global/plugins/jquery.sparkline.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="http://218.150.181.131/assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/admin/layout3/scripts/layout.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/admin/layout3/scripts/demo.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/admin/pages/scripts/index3.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/admin/pages/scripts/tasks.js" type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
	<script>
		jQuery(document).ready(function() {
			Metronic.init(); // init metronic core componets
			Layout.init(); // init layout
			Demo.init(); // init demo(theme settings page)
			Index.init(); // init index page
			Tasks.initDashboardWidget(); // init tash dashboard widget
		});
	</script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>