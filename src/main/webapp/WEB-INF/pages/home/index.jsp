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
<meta http-equiv="Content-type" content="text/html;charset=UTF-8" />

<!--  BEGIN INFINITE SCROLL -->

<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script>
var infinite = new Waypoint.Infinite({
	  element: $('.infinite-container')[0]
	});
</script>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://218.150.181.131/assets/libr/jquery.waypoints.min.js"></script>
<script src="http://218.150.181.131/assets/libr/infinite.min.js"></script>
<script src="http://218.150.181.131/assets/libr/scripts.js"></script>
<script src="http://218.150.181.131/assets/libr/sticky.min.js"></script>
<script src="http://218.150.181.131/assets/libr/inview.min.js"></script>


<!--  END INFINITE SCROLL -->


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

		<!-- END HEADER SEARCH BOX -->
		<!-- BEGIN PAGE CONTENT -->

		<div class="page-content" style="background: white;">
			<!-- jangjang -->
			<div class="container" id="haha" style="background: white;">
			
			<!-- BEGIN PAGE CONTENT INNER -->
			<div class="row">
				<div class="col-md-12">
					<div class="tabbable tabbable-custom tabbable-noborder">
						
						<div class="tab-content">
							<div class="tab-pane active" id="tab_1">
								<!-- BEGIN FILTER -->
								<div class="margin-top-10">
									
									<div class="row mix-grid">
										<div class="col-md-3 col-sm-4 mix">
											<div class="mix-inner">
												<img class="img-responsive" src="../../assets/admin/pages/media/works/img1.jpg" alt="">
												<div class="mix-details">
													<h4>Cascusamus et iusto odio</h4>
													<a class="mix-link">
													<i class="fa fa-link"></i>
													</a>
													<a class="mix-preview fancybox-button" href="../../assets/admin/pages/media/works/img2.jpg" title="Project Name" data-rel="fancybox-button">
													<i class="fa fa-search"></i>
													</a>
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-4 mix">
											<div class="mix-inner">
												<img class="img-responsive" src="../../assets/admin/pages/media/works/img2.jpg" alt="">
												<div class="mix-details">
													<h4>Cascusamus et iusto accusamus</h4>
													<a class="mix-link">
													<i class="fa fa-link"></i>
													</a>
													<a class="mix-preview fancybox-button" href="../../assets/admin/pages/media/works/img2.jpg" title="Project Name" data-rel="fancybox-button">
													<i class="fa fa-search"></i>
													</a>
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-4 mix">
											<div class="mix-inner">
												<img class="img-responsive" src="../../assets/admin/pages/media/works/img3.jpg" alt="">
												<div class="mix-details">
													<h4>Cascusamus et iusto accusamus</h4>
													<a class="mix-link">
													<i class="fa fa-link"></i>
													</a>
													<a class="mix-preview fancybox-button" href="../../assets/admin/pages/media/works/img3.jpg" title="Project Name" data-rel="fancybox-button">
													<i class="fa fa-search"></i>
													</a>
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-4 mix">
											<div class="mix-inner">
												<img class="img-responsive" src="../../assets/admin/pages/media/works/img4.jpg" alt="">
												<div class="mix-details">
													<h4>Cascusamus et iusto accusamus</h4>
													<a class="mix-link">
													<i class="fa fa-link"></i>
													</a>
													<a class="mix-preview fancybox-button" href="../../assets/admin/pages/media/works/img4.jpg" title="Project Name" data-rel="fancybox-button">
													<i class="fa fa-search"></i>
													</a>
												</div>
											</div>
										</div>
										
										<div class="col-md-3 col-sm-4 mix">
											<div class="mix-inner">
												<img class="img-responsive" src="../../assets/admin/pages/media/works/img5.jpg" alt="">
												<div class="mix-details">
													<h4>Cascusamus et iusto accusamus</h4>
													<a class="mix-link">
													<i class="fa fa-link"></i>
													</a>
													<a class="mix-preview fancybox-button" href="../../assets/admin/pages/media/works/img5.jpg" title="Project Name" data-rel="fancybox-button">
													<i class="fa fa-search"></i>
													</a>
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-4 mix">
											<div class="mix-inner">
												<img class="img-responsive" src="../../assets/admin/pages/media/works/img6.jpg" alt="">
												<div class="mix-details">
													<h4>Cascusamus et iusto accusamus</h4>
													<a class="mix-link">
													<i class="fa fa-link"></i>
													</a>
													<a class="mix-preview fancybox-button" href="../../assets/admin/pages/media/works/img6.jpg" title="Project Name" data-rel="fancybox-button">
													<i class="fa fa-search"></i>
													</a>
												</div>
											</div>
										</div>
									
										
										
									</div>
								</div>
								<!-- END FILTER -->
							</div>
							
						</div>
					</div>
				</div>
			</div>
			<!-- END PAGE CONTENT INNER -->
			

			
			
			
			
		
				<article>

					<div class="infinite-container waypoint">
						<c:forEach var="m" items="${list_jangwon}">
							<div class="infinite-item"><img src="'http://218.150.181.131/poster/'+${m.id}+'p.png'">${m.id}</div>
						</c:forEach>
						
					</div>
					<a class="infinite-more-link" href="/pages?id_1=${id_2}"></a>
				</article>
				
				
			</div>

			<!-- END PAGE CONTENT INNER -->
		</div>

	</div>

	<!-- END PAGE CONTENT -->
	</div>

	<!-- END PAGE CONTAINER -->


	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="http://218.150.181.131/assets/global/scripts/metronic.js"
		type="text/javascript"></script>
	<script
		src="http://218.150.181.131/assets/admin/layout3/scripts/layout.js"
		type="text/javascript"></script>
	<script
		src="http://218.150.181.131/assets/admin/layout3/scripts/demo.js"
		type="text/javascript"></script>
	<script
		src="http://218.150.181.131/assets/admin/pages/scripts/index3.js"
		type="text/javascript"></script>
	<script
		src="http://218.150.181.131/assets/admin/pages/scripts/tasks.js"
		type="text/javascript"></script>
	<script
		src="http://218.150.181.131/assets/admin/pages/scripts/ecommerce-index.js"></script>
	<script
		src="http://218.150.181.131/assets/global/scroll/js/jquery.scrollUp.js"
		type="text/javascript"></script>
	<script
		src="http://218.150.181.131/assets/global/scroll/js/jquery.scrollUp.min.js"
		type="text/javascript"></script>
	<!-- END PAGE LEVEL SCRIPTS -->
	<script type="text/javascript">
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

