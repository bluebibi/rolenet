<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.*"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8" />

<title>Movietween | LINK 9th | Koreatech</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport">
<meta content="" name="description">
<meta content="" name="author">
<meta http-equiv="Content-type" content="text/html; charset=UTF-8" />


<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="http://218.150.181.131/assets/global/scroll/js/image.css"
	rel="stylesheet" type="text/css">
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all"
	rel="stylesheet" type="text/css">
<link
	href="http://218.150.181.131/assets/global/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href="http://218.150.181.131/assets/global/plugins/simple-line-icons/simple-line-icons.min.css"
	rel="stylesheet" type="text/css">
<link
	href="http://218.150.181.131/assets/global/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link
	href="http://218.150.181.131/assets/global/plugins/uniform/css/uniform.default.css"
	rel="stylesheet" type="text/css">
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->

<link
	href="http://218.150.181.131/assets/global/plugins/fancybox/source/jquery.fancybox.css"
	rel="stylesheet" type="text/css" />
<link href="http://218.150.181.131/assets/admin/pages/css/portfolio.css"
	rel="stylesheet" type="text/css" />
<!-- END PAGE LEVEL STYLES -->

<!-- BEGIN PAGE LEVEL PLUGIN STYLES -->
<link
	href="http://218.150.181.131/assets/global/plugins/jqvmap/jqvmap/jqvmap.css"
	rel="stylesheet" type="text/css">
<link
	href="http://218.150.181.131/assets/global/plugins/morris/morris.css"
	rel="stylesheet" type="text/css">
<!-- END PAGE LEVEL PLUGIN STYLES -->
<!-- BEGIN PAGE STYLES -->
<link href="http://218.150.181.131/assets/admin/pages/css/tasks.css"
	rel="stylesheet" type="text/css" />
<!-- END PAGE STYLES -->
<!-- BEGIN THEME STYLES -->
<link href="http://218.150.181.131/assets/global/css/components.css"
	rel="stylesheet" type="text/css">
<link href="http://218.150.181.131/assets/global/css/plugins.css"
	rel="stylesheet" type="text/css">
<link href="http://218.150.181.131/assets/admin/layout3/css/layout.css"
	rel="stylesheet" type="text/css">
<link
	href="http://218.150.181.131/assets/admin/layout3/css/themes/default.css"
	rel="stylesheet" type="text/css" id="style_color">
<link href="http://218.150.181.131/assets/admin/layout3/css/custom.css"
	rel="stylesheet" type="text/css">
<!-- END THEME STYLES -->

<link rel="shortcut icon" href="favicon.ico">

<style type="text/css" media="screen">
#title_search {
	margin: 0 auto;
}

* {
	margin: auto;
}
</style>



</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-menu-fixed" class to set the mega menu fixed  -->
<!-- DOC: Apply "page-header-top-fixed" class to set the top menu fixed  -->

<body>
	<%@include file="../includes/headerMenu.jsp"%>
	<!-- BEGIN PAGE CONTAINER -->
	<div class="page-container">
		<!-- BEGIN PAGE HEAD -->

		<div class="page-head">

			<div class="homeview">
				<!-- BEGIN PAGE TITLE -->
				<div id="head-back" class="homebox">
					<br> <br> <br> <br>
					<h1 align="center">
						MOVIETWEEN <small></small>
					</h1>
					<div class="container">
						<form class="search-form" action="search.do" method="POST">
							<div class="input-group">
								<input type="text" id="movieName" class="form-control"
									placeholder="영화 검색하기" name="query"> <span
									class="input-group-btn">
									<button type="submit" class="icon-magnifier"></button>
								</span> </span>
							</div>
						</form>
						<br> <br> <br> <br>
					</div>
				</div>
				<!-- END PAGE TITLE -->
			</div>
		</div>
	</div>
	<!-- END HEADER SEARCH BOX -->

	<!-- BEGIN PAGE CONTAINER -->
	<!-- BEGIN PAGE CONTENT -->
	<div class="page-content">
		<div class="container">
			<!-- BEGIN PAGE CONTENT INNER -->
			<article>
				<div class="infinite-container waypoint">

					<div class="row">
						<!-- BEGIN FILTER -->
						<div class="row mix-grid">
							<c:forEach var="m" items="${list_jangwon}">
								<div class="col-md-3 col-sm-4 mix">
									<img class="img-responsive infinite-item dipper"
										src="http://218.150.181.131/poster/${m.id}p.png" alt="">
									<div class="mix-details">
										<h4>Cascusamus et iusto odio</h4>
										<a class="mix-link"> <i class="fa fa-link"></i>
										</a> <a class="mix-preview fancybox-button"
											href="http://218.150.181.131/poster/${m.id}p.png"
											title="Project Name" data-rel="fancybox-button"> <i
											class="fa fa-search"></i>
										</a>
									</div>
								</div>

							</c:forEach>
						</div>
						<!-- END FILTER -->
					</div>
					<!-- END PAGE CONTENT INNER -->



				</div>
				<a class="infinite-more-link" href="/pages?id_1=${id_2}"></a>
			</article>


		</div>
	</div>
	<!-- END PAGE CONTENT -->
	<!-- END PAGE CONTAINER -->


	<script
		src="http://218.150.181.131/assets/global/plugins/jquery-migrate.min.js"></script>
	<!-- IMPORTANT! Load jquery-ui-1.10.3.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
	<script
		src="http://218.150.181.131/assets/global/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js"></script>
	<script
		src="http://218.150.181.131/assets/global/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="http://218.150.181.131/assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"></script>
	<script
		src="http://218.150.181.131/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script
		src="http://218.150.181.131/assets/global/plugins/jquery.blockui.min.js"></script>
	<script
		src="http://218.150.181.131/assets/global/plugins/jquery.cokie.min.js"></script>
	<script
		src="http://218.150.181.131/assets/global/plugins/uniform/jquery.uniform.min.js"></script>
	<!-- END CORE PLUGINS -->

	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<script
		src="http://218.150.181.131/assets/global/plugins/jquery-mixitup/jquery.mixitup.min.js"></script>
	<script
		src="http://218.150.181.131/assets/global/plugins/fancybox/source/jquery.fancybox.pack.js"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="http://218.150.181.131/assets/global/scripts/metronic.js"></script>
	<script
		src="http://218.150.181.131/assets/admin/layout3/scripts/layout.js"></script>
	<script
		src="http://218.150.181.131/assets/admin/layout3/scripts/demo.js"></script>
	<script
		src="http://218.150.181.131/assets/admin/pages/scripts/portfolio.js"></script>
	<script
		src="http://218.150.181.131/assets/admin/pages/scripts/index3.js"></script>
	<script
		src="http://218.150.181.131/assets/admin/pages/scripts/tasks.js"></script>
	<!-- 
	<script	src="http://218.150.181.131/assets/admin/pages/scripts/ecommerce-index.js"></script>
	<script	src="http://218.150.181.131/assets/global/scroll/js/jquery.scrollUp.js"></script>
	<script	src="http://218.150.181.131/assets/global/scroll/js/jquery.scrollUp.min.js"></script>
	 -->
	<!-- END PAGE LEVEL SCRIPTS -->
	<script type="text/javascript">
		jQuery(document).ready(function() {
			Metronic.init(); // init metronic core componets
			Layout.init(); // init layout
			Demo.init(); // init demo(theme settings page)
			Tasks.initDashboardWidget(); // init tash dashboard widget
			Portfolio.init();

		});
	</script>
	<!--  BEGIN INFINITE SCROLL -->

	<script src="http://218.150.181.131/assets/libr/jquery.waypoints.min.js"></script>
	<script src="http://218.150.181.131/assets/libr/sticky.min.js"></script>
	<script src="http://218.150.181.131/assets/libr/infinite.min.js"></script>
	<script src="http://218.150.181.131/assets/libr/inview.min.js"></script>
	<script src="http://218.150.181.131/assets/libr/scripts.js"></script>
	<script>
		var infinite = new Waypoint.Infinite({
			element : $('.infinite-container')[0]
		});
	</script>





	<!--  END INFINITE SCROLL -->

	<script>
		var $dipper = $('.dipper');
		$dipper.waypoint(function() {
			console.log("waypoint!!");
		})
	</script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>

