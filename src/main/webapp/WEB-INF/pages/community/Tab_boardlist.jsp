<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8" />
<title>Board</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta content="" name="description" />
<meta content="" name="author" />
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all"
	rel="stylesheet" type="text/css">
<link
	href="http://218.150.181.131/assets/global/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href="http://218.150.181.131/assets/global/plugins/simple-line-icons/simple-line-icons.min.css"
	rel="stylesheet" type="text/css">
<link href="http://218.150.181.131/assets/global/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link href="http://218.150.181.131/assets/global/plugins/uniform/css/uniform.default.css"
	rel="stylesheet" type="text/css">
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->
<link rel="stylesheet" type="text/css"
	href="http://218.150.181.131/assets/global/plugins/select2/select2.css" />
<link rel="stylesheet" type="text/css"
	href="http://218.150.181.131/assets/global/plugins/datatables/extensions/Scroller/css/dataTables.scroller.min.css" />
<link rel="stylesheet" type="text/css"
	href="http://218.150.181.131/assets/global/plugins/datatables/extensions/ColReorder/css/dataTables.colReorder.min.css" />
<link rel="stylesheet" type="text/css"
	href="http://218.150.181.131/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css" />
<!-- END PAGE LEVEL STYLES -->
<!-- BEGIN THEME STYLES -->
<link href="http://218.150.181.131/assets/global/css/components.css" rel="stylesheet"
	type="text/css">
<link href="http://218.150.181.131/assets/global/css/plugins.css" rel="stylesheet"
	type="text/css">
<link href="http://218.150.181.131/assets/admin/layout3/css/layout.css" rel="stylesheet"
	type="text/css">
<link href="http://218.150.181.131/assets/admin/layout3/css/themes/default.css"
	rel="stylesheet" type="text/css" id="style_color">
<link href="http://218.150.181.131/assets/admin/layout3/css/custom.css" rel="stylesheet"
	type="text/css">
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico" />
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body>
<%@include file="../includes/headerMenu.jsp"%>
		<!-- BEGIN PAGE CONTAINER -->
		<div class="page-container">
			<!-- BEGIN PAGE HEAD -->
			<div class="page-head">
				<div class="container">
					<!-- BEGIN PAGE TITLE -->
					<div class="page-title">
						<h1>
							Board <small>free~!</small>
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
														data-theme="blue-steel"><span
														class="theme-color-view"></span> <span
														class="theme-color-name">Blue Steel</span></li>
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
														data-theme="green-haze"><span
														class="theme-color-view"></span> <span
														class="theme-color-name">Green Haze</span></li>
													<li class="theme-color theme-color-red-sunglo"
														data-theme="red-sunglo"><span
														class="theme-color-view"></span> <span
														class="theme-color-name">Red Sunglo</span></li>
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
													<option value="fixed" selected="selected">Fixed</option>
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
					<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
					<div class="modal fade" id="portlet-config" tabindex="-1"
						role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true"></button>
									<h4 class="modal-title">Modal title</h4>
								</div>
								<div class="modal-body">Widget settings form goes here</div>
								<div class="modal-footer">
									<button type="button" class="btn blue">Save changes</button>
									<button type="button" class="btn default" data-dismiss="modal">Close</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->
					<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
					<!-- BEGIN PAGE BREADCRUMB -->
					<ul class="page-breadcrumb breadcrumb">
						<li><a href="#">Home</a><i class="fa fa-circle"></i></li>
						<li><a href="table_advanced.html">Board</a> <i
							class="fa fa-circle"></i></li>
						<li class="active">Free Board</li>
					</ul>
					<!-- END PAGE BREADCRUMB -->
					<!-- BEGIN PAGE CONTENT INNER -->
					<div class="row">
						<div class="col-md-12">
							<!-- BEGIN EXAMPLE TABLE PORTLET-->
							<div class="portlet light">
								<div class="portlet-title">
									<div class="caption">
										<i class="fa fa-cogs font-green-sharp"></i> <span
											class="caption-subject font-green-sharp bold uppercase">Free
											Board</span>
									</div>
									<div class="tools"></div>
								</div>
								<div class="portlet-body">
									<table class="table table-striped table-bordered table-hover"
										id="sample_1">
										<thead>
											<tr>
												<th width="5%">No.</th>
												<th width="10%">말머리</th>
												<th width="60%">제목</th>
												<th width="10%">글쓴이</th>
												<th width="15%">작성일</th>
											</tr>
										</thead>

										<tbody>
											<c:forEach var="n" items="${list}">
												<tr>
													<td>${n.uid}</td>
													<td>${n.ugroup}</td>
													<td><a href="Tab_boarddetail.do?uId=${n.uid}">${n.utitle}</a></td>
													<td>${n.uauthor}</td>
													<td>${n.udate}</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
							<!-- END EXAMPLE TABLE PORTLET-->
							<div align="right">
								<input type="button" name="버튼" value="글쓰기"
									onclick="location.href='Tab_boardwriting.do'">
							</div>
						</div>
					</div>
					<!-- END PAGE CONTENT INNER -->
				</div>
			</div>
			<!-- END PAGE CONTENT -->
		</div>
		<!-- END PAGE CONTAINER -->
		<!-- BEGIN PRE-FOOTER -->
		<%@include file="../includes/footMenu.jsp"%>
		<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
		<%@include file="../includes/footer.jsp"%>
		<!-- BEGIN PAGE LEVEL PLUGINS -->
		<script type="text/javascript"
			src="http://218.150.181.131/assets/global/plugins/select2/select2.min.js"></script>
		<script type="text/javascript"
			src="http://218.150.181.131/assets/global/plugins/datatables/media/js/jquery.dataTables.min.js"></script>
		<script type="text/javascript"
			src="http://218.150.181.131/assets/global/plugins/datatables/extensions/TableTools/js/dataTables.tableTools.min.js"></script>
		<script type="text/javascript"
			src="http://218.150.181.131/assets/global/plugins/datatables/extensions/ColReorder/js/dataTables.colReorder.min.js"></script>
		<script type="text/javascript"
			src="http://218.150.181.131/assets/global/plugins/datatables/extensions/Scroller/js/dataTables.scroller.min.js"></script>
		<script type="text/javascript"
			src="http://218.150.181.131/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"></script>
		<!-- END PAGE LEVEL PLUGINS -->
		<!-- BEGIN PAGE LEVEL SCRIPTS -->
		<script src="http://218.150.181.131/assets/global/scripts/metronic.js"
			type="text/javascript"></script>
		<script src="http://218.150.181.131/assets/admin/layout3/scripts/layout.js"
			type="text/javascript"></script>
		<script src="http://218.150.181.131/assets/admin/layout3/scripts/demo.js"
			type="text/javascript"></script>
		<script src="http://218.150.181.131/assets/admin/pages/scripts/table-advanced.js"></script>
		<script>
			jQuery(document).ready(function() {
				Metronic.init(); // init metronic core components
				Layout.init(); // init current layout
				Demo.init(); // init demo features
				TableAdvanced.init();
			});
		</script>
</body>
<!-- END BODY -->
</html>