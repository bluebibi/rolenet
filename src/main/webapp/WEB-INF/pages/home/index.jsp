<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8" />
<title>Movietween | LINK 9th | Koreatech</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport">
<meta content="" name="description">
<meta content="" name="author">
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
<!-- BEGIN PAGE LEVEL PLUGIN STYLES -->
<link href="http://218.150.181.131/assets/global/plugins/jqvmap/jqvmap/jqvmap.css"
	rel="stylesheet" type="text/css">
<link href="http://218.150.181.131/assets/global/plugins/morris/morris.css"
	rel="stylesheet" type="text/css">
<!-- END PAGE LEVEL PLUGIN STYLES -->
<!-- BEGIN PAGE STYLES -->
<link href="http://218.150.181.131/assets/admin/pages/css/tasks.css" rel="stylesheet"
	type="text/css" />
<!-- END PAGE STYLES -->
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
<link rel="shortcut icon" href="favicon.ico">
<style type="text/css">
#title_search {
	margin: 0 auto;
}

#container_jang {
	max-width: 510px;
	height: 280px;
	margin: auto;
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
					<!-- JooMainImg -->
					<a href="index.html"><img src="/assets/img/logo-default.png"
						alt="logo" class="logo-default"></a>
				</div>
				<!-- END LOGO -->
				<!-- BEGIN RESPONSIVE MENU TOGGLER -->
				<a href="javascript:;" class="menu-toggler"></a>
				<!-- END RESPONSIVE MENU TOGGLER -->
			</div>
		</div>
		<!-- END HEADER TOP -->

		<%@include file="../includes/headerMenu.jsp"%>

		<!-- BEGIN PAGE CONTAINER -->
		<div class="page-container">
			<!-- BEGIN PAGE HEAD -->
			<div class="page-head">
				<div class="homeview">
					<!-- BEGIN PAGE TITLE -->
					<div id="title_search" class="homebox">
						<br> <br> <br> <br>
						<h1 align="center">
							Movietween <small>Scripts & Graphs!!</small>
						</h1>
						<div class="container">
							<form class="search-form" action="extra_search.html" method="GET">
								<div class="input-group">
									<input type="text" class="form-control"
										placeholder="Search for Movies" name="query"> <span
										class="input-group-btn"> <a href="javascript:;"
										class="btn submit"><i class="icon-magnifier"></i></a>
									</span>
								</div>
							</form>
							<br> <br> <br> <br>
						</div>
					</div>
					<!-- END PAGE TITLE -->
				</div>
			</div>

			<!-- END HEADER SEARCH BOX -->
			<!-- BEGIN PAGE CONTENT -->
			<div class="page-content">
				<div class="container">
					<!-- BEGIN PAGE BREADCRUMB -->
					<ul class="page-breadcrumb breadcrumb hide">
						<li><a href="#">Home</a><i class="fa fa-circle"></i></li>
						<li class="active">HOME</li>
					</ul>
					<!-- END PAGE BREADCRUMB -->
					<!-- BEGIN PAGE CONTENT INNER -->
					<div class="row margin-top-10">
						<div class="col-md-6 col-sm-12">
							<!-- BEGIN PORTLET-->
							<div class="portlet light ">
								<div class="portlet-title">
									<div class="caption caption-md">
										<i class="icon-bar-chart theme-font hide"></i> <span
											class="caption-subject theme-font bold uppercase">MOST
											RECOMMENDATION MOVIE</span> <span class="caption-helper hide">weekly
											stats...</span>
									</div>
									<div class="actions">
										<div class="btn-group btn-group-devided" data-toggle="buttons">
											<label
												class="btn btn-transparent grey-salsa btn-circle btn-sm active">
												<input type="radio" name="options" class="toggle"
												id="option1">Today
											</label> <label
												class="btn btn-transparent grey-salsa btn-circle btn-sm">
												<input type="radio" name="options" class="toggle"
												id="option2">Week
											</label> <label
												class="btn btn-transparent grey-salsa btn-circle btn-sm">
												<input type="radio" name="options" class="toggle"
												id="option2">Month
											</label>
										</div>
									</div>
								</div>
								<div class="portlet-body">
									<div class="row list-separated">
										<div class="col-md-3 col-sm-3 col-xs-6">
											<div class="font-grey-mint font-sm">Movie Name</div>
											<div class="uppercase font-hg font-red-flamingo">
												다시만나 <span class="font-lg font-grey-mint"></span>
											</div>
										</div>
										<div class="col-md-3 col-sm-3 col-xs-6">
											<div class="font-grey-mint font-sm">Year</div>
											<div class="uppercase font-hg theme-font">
												2004 <span class="font-lg font-grey-mint"></span>
											</div>
										</div>
										<div class="col-md-3 col-sm-3 col-xs-6">
											<div class="font-grey-mint font-sm">Director</div>
											<div class="uppercase font-hg font-purple">
												이경성 <span class="font-lg font-grey-mint"></span>
											</div>
										</div>

									</div>
									<ul class="list-separated list-inline-xs hide">
										<li>
											<div class="font-grey-mint font-sm">Total Sales</div>
											<div class="uppercase font-hg font-red-flamingo">
												13,760 <span class="font-lg font-grey-mint">$</span>
											</div>
										</li>
										<li></li>
										<li class="border">
											<div class="font-grey-mint font-sm">Revenue</div>
											<div class="uppercase font-hg theme-font">
												4,760 <span class="font-lg font-grey-mint">$</span>
											</div>
										</li>
										<li class="divider"></li>
										<li>
											<div class="font-grey-mint font-sm">Expenses</div>
											<div class="uppercase font-hg font-purple">
												11,760 <span class="font-lg font-grey-mint">$</span>
											</div>
										</li>
										<li class="divider"></li>
										<li>
											<div class="font-grey-mint font-sm">Growth</div>
											<div class="uppercase font-hg font-blue-sharp">
												9,760 <span class="font-lg font-grey-mint">$</span>
											</div>
										</li>
									</ul>
									<div style="height: 260px">
										<!-- 자리자리자리-->
										<!-- BEGIN GRAPH -->
										<div id="container_jang"></div>
										<script src="/js/sigmajs/jquery-2.1.1.min.js"></script>
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
	sigma.classes.graph
			.addMethod(
					'neighbors',
					function(nodeId) {
						var k, neighbors = {}, index = this.allNeighborsIndex[nodeId]
								|| {};
						for (k in index)
							neighbors[k] = this.nodesIndex[k];
						return neighbors;

					});

	sigma.parsers
			.gexf(
					'http://218.150.181.131/assets/gexf/051.gexf',
					{
						container : 'container_jang'
					},
					function(s) {
						s.graph
								.nodes()
								.forEach(
										function(
												n) {
											n.originalColor = n.color;
										});
						s.graph
								.edges()
								.forEach(
										function(
												e) {
											e.originalColor = e.color;
										});
						s
								.bind(
										'clickNode',
										function(
												e) {
											var nodeId = e.data.node.id, toKeep = s.graph
													.neighbors(nodeId);
											toKeep[nodeId] = e.data.node;

											s.graph
													.nodes()
													.forEach(
															function(
																	n) {
																if (toKeep[n.id])
																	n.color = n.originalColor;
																else
																	n.color = '#eee';
															});
											s.graph
													.edges()
													.forEach(
															function(
																	e) {
																if (toKeep[e.source]
																		&& toKeep[e.target])
																	e.color = e.originalColor;
																else
																	e.color = '#eee';
															});
											// Since the data has been modified, we need to
											// call the refresh method to make the colors
											// update effective.
											s
													.refresh();
										});

						// When the stage is clicked, we just color each
						// node and edge with its original color.
						s
								.bind(
										'clickStage',
										function(
												e) {
											s.graph
													.nodes()
													.forEach(
															function(
																	n) {
																n.color = n.originalColor;
															});

											s.graph
													.edges()
													.forEach(
															function(
																	e) {
																e.color = e.originalColor;
															});

											// Same as in the previous event:
											s
													.refresh();
										});
					});
</script>
										<!-- END GRAPH -->
									</div>
								</div>
							</div>
							<!-- END PORTLET-->
						</div>
						<div class="col-md-6 col-sm-12">
							<!-- BEGIN PORTLET-->
							<div class="portlet light ">
								<div class="portlet-title">
									<div class="caption caption-md">
										<i class="icon-bar-chart theme-font hide"></i> <span
											class="caption-subject theme-font bold uppercase">Updated
											Movies</span> <span class="caption-helper hide">weekly
											stats...</span>
									</div>
									<div class="actions">
										<div class="btn-group btn-group-devided" data-toggle="buttons">
											<label
												class="btn btn-transparent grey-salsa btn-circle btn-sm active">
												<input type="radio" name="options" class="toggle"
												id="option1">Today
											</label> <label
												class="btn btn-transparent grey-salsa btn-circle btn-sm">
												<input type="radio" name="options" class="toggle"
												id="option2">Week
											</label> <label
												class="btn btn-transparent grey-salsa btn-circle btn-sm">
												<input type="radio" name="options" class="toggle"
												id="option2">Month
											</label>
										</div>
									</div>
								</div>
								<div class="portlet-body">
									<div class="row number-stats margin-bottom-30">
										<div class="col-md-6 col-sm-6 col-xs-6">
											<div class="stat-left">
												<div class="stat-chart">
													<!-- do not line break "sparkline_bar" div. sparkline chart has an issue when the container div has line break -->
													<div id="sparkline_bar"></div>
												</div>
												<div class="stat-number">
													<div class="title">Total</div>
													<div class="number">500개</div>
												</div>
											</div>
										</div>
										<div class="col-md-6 col-sm-6 col-xs-6">
											<div class="stat-right">
												<div class="stat-chart">
													<!-- do not line break "sparkline_bar" div. sparkline chart has an issue when the container div has line break -->
													<div id="sparkline_bar2"></div>
												</div>
												<div class="stat-number">
													<div class="title">New</div>
													<div class="number">27개</div>
												</div>
											</div>
										</div>
									</div>
									<div class="table-scrollable table-scrollable-borderless">
										<table class="table table-hover table-light">
											<thead>
												<tr class="font-grey-mint font-sm">
													<th>Movie</th>
													<th>Year</th>
													<th>Actor</th>
													<th>Director</th>
													<th>Clicked</th>
												</tr>
											</thead>
											<tr>
												<td><a href="javascript:;" class="primary-link">오늘의연애</a>
												</td>
												<td>2015</td>
												<td>문채원</td>
												<td>몰라</td>
												<td><span class="bold theme-font">999</span></td>
											</tr>
											<tr>
												<td><a href="javascript:;" class="primary-link">오늘의연애</a>
												</td>
												<td>2015</td>
												<td>문채원</td>
												<td>몰라</td>
												<td><span class="bold theme-font">999</span></td>
											</tr>
											<tr>
												<td><a href="javascript:;" class="primary-link">오늘의연애</a>
												</td>
												<td>2015</td>
												<td>문채원</td>
												<td>몰라</td>
												<td><span class="bold theme-font">999</span></td>
											</tr>
											<tr>
												<td><a href="javascript:;" class="primary-link">오늘의연애</a>
												</td>
												<td>2015</td>
												<td>문채원</td>
												<td>몰라</td>
												<td><span class="bold theme-font">999</span></td>
											</tr>

										</table>
									</div>
								</div>
							</div>
							<!-- END PORTLET-->
						</div>
					</div>

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
						<p>Korea University of Technology and Education (KoreaTech),
							Department of Computer Science & Engineering, The LINK lab.</p>
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
							<li><a href="javascript:;" data-original-title="youtube"
								class="youtube"></a></li>
						</ul>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-12 footer-block">
						<h2>Contacts</h2>
						<address class="margin-bottom-40">
							Phone: 800 123 3456<br> Email: <a
								href="mailto:info@metronic.com">info@link.com</a>
						</address>
					</div>
				</div>
			</div>
		</div>
		<!-- END PRE-FOOTER -->
		<!-- BEGIN FOOTER -->
		<div class="page-footer">
			<div class="container">2015 &copy; LINK 9th. All Rights
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
		<script src="http://218.150.181.131/assets/global/plugins/jquery.min.js"
			type="text/javascript"></script>
		<script src="http://218.150.181.131/assets/global/plugins/jquery-migrate.min.js"
			type="text/javascript"></script>
		<!-- IMPORTANT! Load jquery-ui-1.10.3.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
		<script
			src="http://218.150.181.131/assets/global/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js"
			type="text/javascript"></script>
		<script
			src="http://218.150.181.131/assets/global/plugins/bootstrap/js/bootstrap.min.js"
			type="text/javascript"></script>
		<script
			src="http://218.150.181.131/assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"
			type="text/javascript"></script>
		<script
			src="http://218.150.181.131/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js"
			type="text/javascript"></script>
		<script src="http://218.150.181.131/assets/global/plugins/jquery.blockui.min.js"
			type="text/javascript"></script>
		<script src="http://218.150.181.131/assets/global/plugins/jquery.cokie.min.js"
			type="text/javascript"></script>
		<script
			src="http://218.150.181.131/assets/global/plugins/uniform/jquery.uniform.min.js"
			type="text/javascript"></script>
		<!-- END CORE PLUGINS -->
		<!-- BEGIN PAGE LEVEL PLUGINS -->
		<script src="http://218.150.181.131/assets/global/plugins/jqvmap/jqvmap/jquery.vmap.js"
			type="text/javascript"></script>
		<script
			src="http://218.150.181.131/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.russia.js"
			type="text/javascript"></script>
		<script
			src="http://218.150.181.131/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.world.js"
			type="text/javascript"></script>
		<script
			src="http://218.150.181.131/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.europe.js"
			type="text/javascript"></script>
		<script
			src="http://218.150.181.131/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.germany.js"
			type="text/javascript"></script>
		<script
			src="http://218.150.181.131/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.usa.js"
			type="text/javascript"></script>
		<script
			src="http://218.150.181.131/assets/global/plugins/jqvmap/jqvmap/data/jquery.vmap.sampledata.js"
			type="text/javascript"></script>
		<!-- IMPORTANT! fullcalendar depends on jquery-ui-1.10.3.custom.min.js for drag & drop support -->
		<script src="http://218.150.181.131/assets/global/plugins/morris/morris.min.js"
			type="text/javascript"></script>
		<script src="http://218.150.181.131/assets/global/plugins/morris/raphael-min.js"
			type="text/javascript"></script>
		<script src="http://218.150.181.131/assets/global/plugins/jquery.sparkline.min.js"
			type="text/javascript"></script>
		<!-- END PAGE LEVEL PLUGINS -->
		<!-- BEGIN PAGE LEVEL SCRIPTS -->
		<script src="http://218.150.181.131/assets/global/scripts/metronic.js"
			type="text/javascript"></script>
		<script src="http://218.150.181.131/assets/admin/layout3/scripts/layout.js"
			type="text/javascript"></script>
		<script src="http://218.150.181.131/assets/admin/layout3/scripts/demo.js"
			type="text/javascript"></script>
		<script src="http://218.150.181.131/assets/admin/pages/scripts/index3.js"
			type="text/javascript"></script>
		<script src="http://218.150.181.131/assets/admin/pages/scripts/tasks.js"
			type="text/javascript"></script>
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