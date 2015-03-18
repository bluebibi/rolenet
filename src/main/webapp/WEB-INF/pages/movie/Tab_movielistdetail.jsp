<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<%@include file="../includes/headerMenu.jsp"%>

	<!-- BEGIN PAGE CONTAINER -->
	<div class="page-container">
		<!-- BEGIN PAGE HEAD -->
		<div class="page-head">
			<div class="container">
				<!-- BEGIN PAGE TITLE -->
				<div class="page-title">
					<h1>
						Movies <small> ${n.name}</small>
					</h1>
					<h1>
						Director <small> ${n.director}</small>
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
	<%@include file="../includes/footMenu.jsp"%>
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