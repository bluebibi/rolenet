<!DOCTYPE html>
<!-- 
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.2.0
Version: 3.2.0
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8"/>
<title>Movietween | LINK 9th | Koreatech</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta content="" name="description"/>
<meta content="" name="author"/>
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css">
<link href="http://218.150.181.131/assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="http://218.150.181.131/assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css">
<link href="http://218.150.181.131/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="http://218.150.181.131/assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css">
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN THEME STYLES -->
<link href="http://218.150.181.131/assets/global/css/components.css" rel="stylesheet" type="text/css">
<link href="http://218.150.181.131/assets/global/css/plugins.css" rel="stylesheet" type="text/css">
<link href="http://218.150.181.131/assets/admin/layout3/css/layout.css" rel="stylesheet" type="text/css">
<link href="http://218.150.181.131/assets/admin/layout3/css/themes/default.css" rel="stylesheet" type="text/css" id="style_color">
<link href="http://218.150.181.131/assets/admin/layout3/css/custom.css" rel="stylesheet" type="text/css">
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico"/>
<style>
#graph-container {
	max-width: 1015px;
	height: 570px;
}
</style>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-menu-fixed" class to set the mega menu fixed  -->
<!-- DOC: Apply "page-header-top-fixed" class to set the top menu fixed  -->
<body>
<!-- BEGIN HEADER -->
<%@include file="../includes/headerMenu.jsp"%>
<!-- END HEADER -->
<!-- BEGIN PAGE CONTAINER -->
<div class="page-container">
	<!-- BEGIN PAGE HEAD -->
	<div class="page-head">
		<div class="container">
			<!-- BEGIN PAGE TITLE -->
			<div class="page-title">
				<h1>Look in ${n.name}</h1>
			</div>
			<!-- END PAGE TITLE -->
			<!-- BEGIN PAGE TOOLBAR -->
			<div class="page-toolbar">
				<!-- BEGIN THEME PANEL -->
				
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
					<a href="/">Home</a><i class="fa fa-circle"></i>
				</li>
				<li>
					<a href="/Tab_movielist">Movielist</a>
					<i class="fa fa-circle"></i>
				</li>
				<li class="active">
					 look in - Movie
				</li>
			</ul>
			<!-- END PAGE BREADCRUMB -->
			<!-- BEGIN PAGE CONTENT INNER -->
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 margin-bottom-10">
					<a class="dashboard-stat dashboard-stat-light blue-madison" href="javascript:;">
					<div class="visual">
						<i class="fa fa-briefcase fa-icon-medium"></i>
					</div>
					<div class="details">
						<div class="number">
							 Director : ${n.director}
						</div>
						<div class="desc">
							 ${n.year}
						</div>
					</div>
					</a>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
					<a class="dashboard-stat dashboard-stat-light red-intense" href="javascript:;">
					<div class="visual">
						<i class="fa fa-shopping-cart"></i>
					</div>
					<div class="details">
						<div class="number">
							 ${n.name}
						</div>
						<div class="desc">
							 Movie title
						</div>
					</div>
					</a>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
					<a class="dashboard-stat dashboard-stat-light green-haze" href="javascript:;">
					<div class="visual">
						<i class="fa fa-group fa-icon-medium"></i>
					</div>
					<div class="details">
						<div class="number">
							 ${n.spectators}
						</div>
						<div class="desc">
							 number of Audience
						</div>
					</div>
					</a>
				</div>
			</div>
				<div>
					<!-- Begin: life time stats -->
					<div class="portlet light">
						<div class="portlet-title">
							<div class="caption">
								<i class="icon-bar-chart font-green-sharp"></i>
								<span class="caption-subject font-green-sharp bold uppercase">Actors-Network</span>
								
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
							<!-- sigmagraph-container-->
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
var id = ${n.id};
var preurl = 'http://218.150.181.131/assets/gexf/'
var last = '.gexf';
var url = preurl + id + last;

    function init() {

       	var posx = 0; // x ì¢íê°
    	var posy = 0; // y ì¢íê°
        var degree_var, cluster_var, between_var; //degree, cluster, between ê°ë¤ì ë³ì


        //addmethod()ì²«ë²ì§¸íë¼ë¯¸í°ë í¨ìì´ë¦, ëë²ì§¸ íë¼ë¯¸í°ë í´ë¹ í¨ìì ìì´ë¤.
        //neighborsë ë¸ëë¡ë¤ì´ì¤ê±°ë ëê°ë ì ë¤ì ë§íë¤. ì´ edge ë¤ì ëí ì ë³´ë¥¼ ê°ì§ í¨ìë¥¼ ì ìí¨.
        sigma.classes.graph.addMethod('neighbors', function (nodeId) {
            var k, neighbors = {}, index = this.allNeighborsIndex[nodeId]
                    || {};
            for (k in index)
                neighbors[k] = this.nodesIndex[k];
            return neighbors;
        });


        //sigmajs ì¸ì¤í´ì¤ ìì±
        var sigInst = new sigma(document.getElementById('graph-container'));

        //gexf íì¼ íì±í´ì ììì ë§ë  ìê·¸ë§ì¸ì¤í´ì¤ì ê°ì²´ë´ì© ì§ì´ë£ì.
        sigma.parsers.gexf(
        		url
                , sigInst
                , function (t) {
                    //ê·¸ëíì ìê¹ì ê¸°ì¡´ gexfì ìë ì ê·¸ëë¡ ì¬ì©í¨.
                    sigInst.graph.nodes().forEach(
                            function (n) {
                                n.originalColor = n.color;
                            });
                    sigInst.graph.edges().forEach(
                            function (e) {
                                e.originalColor = e.color;
                            });

                    sigInst.refresh();
                    // gexf-parsers.js ìì ë©ìë ì´ì©ë²ì ì ëª¨ë¥´ê²ì.
                    //console.log(t.Graph('nodes')._nodes(sigInst));
                }
        );


        //ê·¸ëíì ì´ê¸° ìí ê³¼ì ì. ê° ìì±ë§ë¤ ìíë ë´ì© ì§ì .
        sigInst.settings({
            defaultLabelColor: '#777',
            defaultLabelSize: 12,
            defaultLabelHoverColor: '#555',  //ë§ì°ì¤ í¸ë²ì ë ì´ë¸ ê¸ìì
            defaultHoverLabelBGColor: '#fff',  //ë§ì°ì¤ í¸ë²ì ë ì´ë¸ ë°°ê²½ì
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


        //ë¸ë ìì ë§ì°ì¤ ì¬ë¼ììë ì ì
        sigInst.bind('overNode', function (e) {
            var nodeId = e.data.node.id, toKeep = sigInst.graph.neighbors(nodeId);
            toKeep[nodeId] = e.data.node;

            //íì¬ ë§ì°ì¤ì ìì¹ë¥¼ êµ¬íë jqueryë¬¸
            //ìµì¤íë¡ì´ ìì¸ì²ë¦¬í´ì¼í¨.
            function doSomething(e) {
            	

            	if (!e) var e = window.event;
            	if (e.pageX || e.pageY) {
            	posx = e.pageX;
            	posy = e.pageY;
            	} else if (e.clientX || e.clientY) {
            	posx = e.clientX + document.body.scrollLeft + document.documentElement.scrollLeft;
            	posy = e.clientY + document.body.scrollTop + document.documentElement.scrollTop;
            	}
            	// posx and posy contain the mouse position relative to the document
            	// Do something with this information
            	
            	
            	}
            doSomething(event)
            degree_var =  e.data.node.attributes.degree;
            cluster_var = e.data.node.attributes.modularity_class;
            between_var = e.data.node.attributes.betweenesscentrality;

            //console.log(e.data.node.attributes);
            //console.log("yì¶ : "+mousePositionY);


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


        //ë§ì°ì¤ê° ì¤íì´ì§ë¡ ëììë í¨ì ì ì
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

        (function () {

            var popUp;

            function attributesToString() {
                return '<ul style="list-style-type:none; padding:0px; margin:0px; position:relative; left:-6px;">'+
                        '<li style="font-size:12px!important;">'+'degree : '+degree_var +'<br/>'+'cluster : '+cluster_var+'<br/>'+'between : '+between_var +'</li>' +
                        '</ul>';
            }

            function showNodeInfo(event) {
                popUp && popUp.remove();

                var node = event.data.node;

                popUp = $(
                        '<div class="node-info-popup"></div>'
                ).append(
                        attributesToString()
                ).css({
                            'display': 'inline-block',
                            'border-radius': 2,
                            'padding': 4,
                            'background': 'white',
                            'width': '130',
                            'color': '#777',
                            'z-index': '99999',
                            'border': '1px solid #eee',
                            'position': 'absolute',
                            'left': posx,
                            'top': posy + 10
                        });

                $('ul', popUp).css('margin', '0 0 0 10px');

                $('#graph-container').append(popUp);
            }

            function hideNodeInfo(event) {
                popUp && popUp.remove();
                popUp = false;
            }

            sigInst.bind('overNode', showNodeInfo).bind('outNode', hideNodeInfo).refresh();
        })();


    }

    if (document.addEventListener) {
        document.addEventListener("DOMContentLoaded", init, false);
    } else {
        window.onload = init;
    }
    $('#graph-container').css('background-color', '#FFFFD7');
    $('#graph-container').css('background-color', 'white');
    $('#graph-container').css('background-color', '#FFFFFF');
</script>

						</div>
					</div>
					<!-- End: life time stats -->
				</div>
				<div>
					<!-- Begin: life time stats -->
					<div class="portlet light">
						<div class="portlet-title tabbable-line">
							<div class="caption">
								<i class="icon-share font-red-sunglo"></i>
								<span class="caption-subject font-red-sunglo bold uppercase">Info.Movie</span>
								
							</div>
							<ul class="nav nav-tabs">
								<li>
									<a href="#portlet_tab2" data-toggle="tab" id="statistics_amounts_tab">
									Base </a>
								</li>
								<li class="active">
									<a href="#portlet_tab1" data-toggle="tab">
									Synopsis </a>
								</li>
							</ul>
						</div>
						<div class="portlet-body">
							<div class="tab-content">
								<div class="tab-pane active" id="portlet_tab1">
									${n.synopsis}
								</div>
								<div class="tab-pane" id="portlet_tab2">
									<div id="statistics_2" class="chart">
									</div>
								</div>
							</div>
							<div class="margin-top-20 no-margin no-border">
								<div class="row">
									<div class="col-md-3 col-sm-3 col-xs-6 text-stat">
										<span class="label label-success uppercase">
										Role </span>
									</div>
								</div>
								<br>
								<div>
								<table class="table table-striped table-bordered table-hover">
                                <thead>
                                <tr>
                                <th width="10%">Between</th>
                                <c:forEach var="m" items="${betweenRole}">
                                <th width="10%">${m.name}</th>
                                </c:forEach>
                                </tr>
                                <tr>
                                <th width="10%">Degree</th>
                                <c:forEach var="m" items="${degreeRole}">
                                <th width="10%">${m.name}</th>
                                </c:forEach>
                                </tr>
                                <tr>
                                <th width="10%">Naver</th>
                                <c:forEach var="m" items="${naverRole}">
                                <th width="10%">${m.name}</th>
                                </c:forEach>
                                </tr>
                                </thead>

                                <%-- <tbody>
                                <c:forEach var="m" items="${list2}">
                                    <tr onMouseOver="show(${m.id})" onMouseOut="toolTip()"
                                        onclick="document.location = 'Tab_movielistdetail?id=${m.id}';">
                                        <td id="id">${m.id}</td>

                                        <td>${m.name}</td>
                                        <td>${m.year}</td>
                                        <td>${m.director}</td>
                                        <td>${m.spectators}</td>
                                        <td>${m.diameter}</td>
                                        <td>${m.pathlength}</td>
                                        <td>${m.clustering}</td>
                                        <td>${m.density}</td>
                                    </tr>
                                </c:forEach>
                                </tbody> --%>

                            </table>
								</div>
							</div>
						</div>
					</div>
					<!-- End: life time stats -->
				</div>

			<!-- END PAGE CONTENT INNER -->
		</div>
	</div>
	<!-- END PAGE CONTENT -->
</div>
<!-- END PAGE CONTAINER -->
<!-- BEGIN FOOTER -->
<%@include file="../includes/footMenu.jsp"%>
<!-- END FOOTER -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<%@include file="../includes/footer.jsp"%>
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="http://218.150.181.131/assets/global/plugins/flot/jquery.flot.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/global/plugins/flot/jquery.flot.resize.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/global/plugins/flot/jquery.flot.categories.js" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="http://218.150.181.131/assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/admin/layout3/scripts/layout.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/admin/layout3/scripts/demo.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/admin/pages/scripts/ecommerce-index.js"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<script>
    jQuery(document).ready(function() {    
        Metronic.init(); // init metronic core components
        Layout.init(); // init current layout
        Demo.init(); // init demo features
        EcommerceIndex.init();
    });
</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>