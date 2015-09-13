<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.*"%>
<%
    request.setCharacterEncoding("UTF-8");
%>
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
<style>
@import url(http://fonts.googleapis.com/css?family=Orbitron:700,900);

@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);

#mainTitle {
	font-family: 'Orbitron', sans-serif;
	font-weight: 900;
}

.koreanStyle {
	font-family: 'Nanum Gothic', sans-serif !important;
	font-size: 50px;
}
</style>
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

.hiddenstyle {
	opacity: 0;
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
					<br> <br>
					<h1 id="mainTitle" align="center">MOVIETWEEN</h1>
					<br>
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
			<div class="infinite-container" id="postwrapper">
			<c:set var="lastIndex" value="0" />
			<c:forEach var="m" items="${list12_jangwon}" varStatus="status">
				<c:if test="${status.first}" >
				<div class="row mix-grid " id="1.0">
				</c:if>
					<div id="${m.id}"
						class="col-md-3 col-sm-4 insertimg mix infinite-item">
						<a href="Tab_movielistdetail?id=${m.id}">
						<img class='img-responsive'
							src='http://218.150.181.131/poster/${m.id}p.png' alt=''
							width='270pt'></a>
						<!--
						<div class="mix-details">
							<h4>${m.name}</h4>
							<a class='mix-preview fancybox-button'
								href='http://218.150.181.131/poster/${m.id}p.png'
								title='Project Name' data-rel='fancybox-button'> <i
								class='fa fa-search'> 영화 정보 보기</i>
							</a>
						</div>-->
					</div>
					<c:set var="lastIndex" value="${m.id}" />
				<c:if test="${status.count % 4 == 0 && !status.last}">
				</div>
				<div class="row mix-grid" id="${status.count / 4 + 1}">
				</c:if>
				<c:if test="${status.last}"></div></c:if>
				
			</c:forEach>
			</div>
	

			<div class="row">
				<div class="col-md-12">
					<div id="loadmoreajaxloader" style="background-color: green">더
						보기...</div>
				</div>
			</div>
			<!-- END PAGE CONTENT INNER -->


		</div>
	</div>
	<!-- END PAGE CONTENT -->
	<!-- END PAGE CONTAINER -->

	<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
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

	<script
		src="http://218.150.181.131/assets/libr/jquery.waypoints.min.js"></script>
	<script src="http://218.150.181.131/assets/libr/sticky.min.js"></script>
	<script src="http://218.150.181.131/assets/libr/infinite.min.js"></script>
	<script src="http://218.150.181.131/assets/libr/inview.min.js"></script>
	<script src="http://218.150.181.131/assets/libr/scripts.js"></script>
	<script>
    var lastIndex = $('.infinite-item:last').attr("id");
    $(window).scroll(function() {
        if($(window).scrollTop() == $(document).height() - $(window).height()) {
            $('div#loadmoreajaxloader').show('slow');
            //var lastIndex = $('.infinite-item:last').attr("id");
            var id = $( ".mix-grid" ).last().attr("id");
            var lastIndex = Math.floor( id )+1;
            $.get("/pages?idx=" + lastIndex, function(html) {
                    if(html) {
                        $("#postwrapper").append(html);
                        $('div#loadmoreajaxloader').hide();
                    } else {
                        $('div#loadmoreajaxloader').html('<center>No more posts to show.</center>');
                    }
                }
            );
        }
    });
</script>






	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>

