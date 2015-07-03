<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8" />

    <title>Movie</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"></meta>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8"></meta>
    <meta content="" name="description"/>
    <meta content="" name="author"/>
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all"
          rel="stylesheet" type="text/css">
    <link href="http://218.150.181.131/assets/global/plugins/font-awesome/css/font-awesome.min.css"
          rel="stylesheet" type="text/css">
    <link href="http://218.150.181.131/assets/global/plugins/simple-line-icons/simple-line-icons.min.css"
          rel="stylesheet" type="text/css">
    <link href="http://218.150.181.131/assets/global/plugins/bootstrap/css/bootstrap.min.css"
          rel="stylesheet" type="text/css">
    <link href="http://218.150.181.131/assets/global/plugins/uniform/css/uniform.default.css"
          rel="stylesheet" type="text/css">
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link rel="stylesheet" type="text/css"
          href="http://218.150.181.131/assets/global/plugins/select2/select2.css"/>
    <link rel="stylesheet" type="text/css"
          href="http://218.150.181.131/assets/global/plugins/datatables/extensions/Scroller/css/dataTables.scroller.min.css"/>
    <link rel="stylesheet" type="text/css"
          href="http://218.150.181.131/assets/global/plugins/datatables/extensions/ColReorder/css/dataTables.colReorder.min.css"/>
    <link rel="stylesheet" type="text/css"
          href="http://218.150.181.131/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css"/>
    <!-- END PAGE LEVEL STYLES -->
    <!-- BEGIN THEME STYLES -->
    <link href="http://218.150.181.131/assets/global/css/components.css"
          rel="stylesheet" type="text/css">
    <link href="http://218.150.181.131/assets/global/css/plugins.css"
          rel="stylesheet" type="text/css">
    <link href="http://218.150.181.131/assets/admin/layout3/css/layout.css"
          rel="stylesheet" type="text/css">
    <link href="http://218.150.181.131/assets/admin/layout3/css/themes/default.css"
          rel="stylesheet" type="text/css" id="style_color">
    <link href="http://218.150.181.131/assets/admin/layout3/css/custom.css"
          rel="stylesheet" type="text/css">
    <!-- END THEME STYLES -->
    <link rel="shortcut icon" href="favicon.ico"/>
</head>
<!-- END HEAD -->

<!-- BEGIN BODY -->
<body>
<%@include file="../includes/headerMenu.jsp"%>
<div class="page-container">
	<!-- BEGIN PAGE HEAD -->
	<div class="page-head">
		<div class="container">
			<!-- BEGIN PAGE TITLE -->
			<div class="page-title">
				<h1>Flotchart <small>Attractive JavaScript plotting for jQuery</small></h1>
			</div>
			<!-- END PAGE TITLE -->
		</div>
	</div>
	<!-- END PAGE HEAD -->
	<!-- BEGIN PAGE CONTENT -->
	<div class="page-content">
		<div class="container">
			<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			<div class="modal fade" id="portlet-config" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
							<h4 class="modal-title">Modal title</h4>
						</div>
						<div class="modal-body">
							 Widget settings form goes here
						</div>
						<div class="modal-footer">
							<button type="button" class="btn blue">Save changes</button>
							<button type="button" class="btn default" data-dismiss="modal">Close</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			<!-- BEGIN PAGE BREADCRUMB -->
			<ul class="page-breadcrumb breadcrumb">
				<li>
					<a href="#">Home</a><i class="fa fa-circle"></i>
				</li>
				<li>
					<a href="charts_flotcharts.html">Extra</a>
					<i class="fa fa-circle"></i>
				</li>
				<li>
					<a href="charts_flotcharts.html">Charts</a>
					<i class="fa fa-circle"></i>
				</li>
				<li class="active">
					 Flotchart
				</li>
			</ul>
			<!-- END PAGE BREADCRUMB -->
			<!-- BEGIN PAGE CONTENT INNER -->
			<!-- BEGIN CHART PORTLETS-->
			<div class="row">
				<div class="col-md-12">
					<!-- BEGIN BASIC CHART PORTLET-->
					<!-- BEGIN INTERACTIVE CHART PORTLET-->
					<div class="portlet light">
						<div class="portlet-title">
							<div class="caption">
								<i class="fa fa-cogs font-green-sharp"></i>
								<span class="caption-subject font-green-sharp bold uppercase">Interactive Chart</span>
							</div>
							<div class="tools">
								<a href="javascript:;" class="collapse">
								</a>
								<a href="#portlet-config" data-toggle="modal" class="config">
								</a>
								<a href="javascript:;" class="reload">
								</a>
								<a href="javascript:;" class="remove">
								</a>
							</div>
						</div>
						<div class="portlet-body">
							<div id="chart_2" class="chart">
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
					<div class="col-md-12">
						<!-- BEGIN CHART PORTLET-->
						<div class="portlet light">
							<div class="portlet-title">
								<div class="caption">
									<i class="icon-bar-chart font-green-haze"></i>
									<span class="caption-subject bold uppercase font-green-haze"> 3D Chart</span>
									<span class="caption-helper">3d cylinder chart</span>
								</div>
							<div class="tools">
							<a href="javascript:;" class="collapse"></a>
							<a href="#portlet-config" data-toggle="modal" class="config"></a>
							<a href="javascript:;" class="reload"></a>
							<a href="javascript:;" class="fullscreen"></a>
							<a href="javascript:;" class="remove"></a>
							</div>
							</div>
						<div class="portlet-body">
							<div id="chart_5" class="chart" style="height: 400px;"></div>
								<div class="well margin-top-20">
										<div class="row">
											<div class="col-sm-3">
												<label class="text-left">Top Radius:</label>
												<input class="chart_5_chart_input" data-property="topRadius" type="range" min="0" max="1.5" value="1" step="0.01"/>
											</div>
											<div class="col-sm-3">
												<label class="text-left">Angle:</label>
												<input class="chart_5_chart_input" data-property="angle" type="range" min="0" max="89" value="30" step="1"/>
											</div>
											<div class="col-sm-3">
												<label class="text-left">Depth:</label>
												<input class="chart_5_chart_input" data-property="depth3D" type="range" min="1" max="120" value="40" step="1"/>
											</div>
										</div>
								</div>
								</div>
							</div>
							<!-- END CHART PORTLET-->
						</div>
					</div>
					
			<!-- END PIE CHART PORTLET-->
			<!-- END PAGE CONTENT INNER -->
		</div>
	</div>
	<!-- END PAGE CONTENT -->
</div>
<!-- END PAGE CONTAINER -->
<!-- END PAGE CONTAINER -->
<%@include file="../includes/footMenu.jsp"%>
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<%@include file="../includes/footer.jsp"%>
<!-- BEGIN PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="http://218.150.181.131/assets/global/plugins/flot/jquery.flot.min.js"></script>
<script src="http://218.150.181.131/assets/global/plugins/flot/jquery.flot.resize.min.js"></script>
<script src="http://218.150.181.131/assets/global/plugins/flot/jquery.flot.pie.min.js"></script>
<script src="http://218.150.181.131/assets/global/plugins/flot/jquery.flot.stack.min.js"></script>
<script src="http://218.150.181.131/assets/global/plugins/flot/jquery.flot.crosshair.min.js"></script>
<script src="http://218.150.181.131/assets/global/plugins/flot/jquery.flot.categories.min.js" type="text/javascript"></script>
<script src="/resources/js/charts-flotcharts.js"></script>

<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="http://218.150.181.131/assets/global/plugins/amcharts/amcharts/amcharts.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/global/plugins/amcharts/amcharts/serial.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/global/plugins/amcharts/amcharts/pie.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/global/plugins/amcharts/amcharts/radar.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/global/plugins/amcharts/amcharts/themes/light.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/global/plugins/amcharts/amcharts/themes/patterns.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/global/plugins/amcharts/amcharts/themes/chalk.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/global/plugins/amcharts/ammap/ammap.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/global/plugins/amcharts/ammap/maps/js/worldLow.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/global/plugins/amcharts/amstockcharts/amstock.js" type="text/javascript"></script>
<script src="/resources/js/charts-amcharts.js"></script>
<!-- END PAGE LEVEL PLUGINS -->


<!-- END PAGE LEVEL PLUGINS -->
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
        src="http://218.150.181.131/assets/global/plugi
        ns/datatables/plugins/bootstrap/dataTables.bootstrap.js"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="http://218.150.181.131/assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/admin/layout3/scripts/layout.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/admin/layout3/scripts/demo.js" type="text/javascript"></script>
<script src="/resources/js/table-advanced.js"></script>
<script>
    jQuery(document).ready(function () {
        Metronic.init(); // init metronic core components
        Layout.init(); // init current layout
        Demo.init(); // init demo features
        ChartsFlotcharts.init();
        ChartsFlotcharts.initCharts();
        ChartsFlotcharts.initPieCharts();
        ChartsFlotcharts.initBarCharts();
        ChartsAmcharts.init();
    });
</script>
</body>
<!-- END BODY -->
</html>