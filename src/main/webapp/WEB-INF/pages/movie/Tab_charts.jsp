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
				<h1>Analysis <small> about movies</small></h1>
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
					<a href="/">Home</a><i class="fa fa-circle"></i>
				</li>
				<li>
					<a href="Tab_charts">Analysis</a>
					<i class="fa fa-circle"></i>
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
								<span class="caption-subject font-green-sharp bold uppercase">Analysis movie about year</span>
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
									&nbsp;
									<select id="seledtBox" onchange="reload(this.value)">
									<option id="0" value="0">clustering</option>
									<option id="1" value="1">diameter</option>
									<option id="2" value="2">pathlength</option>
									<option id="3" value="3">density</option>
									</select>
									&nbsp;
									<span>AND ORDER BY</span>
									&nbsp;
									<select id="seledtBox" onchange="reload2(this.value)">
									<option id="0" value="0">YEAR</option>
									<option id="1" value="1">SPACTATORS</option>
									</select>
									
								</div>
								
							<div class="tools">
							<a href="javascript:;" class="collapse"></a>
							<a href="#portlet-config" data-toggle="modal" class="config"></a>
							<a href="javascript:;" class="reload"></a>
							<a href="javascript:;" class="fullscreen"></a>
							<a href="javascript:;" class="remove"></a>
							</div>
							</div>
						<div class="portlet-body1">
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
<!--  -->

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
<!--<script src="/resources/js/charts-amcharts.js"></script>  -->
<!-- END PAGE LEVEL PLUGINS -->


<!-- END PAGE LEVEL PLUGINS -->
<script type="text/javascript"
        src="http://218.150.181.131/assets/global/plugins/select2/select2.min.js"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="http://218.150.181.131/assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/admin/layout3/scripts/layout.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/admin/layout3/scripts/demo.js" type="text/javascript"></script>
<script>
var flag = ${flag};
var flag2 = ${flag2};
/* function flagChange(flag2)
{
	flag = flag2;
	$( ".portlet-body1" ).empty();
	var string = "<div id='chart_5' class='chart' style='height: 400px;'></div><div class='well margin-top-20'>";
	string += "<div class='row'><div class='col-sm-3'><label class='text-left'>Top Radius:</label>";
	string += "<input class='chart_5_chart_input' data-property='topRadius' type='range' min='0' max='1.5' value='1' step='0.01'/>";
	string += "</div><div class='col-sm-3'><label class='text-left'>Angle:</label><input class='chart_5_chart_input' data-property='angle' type='range' min='0' max='89' value='30' step='1'/>";
	string += "</div><div class='col-sm-3'><label class='text-left'>Depth:</label><input class='chart_5_chart_input' data-property='depth3D' type='range' min='1' max='120' value='40' step='1'/>";
	string += "</div></div></div>";
	$(string).appendTo(".portlet-body1");
	
	//location.reload();
	console.log(flag);
} */

function reload(flag3){
	location.href="/Tab_charts?flag=" + flag3 + "&flag2=" + ${flag2};
}

function reload2(flag3){
	location.href="/Tab_charts?flag=" + ${flag} + "&flag2=" + flag3;
}
var ChartsAmcharts = function() {
	console.log("22" + flag);
	var id = new Array();
	var name = new Array();
	var director = new Array();
	var year = new Array();
	var diameter = new Array();
	var pathlength = new Array();
	var clustering = new Array();
	var density = new Array();
	
	if(flag2 == 0){
		<c:forEach items="${last}" var="item">
		name.push("${item.name}");
		</c:forEach>
	} else{
		<c:forEach items="${Spactators}" var="item">
		name.push("${item.name}");
		</c:forEach>
	}
	
	<c:forEach items="${last}" var="item">
	id.push("${item.id}");
	director.push("${item.director}");
	year.push("${item.year}");
	
	if (flag == 0 ){
		clustering.push("${item.clustering}");
	} else if(flag == 1){
		clustering.push("${item.diameter}");
	} else if(flag == 2){
		clustering.push("${item.pathlength}");
	} else{
		clustering.push("${item.density}");
	}
	</c:forEach>
	
	
	
    var initChartSample1 = function() {
        var chart = AmCharts.makeChart("chart_1", {
            "type": "serial",
            "theme": "light",
            "pathToImages": Metronic.getGlobalPluginsPath() + "amcharts/amcharts/images/",
            "autoMargins": false,
            "marginLeft": 30,
            "marginRight": 8,
            "marginTop": 10,
            "marginBottom": 26,

            "fontFamily": 'Open Sans',            
            "color":    '#888',
            
            "dataProvider": [{
                "year": 2009,
                "income": 23.5,
                "expenses": 18.1
            }, {
                "year": 2010,
                "income": 26.2,
                "expenses": 22.8
            }, {
                "year": 2011,
                "income": 30.1,
                "expenses": 23.9
            }, {
                "year": 2012,
                "income": 29.5,
                "expenses": 25.1
            }, {
                "year": 2013,
                "income": 30.6,
                "expenses": 27.2,
                "dashLengthLine": 5
            }, {
                "year": 2014,
                "income": 34.1,
                "expenses": 29.9,
                "dashLengthColumn": 5,
                "alpha": 0.2,
                "additional": "(projection)"
            }],
            "valueAxes": [{
                "axisAlpha": 0,
                "position": "left"
            }],
            "startDuration": 1,
            "graphs": [{
                "alphaField": "alpha",
                "balloonText": "<span style='font-size:13px;'>[[title]] in [[category]]:<b>[[value]]</b> [[additional]]</span>",
                "dashLengthField": "dashLengthColumn",
                "fillAlphas": 1,
                "title": "Income",
                "type": "column",
                "valueField": "income"
            }, {
                "balloonText": "<span style='font-size:13px;'>[[title]] in [[category]]:<b>[[value]]</b> [[additional]]</span>",
                "bullet": "round",
                "dashLengthField": "dashLengthLine",
                "lineThickness": 3,
                "bulletSize": 7,
                "bulletBorderAlpha": 1,
                "bulletColor": "#FFFFFF",
                "useLineColorForBulletBorder": true,
                "bulletBorderThickness": 3,
                "fillAlphas": 0,
                "lineAlpha": 1,
                "title": "Expenses",
                "valueField": "expenses"
            }],
            "categoryField": "year",
            "categoryAxis": {
                "gridPosition": "start",
                "axisAlpha": 0,
                "tickLength": 0
            }
        });

        $('#chart_1').closest('.portlet').find('.fullscreen').click(function() {
            chart.invalidateSize();
        });
    }

    var initChartSample2 = function() {
        var chart = AmCharts.makeChart("chart_22", {
            "type": "serial",
            "theme": "light",

            "fontFamily": 'Open Sans',
            "color":    '#888888',

            "legend": {
                "equalWidths": false,
                "useGraphSettings": true,
                "valueAlign": "left",
                "valueWidth": 120
            },
            "dataProvider": [{
                "date": "2012-01-01",
                "distance": 227,
                "townName": "New York",
                "townName2": "New York",
                "townSize": 25,
                "latitude": 40.71,
                "duration": 408
            }, {
                "date": "2012-01-02",
                "distance": 371,
                "townName": "Washington",
                "townSize": 14,
                "latitude": 38.89,
                "duration": 482
            }, {
                "date": "2012-01-03",
                "distance": 433,
                "townName": "Wilmington",
                "townSize": 6,
                "latitude": 34.22,
                "duration": 562
            }, {
                "date": "2012-01-04",
                "distance": 345,
                "townName": "Jacksonville",
                "townSize": 7,
                "latitude": 30.35,
                "duration": 379
            }, {
                "date": "2012-01-05",
                "distance": 480,
                "townName": "Miami",
                "townName2": "Miami",
                "townSize": 10,
                "latitude": 25.83,
                "duration": 501
            }, {
                "date": "2012-01-06",
                "distance": 386,
                "townName": "Tallahassee",
                "townSize": 7,
                "latitude": 30.46,
                "duration": 443
            }, {
                "date": "2012-01-07",
                "distance": 348,
                "townName": "New Orleans",
                "townSize": 10,
                "latitude": 29.94,
                "duration": 405
            }, {
                "date": "2012-01-08",
                "distance": 238,
                "townName": "Houston",
                "townName2": "Houston",
                "townSize": 16,
                "latitude": 29.76,
                "duration": 309
            }, {
                "date": "2012-01-09",
                "distance": 218,
                "townName": "Dalas",
                "townSize": 17,
                "latitude": 32.8,
                "duration": 287
            }, {
                "date": "2012-01-10",
                "distance": 349,
                "townName": "Oklahoma City",
                "townSize": 11,
                "latitude": 35.49,
                "duration": 485
            }, {
                "date": "2012-01-11",
                "distance": 603,
                "townName": "Kansas City",
                "townSize": 10,
                "latitude": 39.1,
                "duration": 890
            }, {
                "date": "2012-01-12",
                "distance": 534,
                "townName": "Denver",
                "townName2": "Denver",
                "townSize": 18,
                "latitude": 39.74,
                "duration": 810
            }, {
                "date": "2012-01-13",
                "townName": "Salt Lake City",
                "townSize": 12,
                "distance": 425,
                "duration": 670,
                "latitude": 40.75,
                "dashLength": 8,
                "alpha": 0.4
            }, {
                "date": "2012-01-14",
                "latitude": 36.1,
                "duration": 470,
                "townName": "Las Vegas",
                "townName2": "Las Vegas"
            }, {
                "date": "2012-01-15"
            }, {
                "date": "2012-01-16"
            }, {
                "date": "2012-01-17"
            }, {
                "date": "2012-01-18"
            }, {
                "date": "2012-01-19"
            }],
            "valueAxes": [{
                "id": "distanceAxis",
                "axisAlpha": 0,
                "gridAlpha": 0,
                "position": "left",
                "title": "distance"
            }, {
                "id": "latitudeAxis",
                "axisAlpha": 0,
                "gridAlpha": 0,
                "labelsEnabled": false,
                "position": "right"
            }, {
                "id": "durationAxis",
                "duration": "mm",
                "durationUnits": {
                    "hh": "h ",
                    "mm": "min"
                },
                "axisAlpha": 0,
                "gridAlpha": 0,
                "inside": true,
                "position": "right",
                "title": "duration"
            }],
            "graphs": [{
                "alphaField": "alpha",
                "balloonText": "[[value]] miles",
                "dashLengthField": "dashLength",
                "fillAlphas": 0.7,
                "legendPeriodValueText": "total: [[value.sum]] mi",
                "legendValueText": "[[value]] mi",
                "title": "distance",
                "type": "column",
                "valueField": "distance",
                "valueAxis": "distanceAxis"
            }, {
                "balloonText": "latitude:[[value]]",
                "bullet": "round",
                "bulletBorderAlpha": 1,
                "useLineColorForBulletBorder": true,
                "bulletColor": "#FFFFFF",
                "bulletSizeField": "townSize",
                "dashLengthField": "dashLength",
                "descriptionField": "townName",
                "labelPosition": "right",
                "labelText": "[[townName2]]",
                "legendValueText": "[[description]]/[[value]]",
                "title": "latitude/city",
                "fillAlphas": 0,
                "valueField": "latitude",
                "valueAxis": "latitudeAxis"
            }, {
                "bullet": "square",
                "bulletBorderAlpha": 1,
                "bulletBorderThickness": 1,
                "dashLengthField": "dashLength",
                "legendValueText": "[[value]]",
                "title": "duration",
                "fillAlphas": 0,
                "valueField": "duration",
                "valueAxis": "durationAxis"
            }],
            "chartCursor": {
                "categoryBalloonDateFormat": "DD",
                "cursorAlpha": 0.1,
                "cursorColor": "#000000",
                "fullWidth": true,
                "valueBalloonsEnabled": false,
                "zoomable": false
            },
            "dataDateFormat": "YYYY-MM-DD",
            "categoryField": "date",
            "categoryAxis": {
                "dateFormats": [{
                    "period": "DD",
                    "format": "DD"
                }, {
                    "period": "WW",
                    "format": "MMM DD"
                }, {
                    "period": "MM",
                    "format": "MMM"
                }, {
                    "period": "YYYY",
                    "format": "YYYY"
                }],
                "parseDates": true,
                "autoGridCount": false,
                "axisColor": "#555555",
                "gridAlpha": 0.1,
                "gridColor": "#FFFFFF",
                "gridCount": 50
            },
            "exportConfig": {
                "menuBottom": "20px",
                "menuRight": "22px",
                "menuItems": [{
                    "icon": Metronic.getGlobalPluginsPath() + "amcharts/amcharts/images/export.png",
                    "format": 'png'
                }]
            }
        });

        $('#chart_22').closest('.portlet').find('.fullscreen').click(function() {
            chart.invalidateSize();
        });
    }

    var initChartSample3 = function() {
        var chart = AmCharts.makeChart("chart_3", {
            "type": "serial",
            "theme": "light",

            "fontFamily": 'Open Sans',            
            "color":    '#888888',
            
            "pathToImages": "http://218.150.181.131/assets/global/plugins/amcharts/amcharts/images/",

            "dataProvider": [{
                "lineColor": "#b7e021",  
                "date": "2012-01-01",
                "duration": 408
            }, {
                "date": "2012-01-02",
                "duration": 482
            }, {
                "date": "2012-01-03",
                "duration": 562
            }, {
                "date": "2012-01-04",
                "duration": 379
            }, {
                "lineColor": "#fbd51a",
                "date": "2012-01-05",
                "duration": 501
            }, {
                "date": "2012-01-06",
                "duration": 443
            }, {
                "date": "2012-01-07",
                "duration": 405
            }, {
                "date": "2012-01-08",
                "duration": 309,
                "lineColor": "#2498d2"
            }, {
                "date": "2012-01-09",
                "duration": 287
            }, {
                "date": "2012-01-10",
                "duration": 485
            }, {
                "date": "2012-01-11",
                "duration": 890
            }, {
                "date": "2012-01-12",
                "duration": 810
            }],
            "balloon": {
                "cornerRadius": 6
            },
            "valueAxes": [{
                "duration": "mm",
                "durationUnits": {
                    "hh": "h ",
                    "mm": "min"
                },
                "axisAlpha": 0
            }],
            "graphs": [{
                "bullet": "square",
                "bulletBorderAlpha": 1,
                "bulletBorderThickness": 1,
                "fillAlphas": 0.3,
                "fillColorsField": "lineColor",
                "legendValueText": "[[value]]",
                "lineColorField": "lineColor",
                "title": "duration",
                "valueField": "duration"
            }],
            "chartScrollbar": {},
            "chartCursor": {
                "categoryBalloonDateFormat": "YYYY MMM DD",
                "cursorAlpha": 0,
                "zoomable": false
            },
            "dataDateFormat": "YYYY-MM-DD",
            "categoryField": "date",
            "categoryAxis": {
                "dateFormats": [{
                    "period": "DD",
                    "format": "DD"
                }, {
                    "period": "WW",
                    "format": "MMM DD"
                }, {
                    "period": "MM",
                    "format": "MMM"
                }, {
                    "period": "YYYY",
                    "format": "YYYY"
                }],
                "parseDates": true,
                "autoGridCount": false,
                "axisColor": "#555555",
                "gridAlpha": 0,
                "gridCount": 50
            }
        });

        $('#chart_3').closest('.portlet').find('.fullscreen').click(function() {
            chart.invalidateSize();
        });
    }

    var initChartSample4 = function() {
        var chart = AmCharts.makeChart("chart_4", {
            "type": "serial",
            "theme": "light",


            "handDrawn": true,
            "handDrawScatter": 3,
            "legend": {
                "useGraphSettings": true,
                "markerSize": 12,
                "valueWidth": 0,
                "verticalGap": 0
            },
            "dataProvider": [{
                "year": 2005,
                "income": 23.5,
                "expenses": 18.1
            }, {
                "year": 2006,
                "income": 26.2,
                "expenses": 22.8
            }, {
                "year": 2007,
                "income": 30.1,
                "expenses": 23.9
            }, {
                "year": 2008,
                "income": 29.5,
                "expenses": 25.1
            }, {
                "year": 2009,
                "income": 24.6,
                "expenses": 25
            }],
            "valueAxes": [{
                "minorGridAlpha": 0.08,
                "minorGridEnabled": true,
                "position": "top",
                "axisAlpha": 0
            }],
            "startDuration": 1,
            "graphs": [{
                "balloonText": "<span style='font-size:13px;'>[[title]] in [[category]]:<b>[[value]]</b></span>",
                "title": "Income",
                "type": "column",
                "fillAlphas": 0.8,

                "valueField": "income"
            }, {
                "balloonText": "<span style='font-size:13px;'>[[title]] in [[category]]:<b>[[value]]</b></span>",
                "bullet": "round",
                "bulletBorderAlpha": 1,
                "bulletColor": "#FFFFFF",
                "useLineColorForBulletBorder": true,
                "fillAlphas": 0,
                "lineThickness": 2,
                "lineAlpha": 1,
                "bulletSize": 7,
                "title": "Expenses",
                "valueField": "expenses"
            }],
            "rotate": true,
            "categoryField": "year",
            "categoryAxis": {
                "gridPosition": "start"
            }
        });

        $('#chart_4').closest('.portlet').find('.fullscreen').click(function() {
            chart.invalidateSize();
        });
    }

    var initChartSample5 = function() {
        var chart = AmCharts.makeChart("chart_5", {
            "theme": "light",
            "type": "serial",
            "startDuration": 2,

            "fontFamily": 'Open Sans',
            
            "color":    '#888',

            "dataProvider": [{
                "movie": name[0],
                "cluster": clustering[0],
                "color": "#FF0F00"
            }, {
                "movie": name[1],
                "cluster": clustering[1],
                "color": "#FF6600"
            }, {
                "movie": name[2],
                "cluster": clustering[2],
                "color": "#FF9E01"
            }, {
                "movie": name[3],
                "cluster": clustering[3],
                "color": "#FCD202"
            }, {
                "movie": name[4],
                "cluster": clustering[4],
                "color": "#F8FF01"
            }, {
                "movie": name[5],
                "cluster": clustering[5],
                "color": "#B0DE09"
            }, {
                "movie": name[6],
                "cluster": clustering[6],
                "color": "#04D215"
            }, {
                "movie": name[7],
                "cluster": clustering[7],
                "color": "#0D8ECF"
            }, {
                "movie": name[8],
                "cluster": clustering[8],
                "color": "#0D52D1"
            }, {
                "movie": name[9],
                "cluster": clustering[9],
                "color": "#2A0CD0"
            }, {
                "movie": name[10],
                "cluster": clustering[10],
                "color": "#8A0CCF"
            }, {
                "movie": name[11],
                "cluster": clustering[11],
                "color": "#CD0D74"
            }, {
                "movie": name[12],
                "cluster": clustering[12],
                "color": "#754DEB"
            }, {
                "movie": name[13],
                "cluster": clustering[13],
                "color": "#DDDDDD"
            }, {
                "movie": name[14],
                "cluster": clustering[14],
                "color": "#999999"
            }],
            "valueAxes": [{
                "position": "left",
                "axisAlpha": 0,
                "gridAlpha": 0
            }],
            "graphs": [{
                "balloonText": "[[category]]: <b>[[value]]</b>",
                "colorField": "color",
                "fillAlphas": 0.85,
                "lineAlpha": 0.1,
                "type": "column",
                "topRadius": 1,
                "valueField": "cluster"
            }],
            "depth3D": 40,
            "angle": 30,
            "chartCursor": {
                "categoryBalloonEnabled": false,
                "cursorAlpha": 0,
                "zoomable": false
            },
            "categoryField": "movie",
            "categoryAxis": {
                "gridPosition": "start",
                "axisAlpha": 0,
                "gridAlpha": 0

            },
            "exportConfig": {
                "menuTop": "20px",
                "menuRight": "20px",
                "menuItems": [{
                    "icon": '/lib/3/images/export.png',
                    "format": 'png'
                }]
            }
        }, 0);

        jQuery('.chart_5_chart_input').off().on('input change', function() {
            var property = jQuery(this).data('property');
            var target = chart;
            chart.startDuration = 0;

            if (property == 'topRadius') {
                target = chart.graphs[0];
            }

            target[property] = this.value;
            chart.validateNow();
        });

        $('#chart_5').closest('.portlet').find('.fullscreen').click(function() {
            chart.invalidateSize();
        });
        
    }

    var initChartSample6 = function() {
        var chart = AmCharts.makeChart("chart_6", {
            "type": "pie",
            "theme": "light",

            "fontFamily": 'Open Sans',
            
            "color":    '#888',

            "dataProvider": [{
                "movie": "Lithuania",
                "litres": 501.9
            }, {
                "movie": "Czech Republic",
                "litres": 301.9
            }, {
                "movie": "Ireland",
                "litres": 201.1
            }, {
                "movie": "Germany",
                "litres": 165.8
            }, {
                "movie": "Australia",
                "litres": 139.9
            }, {
                "movie": "Austria",
                "litres": 128.3
            }, {
                "movie": "UK",
                "litres": 99
            }, {
                "movie": "Belgium",
                "litres": 60
            }, {
                "movie": "The Netherlands",
                "litres": 50
            }],
            "valueField": "litres",
            "titleField": "movie",
            "exportConfig": {
                menuItems: [{
                    icon: Metronic.getGlobalPluginsPath() + "amcharts/amcharts/images/export.png",
                    format: 'png'
                }]
            }
        });

        $('#chart_6').closest('.portlet').find('.fullscreen').click(function() {
            chart.invalidateSize();
        });
    }

    var initChartSample7 = function() {
        var chart = AmCharts.makeChart("chart_7", {
            "type": "pie",
            "theme": "light",

            "fontFamily": 'Open Sans',
            
            "color":    '#888',

            "dataProvider": [{
                "movie": "Lithuania",
                "value": 260
            }, {
                "movie": "Ireland",
                "value": 201
            }, {
                "movie": "Germany",
                "value": 65
            }, {
                "movie": "Australia",
                "value": 39
            }, {
                "movie": "UK",
                "value": 19
            }, {
                "movie": "Latvia",
                "value": 10
            }],
            "valueField": "value",
            "titleField": "movie",
            "outlineAlpha": 0.4,
            "depth3D": 15,
            "balloonText": "[[title]]<br><span style='font-size:14px'><b>[[value]]</b> ([[percents]]%)</span>",
            "angle": 30,
            "exportConfig": {
                menuItems: [{
                    icon: '/lib/3/images/export.png',
                    format: 'png'
                }]
            }
        });

        jQuery('.chart_7_chart_input').off().on('input change', function() {
            var property = jQuery(this).data('property');
            var target = chart;
            var value = Number(this.value);
            chart.startDuration = 0;

            if (property == 'innerRadius') {
                value += "%";
            }

            target[property] = value;
            chart.validateNow();
        });

        $('#chart_7').closest('.portlet').find('.fullscreen').click(function() {
            chart.invalidateSize();
        });
    }

    var initChartSample8 = function() {
        var chart = AmCharts.makeChart("chart_8", {
            "type": "radar",
            "theme": "light",

            "fontFamily": 'Open Sans',
            
            "color":    '#888',

            "dataProvider": [{
                "direction": "N",
                "value": 8
            }, {
                "direction": "NE",
                "value": 9
            }, {
                "direction": "E",
                "value": 4.5
            }, {
                "direction": "SE",
                "value": 3.5
            }, {
                "direction": "S",
                "value": 9.2
            }, {
                "direction": "SW",
                "value": 8.4
            }, {
                "direction": "W",
                "value": 11.1
            }, {
                "direction": "NW",
                "value": 10
            }],
            "valueAxes": [{
                "gridType": "circles",
                "minimum": 0,
                "autoGridCount": false,
                "axisAlpha": 0.2,
                "fillAlpha": 0.05,
                "fillColor": "#FFFFFF",
                "gridAlpha": 0.08,
                "guides": [{
                    "angle": 225,
                    "fillAlpha": 0.3,
                    "fillColor": "#0066CC",
                    "tickLength": 0,
                    "toAngle": 315,
                    "toValue": 14,
                    "value": 0,
                    "lineAlpha": 0,

                }, {
                    "angle": 45,
                    "fillAlpha": 0.3,
                    "fillColor": "#CC3333",
                    "tickLength": 0,
                    "toAngle": 135,
                    "toValue": 14,
                    "value": 0,
                    "lineAlpha": 0,
                }],
                "position": "left"
            }],
            "startDuration": 1,
            "graphs": [{
                "balloonText": "[[category]]: [[value]] m/s",
                "bullet": "round",
                "fillAlphas": 0.3,
                "valueField": "value"
            }],
            "categoryField": "direction"
        });

        $('#chart_8').closest('.portlet').find('.fullscreen').click(function() {
            chart.invalidateSize();
        });
    }

    var initChartSample9 = function() {
        var chart = AmCharts.makeChart("chart_9", {
            "type": "radar",
            "theme": "light",

            "fontFamily": 'Open Sans',
            
            "color":    '#888',

            "dataProvider": [{
                "movie": "Czech Republic",
                "litres": 156.9
            }, {
                "movie": "Ireland",
                "litres": 131.1
            }, {
                "movie": "Germany",
                "litres": 115.8
            }, {
                "movie": "Australia",
                "litres": 109.9
            }, {
                "movie": "Austria",
                "litres": 108.3
            }, {
                "movie": "UK",
                "litres": 99
            }],
            "valueAxes": [{
                "axisTitleOffset": 20,
                "minimum": 0,
                "axisAlpha": 0.15
            }],
            "startDuration": 2,
            "graphs": [{
                "balloonText": "[[value]] litres of beer per year",
                "bullet": "round",
                "valueField": "litres"
            }],
            "categoryField": "movie",
            "exportConfig": {
                "menuTop": "10px",
                "menuRight": "10px",
                "menuItems": [{
                    "icon": '/lib/3/images/export.png',
                    "format": 'png'
                }]
            }
        });

        $('#chart_9').closest('.portlet').find('.fullscreen').click(function() {
            chart.invalidateSize();
        });
    }

    var initChartSample10 = function() {
        /*
            although ammap has methos like getAreaCenterLatitude and getAreaCenterLongitude,
            they are not suitable in quite a lot of cases as the center of some countries
            is even outside the movie itself (like US, because of Alaska and Hawaii)
            That's why wehave the coordinates stored here
        */

        var latlong = {};
        latlong["AD"] = {
            "latitude": 42.5,
            "longitude": 1.5
        };
        latlong["AE"] = {
            "latitude": 24,
            "longitude": 54
        };
        latlong["AF"] = {
            "latitude": 33,
            "longitude": 65
        };
        latlong["AG"] = {
            "latitude": 17.05,
            "longitude": -61.8
        };
        latlong["AI"] = {
            "latitude": 18.25,
            "longitude": -63.1667
        };
        latlong["AL"] = {
            "latitude": 41,
            "longitude": 20
        };
        latlong["AM"] = {
            "latitude": 40,
            "longitude": 45
        };
        latlong["AN"] = {
            "latitude": 12.25,
            "longitude": -68.75
        };
        latlong["AO"] = {
            "latitude": -12.5,
            "longitude": 18.5
        };
        latlong["AP"] = {
            "latitude": 35,
            "longitude": 105
        };
        latlong["AQ"] = {
            "latitude": -90,
            "longitude": 0
        };
        latlong["AR"] = {
            "latitude": -34,
            "longitude": -64
        };
        latlong["AS"] = {
            "latitude": -14.3333,
            "longitude": -170
        };
        latlong["AT"] = {
            "latitude": 47.3333,
            "longitude": 13.3333
        };
        latlong["AU"] = {
            "latitude": -27,
            "longitude": 133
        };
        latlong["AW"] = {
            "latitude": 12.5,
            "longitude": -69.9667
        };
        latlong["AZ"] = {
            "latitude": 40.5,
            "longitude": 47.5
        };
        latlong["BA"] = {
            "latitude": 44,
            "longitude": 18
        };
        latlong["BB"] = {
            "latitude": 13.1667,
            "longitude": -59.5333
        };
        latlong["BD"] = {
            "latitude": 24,
            "longitude": 90
        };
        latlong["BE"] = {
            "latitude": 50.8333,
            "longitude": 4
        };
        latlong["BF"] = {
            "latitude": 13,
            "longitude": -2
        };
        latlong["BG"] = {
            "latitude": 43,
            "longitude": 25
        };
        latlong["BH"] = {
            "latitude": 26,
            "longitude": 50.55
        };
        latlong["BI"] = {
            "latitude": -3.5,
            "longitude": 30
        };
        latlong["BJ"] = {
            "latitude": 9.5,
            "longitude": 2.25
        };
        latlong["BM"] = {
            "latitude": 32.3333,
            "longitude": -64.75
        };
        latlong["BN"] = {
            "latitude": 4.5,
            "longitude": 114.6667
        };
        latlong["BO"] = {
            "latitude": -17,
            "longitude": -65
        };
        latlong["BR"] = {
            "latitude": -10,
            "longitude": -55
        };
        latlong["BS"] = {
            "latitude": 24.25,
            "longitude": -76
        };
        latlong["BT"] = {
            "latitude": 27.5,
            "longitude": 90.5
        };
        latlong["BV"] = {
            "latitude": -54.4333,
            "longitude": 3.4
        };
        latlong["BW"] = {
            "latitude": -22,
            "longitude": 24
        };
        latlong["BY"] = {
            "latitude": 53,
            "longitude": 28
        };
        latlong["BZ"] = {
            "latitude": 17.25,
            "longitude": -88.75
        };
        latlong["CA"] = {
            "latitude": 54,
            "longitude": -100
        };
        latlong["CC"] = {
            "latitude": -12.5,
            "longitude": 96.8333
        };
        latlong["CD"] = {
            "latitude": 0,
            "longitude": 25
        };
        latlong["CF"] = {
            "latitude": 7,
            "longitude": 21
        };
        latlong["CG"] = {
            "latitude": -1,
            "longitude": 15
        };
        latlong["CH"] = {
            "latitude": 47,
            "longitude": 8
        };
        latlong["CI"] = {
            "latitude": 8,
            "longitude": -5
        };
        latlong["CK"] = {
            "latitude": -21.2333,
            "longitude": -159.7667
        };
        latlong["CL"] = {
            "latitude": -30,
            "longitude": -71
        };
        latlong["CM"] = {
            "latitude": 6,
            "longitude": 12
        };
        latlong["CN"] = {
            "latitude": 35,
            "longitude": 105
        };
        latlong["CO"] = {
            "latitude": 4,
            "longitude": -72
        };
        latlong["CR"] = {
            "latitude": 10,
            "longitude": -84
        };
        latlong["CU"] = {
            "latitude": 21.5,
            "longitude": -80
        };
        latlong["CV"] = {
            "latitude": 16,
            "longitude": -24
        };
        latlong["CX"] = {
            "latitude": -10.5,
            "longitude": 105.6667
        };
        latlong["CY"] = {
            "latitude": 35,
            "longitude": 33
        };
        latlong["CZ"] = {
            "latitude": 49.75,
            "longitude": 15.5
        };
        latlong["DE"] = {
            "latitude": 51,
            "longitude": 9
        };
        latlong["DJ"] = {
            "latitude": 11.5,
            "longitude": 43
        };
        latlong["DK"] = {
            "latitude": 56,
            "longitude": 10
        };
        latlong["DM"] = {
            "latitude": 15.4167,
            "longitude": -61.3333
        };
        latlong["DO"] = {
            "latitude": 19,
            "longitude": -70.6667
        };
        latlong["DZ"] = {
            "latitude": 28,
            "longitude": 3
        };
        latlong["EC"] = {
            "latitude": -2,
            "longitude": -77.5
        };
        latlong["EE"] = {
            "latitude": 59,
            "longitude": 26
        };
        latlong["EG"] = {
            "latitude": 27,
            "longitude": 30
        };
        latlong["EH"] = {
            "latitude": 24.5,
            "longitude": -13
        };
        latlong["ER"] = {
            "latitude": 15,
            "longitude": 39
        };
        latlong["ES"] = {
            "latitude": 40,
            "longitude": -4
        };
        latlong["ET"] = {
            "latitude": 8,
            "longitude": 38
        };
        latlong["EU"] = {
            "latitude": 47,
            "longitude": 8
        };
        latlong["FI"] = {
            "latitude": 62,
            "longitude": 26
        };
        latlong["FJ"] = {
            "latitude": -18,
            "longitude": 175
        };
        latlong["FK"] = {
            "latitude": -51.75,
            "longitude": -59
        };
        latlong["FM"] = {
            "latitude": 6.9167,
            "longitude": 158.25
        };
        latlong["FO"] = {
            "latitude": 62,
            "longitude": -7
        };
        latlong["FR"] = {
            "latitude": 46,
            "longitude": 2
        };
        latlong["GA"] = {
            "latitude": -1,
            "longitude": 11.75
        };
        latlong["GB"] = {
            "latitude": 54,
            "longitude": -2
        };
        latlong["GD"] = {
            "latitude": 12.1167,
            "longitude": -61.6667
        };
        latlong["GE"] = {
            "latitude": 42,
            "longitude": 43.5
        };
        latlong["GF"] = {
            "latitude": 4,
            "longitude": -53
        };
        latlong["GH"] = {
            "latitude": 8,
            "longitude": -2
        };
        latlong["GI"] = {
            "latitude": 36.1833,
            "longitude": -5.3667
        };
        latlong["GL"] = {
            "latitude": 72,
            "longitude": -40
        };
        latlong["GM"] = {
            "latitude": 13.4667,
            "longitude": -16.5667
        };
        latlong["GN"] = {
            "latitude": 11,
            "longitude": -10
        };
        latlong["GP"] = {
            "latitude": 16.25,
            "longitude": -61.5833
        };
        latlong["GQ"] = {
            "latitude": 2,
            "longitude": 10
        };
        latlong["GR"] = {
            "latitude": 39,
            "longitude": 22
        };
        latlong["GS"] = {
            "latitude": -54.5,
            "longitude": -37
        };
        latlong["GT"] = {
            "latitude": 15.5,
            "longitude": -90.25
        };
        latlong["GU"] = {
            "latitude": 13.4667,
            "longitude": 144.7833
        };
        latlong["GW"] = {
            "latitude": 12,
            "longitude": -15
        };
        latlong["GY"] = {
            "latitude": 5,
            "longitude": -59
        };
        latlong["HK"] = {
            "latitude": 22.25,
            "longitude": 114.1667
        };
        latlong["HM"] = {
            "latitude": -53.1,
            "longitude": 72.5167
        };
        latlong["HN"] = {
            "latitude": 15,
            "longitude": -86.5
        };
        latlong["HR"] = {
            "latitude": 45.1667,
            "longitude": 15.5
        };
        latlong["HT"] = {
            "latitude": 19,
            "longitude": -72.4167
        };
        latlong["HU"] = {
            "latitude": 47,
            "longitude": 20
        };
        latlong["ID"] = {
            "latitude": -5,
            "longitude": 120
        };
        latlong["IE"] = {
            "latitude": 53,
            "longitude": -8
        };
        latlong["IL"] = {
            "latitude": 31.5,
            "longitude": 34.75
        };
        latlong["IN"] = {
            "latitude": 20,
            "longitude": 77
        };
        latlong["IO"] = {
            "latitude": -6,
            "longitude": 71.5
        };
        latlong["IQ"] = {
            "latitude": 33,
            "longitude": 44
        };
        latlong["IR"] = {
            "latitude": 32,
            "longitude": 53
        };
        latlong["IS"] = {
            "latitude": 65,
            "longitude": -18
        };
        latlong["IT"] = {
            "latitude": 42.8333,
            "longitude": 12.8333
        };
        latlong["JM"] = {
            "latitude": 18.25,
            "longitude": -77.5
        };
        latlong["JO"] = {
            "latitude": 31,
            "longitude": 36
        };
        latlong["JP"] = {
            "latitude": 36,
            "longitude": 138
        };
        latlong["KE"] = {
            "latitude": 1,
            "longitude": 38
        };
        latlong["KG"] = {
            "latitude": 41,
            "longitude": 75
        };
        latlong["KH"] = {
            "latitude": 13,
            "longitude": 105
        };
        latlong["KI"] = {
            "latitude": 1.4167,
            "longitude": 173
        };
        latlong["KM"] = {
            "latitude": -12.1667,
            "longitude": 44.25
        };
        latlong["KN"] = {
            "latitude": 17.3333,
            "longitude": -62.75
        };
        latlong["KP"] = {
            "latitude": 40,
            "longitude": 127
        };
        latlong["KR"] = {
            "latitude": 37,
            "longitude": 127.5
        };
        latlong["KW"] = {
            "latitude": 29.3375,
            "longitude": 47.6581
        };
        latlong["KY"] = {
            "latitude": 19.5,
            "longitude": -80.5
        };
        latlong["KZ"] = {
            "latitude": 48,
            "longitude": 68
        };
        latlong["LA"] = {
            "latitude": 18,
            "longitude": 105
        };
        latlong["LB"] = {
            "latitude": 33.8333,
            "longitude": 35.8333
        };
        latlong["LC"] = {
            "latitude": 13.8833,
            "longitude": -61.1333
        };
        latlong["LI"] = {
            "latitude": 47.1667,
            "longitude": 9.5333
        };
        latlong["LK"] = {
            "latitude": 7,
            "longitude": 81
        };
        latlong["LR"] = {
            "latitude": 6.5,
            "longitude": -9.5
        };
        latlong["LS"] = {
            "latitude": -29.5,
            "longitude": 28.5
        };
        latlong["LT"] = {
            "latitude": 55,
            "longitude": 24
        };
        latlong["LU"] = {
            "latitude": 49.75,
            "longitude": 6
        };
        latlong["LV"] = {
            "latitude": 57,
            "longitude": 25
        };
        latlong["LY"] = {
            "latitude": 25,
            "longitude": 17
        };
        latlong["MA"] = {
            "latitude": 32,
            "longitude": -5
        };
        latlong["MC"] = {
            "latitude": 43.7333,
            "longitude": 7.4
        };
        latlong["MD"] = {
            "latitude": 47,
            "longitude": 29
        };
        latlong["ME"] = {
            "latitude": 42.5,
            "longitude": 19.4
        };
        latlong["MG"] = {
            "latitude": -20,
            "longitude": 47
        };
        latlong["MH"] = {
            "latitude": 9,
            "longitude": 168
        };
        latlong["MK"] = {
            "latitude": 41.8333,
            "longitude": 22
        };
        latlong["ML"] = {
            "latitude": 17,
            "longitude": -4
        };
        latlong["MM"] = {
            "latitude": 22,
            "longitude": 98
        };
        latlong["MN"] = {
            "latitude": 46,
            "longitude": 105
        };
        latlong["MO"] = {
            "latitude": 22.1667,
            "longitude": 113.55
        };
        latlong["MP"] = {
            "latitude": 15.2,
            "longitude": 145.75
        };
        latlong["MQ"] = {
            "latitude": 14.6667,
            "longitude": -61
        };
        latlong["MR"] = {
            "latitude": 20,
            "longitude": -12
        };
        latlong["MS"] = {
            "latitude": 16.75,
            "longitude": -62.2
        };
        latlong["MT"] = {
            "latitude": 35.8333,
            "longitude": 14.5833
        };
        latlong["MU"] = {
            "latitude": -20.2833,
            "longitude": 57.55
        };
        latlong["MV"] = {
            "latitude": 3.25,
            "longitude": 73
        };
        latlong["MW"] = {
            "latitude": -13.5,
            "longitude": 34
        };
        latlong["MX"] = {
            "latitude": 23,
            "longitude": -102
        };
        latlong["MY"] = {
            "latitude": 2.5,
            "longitude": 112.5
        };
        latlong["MZ"] = {
            "latitude": -18.25,
            "longitude": 35
        };
        latlong["NA"] = {
            "latitude": -22,
            "longitude": 17
        };
        latlong["NC"] = {
            "latitude": -21.5,
            "longitude": 165.5
        };
        latlong["NE"] = {
            "latitude": 16,
            "longitude": 8
        };
        latlong["NF"] = {
            "latitude": -29.0333,
            "longitude": 167.95
        };
        latlong["NG"] = {
            "latitude": 10,
            "longitude": 8
        };
        latlong["NI"] = {
            "latitude": 13,
            "longitude": -85
        };
        latlong["NL"] = {
            "latitude": 52.5,
            "longitude": 5.75
        };
        latlong["NO"] = {
            "latitude": 62,
            "longitude": 10
        };
        latlong["NP"] = {
            "latitude": 28,
            "longitude": 84
        };
        latlong["NR"] = {
            "latitude": -0.5333,
            "longitude": 166.9167
        };
        latlong["NU"] = {
            "latitude": -19.0333,
            "longitude": -169.8667
        };
        latlong["NZ"] = {
            "latitude": -41,
            "longitude": 174
        };
        latlong["OM"] = {
            "latitude": 21,
            "longitude": 57
        };
        latlong["PA"] = {
            "latitude": 9,
            "longitude": -80
        };
        latlong["PE"] = {
            "latitude": -10,
            "longitude": -76
        };
        latlong["PF"] = {
            "latitude": -15,
            "longitude": -140
        };
        latlong["PG"] = {
            "latitude": -6,
            "longitude": 147
        };
        latlong["PH"] = {
            "latitude": 13,
            "longitude": 122
        };
        latlong["PK"] = {
            "latitude": 30,
            "longitude": 70
        };
        latlong["PL"] = {
            "latitude": 52,
            "longitude": 20
        };
        latlong["PM"] = {
            "latitude": 46.8333,
            "longitude": -56.3333
        };
        latlong["PR"] = {
            "latitude": 18.25,
            "longitude": -66.5
        };
        latlong["PS"] = {
            "latitude": 32,
            "longitude": 35.25
        };
        latlong["PT"] = {
            "latitude": 39.5,
            "longitude": -8
        };
        latlong["PW"] = {
            "latitude": 7.5,
            "longitude": 134.5
        };
        latlong["PY"] = {
            "latitude": -23,
            "longitude": -58
        };
        latlong["QA"] = {
            "latitude": 25.5,
            "longitude": 51.25
        };
        latlong["RE"] = {
            "latitude": -21.1,
            "longitude": 55.6
        };
        latlong["RO"] = {
            "latitude": 46,
            "longitude": 25
        };
        latlong["RS"] = {
            "latitude": 44,
            "longitude": 21
        };
        latlong["RU"] = {
            "latitude": 60,
            "longitude": 100
        };
        latlong["RW"] = {
            "latitude": -2,
            "longitude": 30
        };
        latlong["SA"] = {
            "latitude": 25,
            "longitude": 45
        };
        latlong["SB"] = {
            "latitude": -8,
            "longitude": 159
        };
        latlong["SC"] = {
            "latitude": -4.5833,
            "longitude": 55.6667
        };
        latlong["SD"] = {
            "latitude": 15,
            "longitude": 30
        };
        latlong["SE"] = {
            "latitude": 62,
            "longitude": 15
        };
        latlong["SG"] = {
            "latitude": 1.3667,
            "longitude": 103.8
        };
        latlong["SH"] = {
            "latitude": -15.9333,
            "longitude": -5.7
        };
        latlong["SI"] = {
            "latitude": 46,
            "longitude": 15
        };
        latlong["SJ"] = {
            "latitude": 78,
            "longitude": 20
        };
        latlong["SK"] = {
            "latitude": 48.6667,
            "longitude": 19.5
        };
        latlong["SL"] = {
            "latitude": 8.5,
            "longitude": -11.5
        };
        latlong["SM"] = {
            "latitude": 43.7667,
            "longitude": 12.4167
        };
        latlong["SN"] = {
            "latitude": 14,
            "longitude": -14
        };
        latlong["SO"] = {
            "latitude": 10,
            "longitude": 49
        };
        latlong["SR"] = {
            "latitude": 4,
            "longitude": -56
        };
        latlong["ST"] = {
            "latitude": 1,
            "longitude": 7
        };
        latlong["SV"] = {
            "latitude": 13.8333,
            "longitude": -88.9167
        };
        latlong["SY"] = {
            "latitude": 35,
            "longitude": 38
        };
        latlong["SZ"] = {
            "latitude": -26.5,
            "longitude": 31.5
        };
        latlong["TC"] = {
            "latitude": 21.75,
            "longitude": -71.5833
        };
        latlong["TD"] = {
            "latitude": 15,
            "longitude": 19
        };
        latlong["TF"] = {
            "latitude": -43,
            "longitude": 67
        };
        latlong["TG"] = {
            "latitude": 8,
            "longitude": 1.1667
        };
        latlong["TH"] = {
            "latitude": 15,
            "longitude": 100
        };
        latlong["TJ"] = {
            "latitude": 39,
            "longitude": 71
        };
        latlong["TK"] = {
            "latitude": -9,
            "longitude": -172
        };
        latlong["TM"] = {
            "latitude": 40,
            "longitude": 60
        };
        latlong["TN"] = {
            "latitude": 34,
            "longitude": 9
        };
        latlong["TO"] = {
            "latitude": -20,
            "longitude": -175
        };
        latlong["TR"] = {
            "latitude": 39,
            "longitude": 35
        };
        latlong["TT"] = {
            "latitude": 11,
            "longitude": -61
        };
        latlong["TV"] = {
            "latitude": -8,
            "longitude": 178
        };
        latlong["TW"] = {
            "latitude": 23.5,
            "longitude": 121
        };
        latlong["TZ"] = {
            "latitude": -6,
            "longitude": 35
        };
        latlong["UA"] = {
            "latitude": 49,
            "longitude": 32
        };
        latlong["UG"] = {
            "latitude": 1,
            "longitude": 32
        };
        latlong["UM"] = {
            "latitude": 19.2833,
            "longitude": 166.6
        };
        latlong["US"] = {
            "latitude": 38,
            "longitude": -97
        };
        latlong["UY"] = {
            "latitude": -33,
            "longitude": -56
        };
        latlong["UZ"] = {
            "latitude": 41,
            "longitude": 64
        };
        latlong["VA"] = {
            "latitude": 41.9,
            "longitude": 12.45
        };
        latlong["VC"] = {
            "latitude": 13.25,
            "longitude": -61.2
        };
        latlong["VE"] = {
            "latitude": 8,
            "longitude": -66
        };
        latlong["VG"] = {
            "latitude": 18.5,
            "longitude": -64.5
        };
        latlong["VI"] = {
            "latitude": 18.3333,
            "longitude": -64.8333
        };
        latlong["VN"] = {
            "latitude": 16,
            "longitude": 106
        };
        latlong["VU"] = {
            "latitude": -16,
            "longitude": 167
        };
        latlong["WF"] = {
            "latitude": -13.3,
            "longitude": -176.2
        };
        latlong["WS"] = {
            "latitude": -13.5833,
            "longitude": -172.3333
        };
        latlong["YE"] = {
            "latitude": 15,
            "longitude": 48
        };
        latlong["YT"] = {
            "latitude": -12.8333,
            "longitude": 45.1667
        };
        latlong["ZA"] = {
            "latitude": -29,
            "longitude": 24
        };
        latlong["ZM"] = {
            "latitude": -15,
            "longitude": 30
        };
        latlong["ZW"] = {
            "latitude": -20,
            "longitude": 30
        };

        var mapData = [{
            "code": "AF",
            "name": "Afghanistan",
            "value": 32358260,
            "color": "#eea638"
        }, {
            "code": "AL",
            "name": "Albania",
            "value": 3215988,
            "color": "#d8854f"
        }, {
            "code": "DZ",
            "name": "Algeria",
            "value": 35980193,
            "color": "#de4c4f"
        }, {
            "code": "AO",
            "name": "Angola",
            "value": 19618432,
            "color": "#de4c4f"
        }, {
            "code": "AR",
            "name": "Argentina",
            "value": 40764561,
            "color": "#86a965"
        }, {
            "code": "AM",
            "name": "Armenia",
            "value": 3100236,
            "color": "#d8854f"
        }, {
            "code": "AU",
            "name": "Australia",
            "value": 22605732,
            "color": "#8aabb0"
        }, {
            "code": "AT",
            "name": "Austria",
            "value": 8413429,
            "color": "#d8854f"
        }, {
            "code": "AZ",
            "name": "Azerbaijan",
            "value": 9306023,
            "color": "#d8854f"
        }, {
            "code": "BH",
            "name": "Bahrain",
            "value": 1323535,
            "color": "#eea638"
        }, {
            "code": "BD",
            "name": "Bangladesh",
            "value": 150493658,
            "color": "#eea638"
        }, {
            "code": "BY",
            "name": "Belarus",
            "value": 9559441,
            "color": "#d8854f"
        }, {
            "code": "BE",
            "name": "Belgium",
            "value": 10754056,
            "color": "#d8854f"
        }, {
            "code": "BJ",
            "name": "Benin",
            "value": 9099922,
            "color": "#de4c4f"
        }, {
            "code": "BT",
            "name": "Bhutan",
            "value": 738267,
            "color": "#eea638"
        }, {
            "code": "BO",
            "name": "Bolivia",
            "value": 10088108,
            "color": "#86a965"
        }, {
            "code": "BA",
            "name": "Bosnia and Herzegovina",
            "value": 3752228,
            "color": "#d8854f"
        }, {
            "code": "BW",
            "name": "Botswana",
            "value": 2030738,
            "color": "#de4c4f"
        }, {
            "code": "BR",
            "name": "Brazil",
            "value": 196655014,
            "color": "#86a965"
        }, {
            "code": "BN",
            "name": "Brunei",
            "value": 405938,
            "color": "#eea638"
        }, {
            "code": "BG",
            "name": "Bulgaria",
            "value": 7446135,
            "color": "#d8854f"
        }, {
            "code": "BF",
            "name": "Burkina Faso",
            "value": 16967845,
            "color": "#de4c4f"
        }, {
            "code": "BI",
            "name": "Burundi",
            "value": 8575172,
            "color": "#de4c4f"
        }, {
            "code": "KH",
            "name": "Cambodia",
            "value": 14305183,
            "color": "#eea638"
        }, {
            "code": "CM",
            "name": "Cameroon",
            "value": 20030362,
            "color": "#de4c4f"
        }, {
            "code": "CA",
            "name": "Canada",
            "value": 34349561,
            "color": "#a7a737"
        }, {
            "code": "CV",
            "name": "Cape Verde",
            "value": 500585,
            "color": "#de4c4f"
        }, {
            "code": "CF",
            "name": "Central African Rep.",
            "value": 4486837,
            "color": "#de4c4f"
        }, {
            "code": "TD",
            "name": "Chad",
            "value": 11525496,
            "color": "#de4c4f"
        }, {
            "code": "CL",
            "name": "Chile",
            "value": 17269525,
            "color": "#86a965"
        }, {
            "code": "CN",
            "name": "China",
            "value": 1347565324,
            "color": "#eea638"
        }, {
            "code": "CO",
            "name": "Colombia",
            "value": 46927125,
            "color": "#86a965"
        }, {
            "code": "KM",
            "name": "Comoros",
            "value": 753943,
            "color": "#de4c4f"
        }, {
            "code": "CD",
            "name": "Congo, Dem. Rep.",
            "value": 67757577,
            "color": "#de4c4f"
        }, {
            "code": "CG",
            "name": "Congo, Rep.",
            "value": 4139748,
            "color": "#de4c4f"
        }, {
            "code": "CR",
            "name": "Costa Rica",
            "value": 4726575,
            "color": "#a7a737"
        }, {
            "code": "CI",
            "name": "Cote d'Ivoire",
            "value": 20152894,
            "color": "#de4c4f"
        }, {
            "code": "HR",
            "name": "Croatia",
            "value": 4395560,
            "color": "#d8854f"
        }, {
            "code": "CU",
            "name": "Cuba",
            "value": 11253665,
            "color": "#a7a737"
        }, {
            "code": "CY",
            "name": "Cyprus",
            "value": 1116564,
            "color": "#d8854f"
        }, {
            "code": "CZ",
            "name": "Czech Rep.",
            "value": 10534293,
            "color": "#d8854f"
        }, {
            "code": "DK",
            "name": "Denmark",
            "value": 5572594,
            "color": "#d8854f"
        }, {
            "code": "DJ",
            "name": "Djibouti",
            "value": 905564,
            "color": "#de4c4f"
        }, {
            "code": "DO",
            "name": "Dominican Rep.",
            "value": 10056181,
            "color": "#a7a737"
        }, {
            "code": "EC",
            "name": "Ecuador",
            "value": 14666055,
            "color": "#86a965"
        }, {
            "code": "EG",
            "name": "Egypt",
            "value": 82536770,
            "color": "#de4c4f"
        }, {
            "code": "SV",
            "name": "El Salvador",
            "value": 6227491,
            "color": "#a7a737"
        }, {
            "code": "GQ",
            "name": "Equatorial Guinea",
            "value": 720213,
            "color": "#de4c4f"
        }, {
            "code": "ER",
            "name": "Eritrea",
            "value": 5415280,
            "color": "#de4c4f"
        }, {
            "code": "EE",
            "name": "Estonia",
            "value": 1340537,
            "color": "#d8854f"
        }, {
            "code": "ET",
            "name": "Ethiopia",
            "value": 84734262,
            "color": "#de4c4f"
        }, {
            "code": "FJ",
            "name": "Fiji",
            "value": 868406,
            "color": "#8aabb0"
        }, {
            "code": "FI",
            "name": "Finland",
            "value": 5384770,
            "color": "#d8854f"
        }, {
            "code": "FR",
            "name": "France",
            "value": 63125894,
            "color": "#d8854f"
        }, {
            "code": "GA",
            "name": "Gabon",
            "value": 1534262,
            "color": "#de4c4f"
        }, {
            "code": "GM",
            "name": "Gambia",
            "value": 1776103,
            "color": "#de4c4f"
        }, {
            "code": "GE",
            "name": "Georgia",
            "value": 4329026,
            "color": "#d8854f"
        }, {
            "code": "DE",
            "name": "Germany",
            "value": 82162512,
            "color": "#d8854f"
        }, {
            "code": "GH",
            "name": "Ghana",
            "value": 24965816,
            "color": "#de4c4f"
        }, {
            "code": "GR",
            "name": "Greece",
            "value": 11390031,
            "color": "#d8854f"
        }, {
            "code": "GT",
            "name": "Guatemala",
            "value": 14757316,
            "color": "#a7a737"
        }, {
            "code": "GN",
            "name": "Guinea",
            "value": 10221808,
            "color": "#de4c4f"
        }, {
            "code": "GW",
            "name": "Guinea-Bissau",
            "value": 1547061,
            "color": "#de4c4f"
        }, {
            "code": "GY",
            "name": "Guyana",
            "value": 756040,
            "color": "#86a965"
        }, {
            "code": "HT",
            "name": "Haiti",
            "value": 10123787,
            "color": "#a7a737"
        }, {
            "code": "HN",
            "name": "Honduras",
            "value": 7754687,
            "color": "#a7a737"
        }, {
            "code": "HK",
            "name": "Hong Kong, China",
            "value": 7122187,
            "color": "#eea638"
        }, {
            "code": "HU",
            "name": "Hungary",
            "value": 9966116,
            "color": "#d8854f"
        }, {
            "code": "IS",
            "name": "Iceland",
            "value": 324366,
            "color": "#d8854f"
        }, {
            "code": "IN",
            "name": "India",
            "value": 1241491960,
            "color": "#eea638"
        }, {
            "code": "ID",
            "name": "Indonesia",
            "value": 242325638,
            "color": "#eea638"
        }, {
            "code": "IR",
            "name": "Iran",
            "value": 74798599,
            "color": "#eea638"
        }, {
            "code": "IQ",
            "name": "Iraq",
            "value": 32664942,
            "color": "#eea638"
        }, {
            "code": "IE",
            "name": "Ireland",
            "value": 4525802,
            "color": "#d8854f"
        }, {
            "code": "IL",
            "name": "Israel",
            "value": 7562194,
            "color": "#eea638"
        }, {
            "code": "IT",
            "name": "Italy",
            "value": 60788694,
            "color": "#d8854f"
        }, {
            "code": "JM",
            "name": "Jamaica",
            "value": 2751273,
            "color": "#a7a737"
        }, {
            "code": "JP",
            "name": "Japan",
            "value": 126497241,
            "color": "#eea638"
        }, {
            "code": "JO",
            "name": "Jordan",
            "value": 6330169,
            "color": "#eea638"
        }, {
            "code": "KZ",
            "name": "Kazakhstan",
            "value": 16206750,
            "color": "#eea638"
        }, {
            "code": "KE",
            "name": "Kenya",
            "value": 41609728,
            "color": "#de4c4f"
        }, {
            "code": "KP",
            "name": "Korea, Dem. Rep.",
            "value": 24451285,
            "color": "#eea638"
        }, {
            "code": "KR",
            "name": "Korea, Rep.",
            "value": 48391343,
            "color": "#eea638"
        }, {
            "code": "KW",
            "name": "Kuwait",
            "value": 2818042,
            "color": "#eea638"
        }, {
            "code": "KG",
            "name": "Kyrgyzstan",
            "value": 5392580,
            "color": "#eea638"
        }, {
            "code": "LA",
            "name": "Laos",
            "value": 6288037,
            "color": "#eea638"
        }, {
            "code": "LV",
            "name": "Latvia",
            "value": 2243142,
            "color": "#d8854f"
        }, {
            "code": "LB",
            "name": "Lebanon",
            "value": 4259405,
            "color": "#eea638"
        }, {
            "code": "LS",
            "name": "Lesotho",
            "value": 2193843,
            "color": "#de4c4f"
        }, {
            "code": "LR",
            "name": "Liberia",
            "value": 4128572,
            "color": "#de4c4f"
        }, {
            "code": "LY",
            "name": "Libya",
            "value": 6422772,
            "color": "#de4c4f"
        }, {
            "code": "LT",
            "name": "Lithuania",
            "value": 3307481,
            "color": "#d8854f"
        }, {
            "code": "LU",
            "name": "Luxembourg",
            "value": 515941,
            "color": "#d8854f"
        }, {
            "code": "MK",
            "name": "Macedonia, FYR",
            "value": 2063893,
            "color": "#d8854f"
        }, {
            "code": "MG",
            "name": "Madagascar",
            "value": 21315135,
            "color": "#de4c4f"
        }, {
            "code": "MW",
            "name": "Malawi",
            "value": 15380888,
            "color": "#de4c4f"
        }, {
            "code": "MY",
            "name": "Malaysia",
            "value": 28859154,
            "color": "#eea638"
        }, {
            "code": "ML",
            "name": "Mali",
            "value": 15839538,
            "color": "#de4c4f"
        }, {
            "code": "MR",
            "name": "Mauritania",
            "value": 3541540,
            "color": "#de4c4f"
        }, {
            "code": "MU",
            "name": "Mauritius",
            "value": 1306593,
            "color": "#de4c4f"
        }, {
            "code": "MX",
            "name": "Mexico",
            "value": 114793341,
            "color": "#a7a737"
        }, {
            "code": "MD",
            "name": "Moldova",
            "value": 3544864,
            "color": "#d8854f"
        }, {
            "code": "MN",
            "name": "Mongolia",
            "value": 2800114,
            "color": "#eea638"
        }, {
            "code": "ME",
            "name": "Montenegro",
            "value": 632261,
            "color": "#d8854f"
        }, {
            "code": "MA",
            "name": "Morocco",
            "value": 32272974,
            "color": "#de4c4f"
        }, {
            "code": "MZ",
            "name": "Mozambique",
            "value": 23929708,
            "color": "#de4c4f"
        }, {
            "code": "MM",
            "name": "Myanmar",
            "value": 48336763,
            "color": "#eea638"
        }, {
            "code": "NA",
            "name": "Namibia",
            "value": 2324004,
            "color": "#de4c4f"
        }, {
            "code": "NP",
            "name": "Nepal",
            "value": 30485798,
            "color": "#eea638"
        }, {
            "code": "NL",
            "name": "Netherlands",
            "value": 16664746,
            "color": "#d8854f"
        }, {
            "code": "NZ",
            "name": "New Zealand",
            "value": 4414509,
            "color": "#8aabb0"
        }, {
            "code": "NI",
            "name": "Nicaragua",
            "value": 5869859,
            "color": "#a7a737"
        }, {
            "code": "NE",
            "name": "Niger",
            "value": 16068994,
            "color": "#de4c4f"
        }, {
            "code": "NG",
            "name": "Nigeria",
            "value": 162470737,
            "color": "#de4c4f"
        }, {
            "code": "NO",
            "name": "Norway",
            "value": 4924848,
            "color": "#d8854f"
        }, {
            "code": "OM",
            "name": "Oman",
            "value": 2846145,
            "color": "#eea638"
        }, {
            "code": "PK",
            "name": "Pakistan",
            "value": 176745364,
            "color": "#eea638"
        }, {
            "code": "PA",
            "name": "Panama",
            "value": 3571185,
            "color": "#a7a737"
        }, {
            "code": "PG",
            "name": "Papua New Guinea",
            "value": 7013829,
            "color": "#8aabb0"
        }, {
            "code": "PY",
            "name": "Paraguay",
            "value": 6568290,
            "color": "#86a965"
        }, {
            "code": "PE",
            "name": "Peru",
            "value": 29399817,
            "color": "#86a965"
        }, {
            "code": "PH",
            "name": "Philippines",
            "value": 94852030,
            "color": "#eea638"
        }, {
            "code": "PL",
            "name": "Poland",
            "value": 38298949,
            "color": "#d8854f"
        }, {
            "code": "PT",
            "name": "Portugal",
            "value": 10689663,
            "color": "#d8854f"
        }, {
            "code": "PR",
            "name": "Puerto Rico",
            "value": 3745526,
            "color": "#a7a737"
        }, {
            "code": "QA",
            "name": "Qatar",
            "value": 1870041,
            "color": "#eea638"
        }, {
            "code": "RO",
            "name": "Romania",
            "value": 21436495,
            "color": "#d8854f"
        }, {
            "code": "RU",
            "name": "Russia",
            "value": 142835555,
            "color": "#d8854f"
        }, {
            "code": "RW",
            "name": "Rwanda",
            "value": 10942950,
            "color": "#de4c4f"
        }, {
            "code": "SA",
            "name": "Saudi Arabia",
            "value": 28082541,
            "color": "#eea638"
        }, {
            "code": "SN",
            "name": "Senegal",
            "value": 12767556,
            "color": "#de4c4f"
        }, {
            "code": "RS",
            "name": "Serbia",
            "value": 9853969,
            "color": "#d8854f"
        }, {
            "code": "SL",
            "name": "Sierra Leone",
            "value": 5997486,
            "color": "#de4c4f"
        }, {
            "code": "SG",
            "name": "Singapore",
            "value": 5187933,
            "color": "#eea638"
        }, {
            "code": "SK",
            "name": "Slovak Republic",
            "value": 5471502,
            "color": "#d8854f"
        }, {
            "code": "SI",
            "name": "Slovenia",
            "value": 2035012,
            "color": "#d8854f"
        }, {
            "code": "SB",
            "name": "Solomon Islands",
            "value": 552267,
            "color": "#8aabb0"
        }, {
            "code": "SO",
            "name": "Somalia",
            "value": 9556873,
            "color": "#de4c4f"
        }, {
            "code": "ZA",
            "name": "South Africa",
            "value": 50459978,
            "color": "#de4c4f"
        }, {
            "code": "ES",
            "name": "Spain",
            "value": 46454895,
            "color": "#d8854f"
        }, {
            "code": "LK",
            "name": "Sri Lanka",
            "value": 21045394,
            "color": "#eea638"
        }, {
            "code": "SD",
            "name": "Sudan",
            "value": 34735288,
            "color": "#de4c4f"
        }, {
            "code": "SR",
            "name": "Suriname",
            "value": 529419,
            "color": "#86a965"
        }, {
            "code": "SZ",
            "name": "Swaziland",
            "value": 1203330,
            "color": "#de4c4f"
        }, {
            "code": "SE",
            "name": "Sweden",
            "value": 9440747,
            "color": "#d8854f"
        }, {
            "code": "CH",
            "name": "Switzerland",
            "value": 7701690,
            "color": "#d8854f"
        }, {
            "code": "SY",
            "name": "Syria",
            "value": 20766037,
            "color": "#eea638"
        }, {
            "code": "TW",
            "name": "Taiwan",
            "value": 23072000,
            "color": "#eea638"
        }, {
            "code": "TJ",
            "name": "Tajikistan",
            "value": 6976958,
            "color": "#eea638"
        }, {
            "code": "TZ",
            "name": "Tanzania",
            "value": 46218486,
            "color": "#de4c4f"
        }, {
            "code": "TH",
            "name": "Thailand",
            "value": 69518555,
            "color": "#eea638"
        }, {
            "code": "TG",
            "name": "Togo",
            "value": 6154813,
            "color": "#de4c4f"
        }, {
            "code": "TT",
            "name": "Trinidad and Tobago",
            "value": 1346350,
            "color": "#a7a737"
        }, {
            "code": "TN",
            "name": "Tunisia",
            "value": 10594057,
            "color": "#de4c4f"
        }, {
            "code": "TR",
            "name": "Turkey",
            "value": 73639596,
            "color": "#d8854f"
        }, {
            "code": "TM",
            "name": "Turkmenistan",
            "value": 5105301,
            "color": "#eea638"
        }, {
            "code": "UG",
            "name": "Uganda",
            "value": 34509205,
            "color": "#de4c4f"
        }, {
            "code": "UA",
            "name": "Ukraine",
            "value": 45190180,
            "color": "#d8854f"
        }, {
            "code": "AE",
            "name": "United Arab Emirates",
            "value": 7890924,
            "color": "#eea638"
        }, {
            "code": "GB",
            "name": "United Kingdom",
            "value": 62417431,
            "color": "#d8854f"
        }, {
            "code": "US",
            "name": "United States",
            "value": 313085380,
            "color": "#a7a737"
        }, {
            "code": "UY",
            "name": "Uruguay",
            "value": 3380008,
            "color": "#86a965"
        }, {
            "code": "UZ",
            "name": "Uzbekistan",
            "value": 27760267,
            "color": "#eea638"
        }, {
            "code": "VE",
            "name": "Venezuela",
            "value": 29436891,
            "color": "#86a965"
        }, {
            "code": "PS",
            "name": "West Bank and Gaza",
            "value": 4152369,
            "color": "#eea638"
        }, {
            "code": "VN",
            "name": "Vietnam",
            "value": 88791996,
            "color": "#eea638"
        }, {
            "code": "YE",
            "name": "Yemen, Rep.",
            "value": 24799880,
            "color": "#eea638"
        }, {
            "code": "ZM",
            "name": "Zambia",
            "value": 13474959,
            "color": "#de4c4f"
        }, {
            "code": "ZW",
            "name": "Zimbabwe",
            "value": 12754378,
            "color": "#de4c4f"
        }];


        var map;
        var minBulletSize = 3;
        var maxBulletSize = 70;
        var min = Infinity;
        var max = -Infinity;


        // get min and max values
        for (var i = 0; i < mapData.length; i++) {
            var value = mapData[i].value;
            if (value < min) {
                min = value;
            }
            if (value > max) {
                max = value;
            }
        }

        // build map
        AmCharts.ready(function() {
            AmCharts.theme = AmCharts.themes.dark;
            map = new AmCharts.AmMap();
            map.pathToImages = Metronic.getGlobalPluginsPath() + "amcharts/ammap/images/",

            map.fontFamily = 'Open Sans';
            map.fontSize = '13';
            map.color = '#888';
            
            map.addTitle("Population of the World in 2011", 14);
            map.addTitle("source: Gapminder", 11);
            map.areasSettings = {
                unlistedAreasColor: "#000000",
                unlistedAreasAlpha: 0.1
            };
            map.imagesSettings.balloonText = "<span style='font-size:14px;'><b>[[title]]</b>: [[value]]</span>";

            var dataProvider = {
                mapVar: AmCharts.maps.worldLow,
                images: []
            }

            // create circle for each movie
            for (var i = 0; i < mapData.length; i++) {
                var dataItem = mapData[i];
                var value = dataItem.value;
                // calculate size of a bubble
                var size = (value - min) / (max - min) * (maxBulletSize - minBulletSize) + minBulletSize;
                if (size < minBulletSize) {
                    size = minBulletSize;
                }
                var id = dataItem.code;

                dataProvider.images.push({
                    type: "circle",
                    width: size,
                    height: size,
                    color: dataItem.color,
                    longitude: latlong[id].longitude,
                    latitude: latlong[id].latitude,
                    title: dataItem.name,
                    value: value
                });
            }

            map.dataProvider = dataProvider;

            map.write("chart_10");
        });

        $('#chart_10').closest('.portlet').find('.fullscreen').click(function() {
            map.invalidateSize();
        });
    }

    var initChartSample11 = function() {
        // svg path for target icon
        var targetSVG = "M9,0C4.029,0,0,4.029,0,9s4.029,9,9,9s9-4.029,9-9S13.971,0,9,0z M9,15.93 c-3.83,0-6.93-3.1-6.93-6.93S5.17,2.07,9,2.07s6.93,3.1,6.93,6.93S12.83,15.93,9,15.93 M12.5,9c0,1.933-1.567,3.5-3.5,3.5S5.5,10.933,5.5,9S7.067,5.5,9,5.5 S12.5,7.067,12.5,9z";
        // svg path for plane icon
        var planeSVG = "M19.671,8.11l-2.777,2.777l-3.837-0.861c0.362-0.505,0.916-1.683,0.464-2.135c-0.518-0.517-1.979,0.278-2.305,0.604l-0.913,0.913L7.614,8.804l-2.021,2.021l2.232,1.061l-0.082,0.082l1.701,1.701l0.688-0.687l3.164,1.504L9.571,18.21H6.413l-1.137,1.138l3.6,0.948l1.83,1.83l0.947,3.598l1.137-1.137V21.43l3.725-3.725l1.504,3.164l-0.687,0.687l1.702,1.701l0.081-0.081l1.062,2.231l2.02-2.02l-0.604-2.689l0.912-0.912c0.326-0.326,1.121-1.789,0.604-2.306c-0.452-0.452-1.63,0.101-2.135,0.464l-0.861-3.838l2.777-2.777c0.947-0.947,3.599-4.862,2.62-5.839C24.533,4.512,20.618,7.163,19.671,8.11z";

        var map = AmCharts.makeChart("chart_11", {
            type: "map",
            "theme": "light",
            pathToImages: Metronic.getGlobalPluginsPath() + "amcharts/ammap/images/",

            "fontFamily": 'Open Sans',
            
            "color":    '#888',
            
            dataProvider: {
                map: "worldLow",
                linkToObject: "london",
                images: [{
                        id: "london",
                        color: "#000000",
                        svgPath: targetSVG,
                        title: "London",
                        latitude: 51.5002,
                        longitude: -0.1262,
                        scale: 1.5,
                        zoomLevel: 2.74,
                        zoomLongitude: -20.1341,
                        zoomLatitude: 49.1712,

                        lines: [{
                            latitudes: [51.5002, 50.4422],
                            longitudes: [-0.1262, 30.5367]
                        }, {
                            latitudes: [51.5002, 46.9480],
                            longitudes: [-0.1262, 7.4481]
                        }, {
                            latitudes: [51.5002, 59.3328],
                            longitudes: [-0.1262, 18.0645]
                        }, {
                            latitudes: [51.5002, 40.4167],
                            longitudes: [-0.1262, -3.7033]
                        }, {
                            latitudes: [51.5002, 46.0514],
                            longitudes: [-0.1262, 14.5060]
                        }, {
                            latitudes: [51.5002, 48.2116],
                            longitudes: [-0.1262, 17.1547]
                        }, {
                            latitudes: [51.5002, 44.8048],
                            longitudes: [-0.1262, 20.4781]
                        }, {
                            latitudes: [51.5002, 55.7558],
                            longitudes: [-0.1262, 37.6176]
                        }, {
                            latitudes: [51.5002, 38.7072],
                            longitudes: [-0.1262, -9.1355]
                        }, {
                            latitudes: [51.5002, 54.6896],
                            longitudes: [-0.1262, 25.2799]
                        }, {
                            latitudes: [51.5002, 64.1353],
                            longitudes: [-0.1262, -21.8952]
                        }, {
                            latitudes: [51.5002, 40.4300],
                            longitudes: [-0.1262, -74.0000]
                        }],

                        images: [{
                            label: "Flights from London",
                            svgPath: planeSVG,
                            left: 100,
                            top: 45,
                            labelShiftY: 5,
                            color: "#CC0000",
                            labelColor: "#CC0000",
                            labelRollOverColor: "#CC0000",
                            labelFontSize: 20
                        }, {
                            label: "show flights from Vilnius",
                            left: 106,
                            top: 70,
                            labelColor: "#000000",
                            labelRollOverColor: "#CC0000",
                            labelFontSize: 11,
                            linkToObject: "vilnius"
                        }]
                    },

                    {
                        id: "vilnius",
                        color: "#000000",
                        svgPath: targetSVG,
                        title: "Vilnius",
                        latitude: 54.6896,
                        longitude: 25.2799,
                        scale: 1.5,
                        zoomLevel: 4.92,
                        zoomLongitude: 15.4492,
                        zoomLatitude: 50.2631,

                        lines: [{
                            latitudes: [54.6896, 50.8371],
                            longitudes: [25.2799, 4.3676]
                        }, {
                            latitudes: [54.6896, 59.9138],
                            longitudes: [25.2799, 10.7387]
                        }, {
                            latitudes: [54.6896, 40.4167],
                            longitudes: [25.2799, -3.7033]
                        }, {
                            latitudes: [54.6896, 50.0878],
                            longitudes: [25.2799, 14.4205]
                        }, {
                            latitudes: [54.6896, 48.2116],
                            longitudes: [25.2799, 17.1547]
                        }, {
                            latitudes: [54.6896, 44.8048],
                            longitudes: [25.2799, 20.4781]
                        }, {
                            latitudes: [54.6896, 55.7558],
                            longitudes: [25.2799, 37.6176]
                        }, {
                            latitudes: [54.6896, 37.9792],
                            longitudes: [25.2799, 23.7166]
                        }, {
                            latitudes: [54.6896, 54.6896],
                            longitudes: [25.2799, 25.2799]
                        }, {
                            latitudes: [54.6896, 51.5002],
                            longitudes: [25.2799, -0.1262]
                        }, {
                            latitudes: [54.6896, 53.3441],
                            longitudes: [25.2799, -6.2675]
                        }],

                        images: [{
                            label: "Flights from Vilnius",
                            svgPath: planeSVG,
                            left: 100,
                            top: 45,
                            labelShiftY: 5,
                            color: "#CC0000",
                            labelColor: "#CC0000",
                            labelRollOverColor: "#CC0000",
                            labelFontSize: 20
                        }, {
                            label: "show flights from London",
                            left: 106,
                            top: 70,
                            labelColor: "#000000",
                            labelRollOverColor: "#CC0000",
                            labelFontSize: 11,
                            linkToObject: "london"
                        }]
                    }, {
                        svgPath: targetSVG,
                        title: "Brussels",
                        latitude: 50.8371,
                        longitude: 4.3676
                    }, {
                        svgPath: targetSVG,
                        title: "Prague",
                        latitude: 50.0878,
                        longitude: 14.4205
                    }, {
                        svgPath: targetSVG,
                        title: "Athens",
                        latitude: 37.9792,
                        longitude: 23.7166
                    }, {
                        svgPath: targetSVG,
                        title: "Reykjavik",
                        latitude: 64.1353,
                        longitude: -21.8952
                    }, {
                        svgPath: targetSVG,
                        title: "Dublin",
                        latitude: 53.3441,
                        longitude: -6.2675
                    }, {
                        svgPath: targetSVG,
                        title: "Oslo",
                        latitude: 59.9138,
                        longitude: 10.7387
                    }, {
                        svgPath: targetSVG,
                        title: "Lisbon",
                        latitude: 38.7072,
                        longitude: -9.1355
                    }, {
                        svgPath: targetSVG,
                        title: "Moscow",
                        latitude: 55.7558,
                        longitude: 37.6176
                    }, {
                        svgPath: targetSVG,
                        title: "Belgrade",
                        latitude: 44.8048,
                        longitude: 20.4781
                    }, {
                        svgPath: targetSVG,
                        title: "Bratislava",
                        latitude: 48.2116,
                        longitude: 17.1547
                    }, {
                        svgPath: targetSVG,
                        title: "Ljubljana",
                        latitude: 46.0514,
                        longitude: 14.5060
                    }, {
                        svgPath: targetSVG,
                        title: "Madrid",
                        latitude: 40.4167,
                        longitude: -3.7033
                    }, {
                        svgPath: targetSVG,
                        title: "Stockholm",
                        latitude: 59.3328,
                        longitude: 18.0645
                    }, {
                        svgPath: targetSVG,
                        title: "Bern",
                        latitude: 46.9480,
                        longitude: 7.4481
                    }, {
                        svgPath: targetSVG,
                        title: "Kiev",
                        latitude: 50.4422,
                        longitude: 30.5367
                    }, {
                        svgPath: targetSVG,
                        title: "Paris",
                        latitude: 48.8567,
                        longitude: 2.3510
                    }, {
                        svgPath: targetSVG,
                        title: "New York",
                        latitude: 40.43,
                        longitude: -74
                    }
                ]
            },

            areasSettings: {
                unlistedAreasColor: "#FFCC00"
            },

            imagesSettings: {
                color: "#CC0000",
                rollOverColor: "#CC0000",
                selectedColor: "#000000"
            },

            linesSettings: {
                color: "#CC0000",
                alpha: 0.4
            },


            backgroundZoomsToTop: true,
            linesAboveImages: true
        });

        $('#chart_11').closest('.portlet').find('.fullscreen').click(function() {
            map.invalidateSize();
        });
    }

    var initChartSample12 = function() {
        var chartData = [];
        generateChartData();

        function generateChartData() {
            var firstDate = new Date(2012, 0, 1);
            firstDate.setDate(firstDate.getDate() - 500);
            firstDate.setHours(0, 0, 0, 0);

            for (var i = 0; i < 500; i++) {
                var newDate = new Date(firstDate);
                newDate.setDate(newDate.getDate() + i);

                var a = Math.round(Math.random() * (40 + i)) + 100 + i;
                var b = Math.round(Math.random() * 100000000);

                chartData.push({
                    date: newDate,
                    value: a,
                    volume: b
                });
            }
        }

        var chart = AmCharts.makeChart("chart_12", {
            type: "stock",
            "theme": "light",
            pathToImages: Metronic.getGlobalPluginsPath() + "amcharts/amcharts/images/",
            "fontFamily": 'Open Sans',
            
            "color":    '#888',
            dataSets: [{
                color: "#b0de09",
                fieldMappings: [{
                    fromField: "value",
                    toField: "value"
                }, {
                    fromField: "volume",
                    toField: "volume"
                }],
                dataProvider: chartData,
                categoryField: "date",
                // EVENTS
                stockEvents: [{
                    date: new Date(2010, 8, 19),
                    type: "sign",
                    backgroundColor: "#85CDE6",
                    graph: "g1",
                    text: "S",
                    description: "This is description of an event"
                }, {
                    date: new Date(2010, 10, 19),
                    type: "flag",
                    backgroundColor: "#FFFFFF",
                    backgroundAlpha: 0.5,
                    graph: "g1",
                    text: "F",
                    description: "Some longerntext can alson be added"
                }, {
                    date: new Date(2010, 11, 10),
                    showOnAxis: true,
                    backgroundColor: "#85CDE6",
                    type: "pin",
                    text: "X",
                    graph: "g1",
                    description: "This is description of an event"
                }, {
                    date: new Date(2010, 11, 26),
                    showOnAxis: true,
                    backgroundColor: "#85CDE6",
                    type: "pin",
                    text: "Z",
                    graph: "g1",
                    description: "This is description of an event"
                }, {
                    date: new Date(2011, 0, 3),
                    type: "sign",
                    backgroundColor: "#85CDE6",
                    graph: "g1",
                    text: "U",
                    description: "This is description of an event"
                }, {
                    date: new Date(2011, 1, 6),
                    type: "sign",
                    graph: "g1",
                    text: "D",
                    description: "This is description of an event"
                }, {
                    date: new Date(2011, 3, 5),
                    type: "sign",
                    graph: "g1",
                    text: "L",
                    description: "This is description of an event"
                }, {
                    date: new Date(2011, 3, 5),
                    type: "sign",
                    graph: "g1",
                    text: "R",
                    description: "This is description of an event"
                }, {
                    date: new Date(2011, 5, 15),
                    type: "arrowUp",
                    backgroundColor: "#00CC00",
                    graph: "g1",
                    description: "This is description of an event"
                }, {
                    date: new Date(2011, 6, 25),
                    type: "arrowDown",
                    backgroundColor: "#CC0000",
                    graph: "g1",
                    description: "This is description of an event"
                }, {
                    date: new Date(2011, 8, 1),
                    type: "text",
                    graph: "g1",
                    text: "Longer text can\nalso be displayed",
                    description: "This is description of an event"
                }]
            }],


            panels: [{
                title: "Value",
                percentHeight: 70,

                stockGraphs: [{
                    id: "g1",
                    valueField: "value"
                }],

                stockLegend: {
                    valueTextRegular: " ",
                    markerType: "none"
                }
            }],

            chartScrollbarSettings: {
                graph: "g1"
            },

            chartCursorSettings: {
                valueBalloonsEnabled: true,
                graphBulletSize: 1,
                valueLineBalloonEnabled:true,
                valueLineEnabled:true,
                valueLineAlpha:0.5
            },

            periodSelector: {
                periods: [{
                    period: "DD",
                    count: 10,
                    label: "10 days"
                }, {
                    period: "MM",
                    count: 1,
                    label: "1 month"
                }, {
                    period: "YYYY",
                    count: 1,
                    label: "1 year"
                }, {
                    period: "YTD",
                    label: "YTD"
                }, {
                    period: "MAX",
                    label: "MAX"
                }]
            },

            panelsSettings: {
                usePrefixes: true
            }
        });

        $('#chart_12').closest('.portlet').find('.fullscreen').click(function() {
            chart.invalidateSize();
        });
    }

    return {
        //main function to initiate the module

        init: function() {

            initChartSample1();
            initChartSample2();
            initChartSample3();
            initChartSample4();
            initChartSample5();
            initChartSample6();
            initChartSample7();
            initChartSample8();
            initChartSample9();
            initChartSample10();
            initChartSample11();
            initChartSample12();
        }

    };

}();
</script>
<script>
var ChartsFlotcharts = function() {
	var id = new Array();
	var name = new Array();
	var director = new Array();
	var year = new Array();
	var diameter = new Array();
	var pathlength = new Array();
	var clustering = new Array();
	var density = new Array();
	
	<c:forEach items="${Spactators}" var="item">
	id.push("${item.id}");
	name.push("${item.name}");
	director.push("${item.director}");
	year.push("${item.year}");
	diameter.push("${item.diameter}");
	pathlength.push("${item.pathlength}");
	clustering.push("${item.clustering}");
	density.push("${item.density}");
	</c:forEach>
	
	var diameter2000 = new Array();
	var pathlength2000 = new Array();
	var clustering2000 = new Array();
	var density2000 = new Array();
	
	<c:forEach items="${list2000}" var="item">
	diameter2000.push("${item.diameter}");
	pathlength2000.push("${item.pathlength}");
	clustering2000.push("${item.clustering}");
	density2000.push("${item.density}");
	</c:forEach>
	
	var diameter2005 = new Array();
	var pathlength2005 = new Array();
	var clustering2005 = new Array();
	var density2005 = new Array();
	
	<c:forEach items="${list2005}" var="item">
	diameter2005.push("${item.diameter}");
	pathlength2005.push("${item.pathlength}");
	clustering2005.push("${item.clustering}");
	density2005.push("${item.density}");
	</c:forEach>
	
	var diameter2010 = new Array();
	var pathlength2010 = new Array();
	var clustering2010 = new Array();
	var density2010 = new Array();
	
	<c:forEach items="${list2010}" var="item">
	diameter2010.push("${item.diameter}");
	pathlength2010.push("${item.pathlength}");
	clustering2010.push("${item.clustering}");
	density2010.push("${item.density}");
	</c:forEach>
	
	var diameter2015 = new Array();
	var pathlength2015 = new Array();
	var clustering2015 = new Array();
	var density2015 = new Array();
	
	<c:forEach items="${list2015}" var="item">
	diameter2015.push("${item.diameter}");
	pathlength2015.push("${item.pathlength}");
	clustering2015.push("${item.clustering}");
	density2015.push("${item.density}");
	</c:forEach>
	
	var diameter2000min = 0.0;
	var pathlength2000min = 0.0;
	var clustering2000min = 0.0;
	var density2000min = 0.0;
	
	var diameter2005min = 0.0;
	var pathlength2005min = 0.0;
	var clustering2005min = 0.0;
	var density2005min = 0.0;
	
	var diameter2010min = 0.0;
	var pathlength2010min = 0.0;
	var clustering2010min = 0.0;
	var density2010min = 0.0;
	
	var diameter2015min = 0.0;
	var pathlength2015min = 0.0;
	var clustering2015min = 0.0;
	var density2015min = 0.0;
	
	
	for (var i = 0; i < diameter2000.length; i++){
		console.log(typeof density2000min + " : " + i);
		diameter2000min += Number(diameter2000[i]);
		pathlength2000min += Number(pathlength2000[i]);
		clustering2000min += Number(clustering2000[i]);
		density2000min += Number(density2000[i]);
		console.log(typeof density2000min);
	}
	
	
	diameter2000min /= diameter2000.length;
	pathlength2000min /= diameter2000.length;
	clustering2000min /= diameter2000.length;
	density2000min /= diameter2000.length;

	for (var i = 0; i < diameter2005.length; i++){
		diameter2005min += Number(diameter2005[i]);
		pathlength2005min += Number(pathlength2005[i]);
		clustering2005min += Number(clustering2005[i]);
		density2005min += Number(density2005[i]);
	}
	
	diameter2005min /= diameter2005.length;
	pathlength2005min /= diameter2005.length;
	clustering2005min /= diameter2005.length;
	density2005min /= diameter2005.length;
	
	for (var i = 0; i < diameter2010.length; i++){
		diameter2010min += Number(diameter2010[i]);
		pathlength2010min += Number(pathlength2010[i]);
		clustering2010min += Number(clustering2010[i]);
		density2010min += Number(density2010[i]);
	}
	
	diameter2010min /= diameter2010.length;
	pathlength2010min /= diameter2010.length;
	clustering2010min /= diameter2010.length;
	density2010min /= diameter2010.length;
	
	for (var i = 0; i < diameter2015.length; i++){
		diameter2015min += Number(diameter2015[i]);
		pathlength2015min += Number(pathlength2015[i]);
		clustering2015min += Number(clustering2015[i]);
		density2015min += Number(density2015[i]);
	}
	
	diameter2015min /= diameter2015.length;
	pathlength2015min /= diameter2015.length;
	clustering2015min /= diameter2015.length;
	density2015min /= diameter2015.length;
	
    return {
        //main function to initiate the module

        init: function() {

            Metronic.addResizeHandler(function() {
                Charts.initPieCharts();
            });

        },

        initCharts: function() {

            if (!jQuery.plot) {
                return;
            }

            var data = [];
            var totalPoints = 250;

            // random data generator for plot charts

            function getRandomData() {
                if (data.length > 0) data = data.slice(1);
                // do a random walk
                while (data.length < totalPoints) {
                    var prev = data.length > 0 ? data[data.length - 1] : 50;
                    var y = prev + Math.random() * 10 - 5;
                    if (y < 0) y = 0;
                    if (y > 100) y = 100;
                    data.push(y);
                }
                // zip the generated y values with the x values
                var res = [];
                for (var i = 0; i < data.length; ++i) {
                    res.push([i, data[i]]);
                }

                return res;
            }

            //Basic Chart

            function chart1() {
                if ($('#chart_1').size() != 1) {
                    return;
                }

                var d1 = [];
                for (var i = 0; i < Math.PI * 2; i += 0.25)
                    d1.push([i, Math.sin(i)]);

                var d2 = [];
                for (var i = 0; i < Math.PI * 2; i += 0.25)
                    d2.push([i, Math.cos(i)]);

                var d3 = [];
                for (var i = 0; i < Math.PI * 2; i += 0.1)
                    d3.push([i, Math.tan(i)]);

                $.plot($("#chart_1"), [{
                    label: "sin(x)",
                    data: d1,
                    lines: {
                        lineWidth: 1,
                    },
                    shadowSize: 0
                }, {
                    label: "cos(x)",
                    data: d2,
                    lines: {
                        lineWidth: 1,
                    },
                    shadowSize: 0
                }, {
                    label: "tan(x)",
                    data: d3,
                    lines: {
                        lineWidth: 1,
                    },
                    shadowSize: 0
                }], {
                    series: {
                        lines: {
                            show: true,
                        },
                        points: {
                            show: true,
                            fill: true,
                            radius: 3,
                            lineWidth: 1
                        }
                    },
                    xaxis: {
                        tickColor: "#eee",
                        ticks: [0, [Math.PI / 2, "\u03c0/2"],
                            [Math.PI, "\u03c0"],
                            [Math.PI * 3 / 2, "3\u03c0/2"],
                            [Math.PI * 2, "2\u03c0"]
                        ]
                    },
                    yaxis: {
                        tickColor: "#eee",
                        ticks: 10,
                        min: -2,
                        max: 2
                    },
                    grid: {
                        borderColor: "#eee",
                        borderWidth: 1
                    }
                });

            }

            //Interactive Chart

            function chart2() {
                if ($('#chart_2').size() != 1) {
                    return;
                }

                function randValue() {
                    return (Math.floor(Math.random() * (1 + 40 - 20))) + 20;
                }
                var diameter = [
                    [2000, diameter2000min],
                    [2005, diameter2005min],
                    [2010, diameter2010min],
                    [2015, diameter2015min]
                    
                ];
                var pathlength = [
                    [2000, pathlength2000min],
                    [2005, pathlength2005min],
                    [2010, pathlength2010min],
                    [2015, pathlength2015min]
     
                ];
                var clustering = [
                    [2000, clustering2000min],
                    [2005, clustering2005min],
                    [2010, clustering2010min],
                    [2015, clustering2015min]
                   
                ];
                var density = [
                    [2000, density2000min],
                    [2005, density2005min],
                    [2010, density2010min],
                    [2015, density2015min]
                   
                ];

                var plot = $.plot($("#chart_2"), [{
                    data: diameter,
                    label: "diameter",
                    lines: {
                        lineWidth: 1,
                    },
                    shadowSize: 0

                }, {
                    data: pathlength,
                    label: "pathlength",
                    lines: {
                        lineWidth: 1,
                    },
                    shadowSize: 0
                },{
                    data: clustering,
                    label: "clustering",
                    lines: {
                        lineWidth: 1,
                    },
                    shadowSize: 0
                },{
                    data: density,
                    label: "density",
                    lines: {
                        lineWidth: 1,
                    },
                    shadowSize: 0
                }
                ], {
                    series: {
                        lines: {
                            show: true,
                            lineWidth: 2,
                            fill: true,
                            fillColor: {
                                colors: [{
                                    opacity: 0.05
                                }, {
                                    opacity: 0.01
                                }]
                            }
                        },
                        points: {
                            show: true,
                            radius: 3,
                            lineWidth: 1
                        },
                        shadowSize: 2
                    },
                    grid: {
                        hoverable: true,
                        clickable: true,
                        tickColor: "#eee",
                        borderColor: "#eee",
                        borderWidth: 1
                    },
                    colors: ["#d12610", "#37b7f3", "#52e136"],
                    xaxis: {
                        ticks: 11,
                        tickDecimals: 0,
                        tickColor: "#eee",
                    },
                    yaxis: {
                        ticks: 11,
                        tickDecimals: 0,
                        tickColor: "#eee",
                    }
                });


                function showTooltip(x, y, contents) {
                    $('<div id="tooltip">' + contents + '</div>').css({
                        position: 'absolute',
                        display: 'none',
                        top: y + 5,
                        left: x + 15,
                        border: '1px solid #333',
                        padding: '4px',
                        color: '#fff',
                        'border-radius': '3px',
                        'background-color': '#333',
                        opacity: 0.80
                    }).appendTo("body").fadeIn(200);
                }

                var previousPoint = null;
                $("#chart_2").bind("plothover", function(event, pos, item) {
                    $("#x").text(pos.x.toFixed(2));
                    $("#y").text(pos.y.toFixed(2));

                    if (item) {
                        if (previousPoint != item.dataIndex) {
                            previousPoint = item.dataIndex;

                            $("#tooltip").remove();
                            var x = item.datapoint[0].toFixed(2),
                                y = item.datapoint[1].toFixed(2);

                            showTooltip(item.pageX, item.pageY, item.series.label + " of " + x + " = " + y);
                        }
                    } else {
                        $("#tooltip").remove();
                        previousPoint = null;
                    }
                });
            }

            //Tracking Curves

            function chart3() {
                if ($('#chart_3').size() != 1) {
                    return;
                }
                //tracking curves:

                var sin = [],
                    cos = [];
                for (var i = 0; i < 14; i += 0.1) {
                    sin.push([i, Math.sin(i)]);
                    cos.push([i, Math.cos(i)]);
                }

                plot = $.plot($("#chart_3"), [{
                    data: sin,
                    label: "sin(x) = -0.00",
                    lines: {
                        lineWidth: 1,
                    },
                    shadowSize: 0
                }, {
                    data: cos,
                    label: "cos(x) = -0.00",
                    lines: {
                        lineWidth: 1,
                    },
                    shadowSize: 0
                }], {
                    series: {
                        lines: {
                            show: true
                        }
                    },
                    crosshair: {
                        mode: "x"
                    },
                    grid: {
                        hoverable: true,
                        autoHighlight: false,
                        tickColor: "#eee",
                        borderColor: "#eee",
                        borderWidth: 1
                    },
                    yaxis: {
                        min: -1.2,
                        max: 1.2
                    }
                });

                var legends = $("#chart_3 .legendLabel");
                legends.each(function() {
                    // fix the widths so they don't jump around
                    $(this).css('width', $(this).width());
                });

                var updateLegendTimeout = null;
                var latestPosition = null;

                function updateLegend() {
                    updateLegendTimeout = null;

                    var pos = latestPosition;

                    var axes = plot.getAxes();
                    if (pos.x < axes.xaxis.min || pos.x > axes.xaxis.max || pos.y < axes.yaxis.min || pos.y > axes.yaxis.max) return;

                    var i, j, dataset = plot.getData();
                    for (i = 0; i < dataset.length; ++i) {
                        var series = dataset[i];

                        // find the nearest points, x-wise
                        for (j = 0; j < series.data.length; ++j)
                            if (series.data[j][0] > pos.x) break;

                            // now interpolate
                        var y, p1 = series.data[j - 1],
                            p2 = series.data[j];

                        if (p1 == null) y = p2[1];
                        else if (p2 == null) y = p1[1];
                        else y = p1[1] + (p2[1] - p1[1]) * (pos.x - p1[0]) / (p2[0] - p1[0]);

                        legends.eq(i).text(series.label.replace(/=.*/, "= " + y.toFixed(2)));
                    }
                }

                $("#chart_3").bind("plothover", function(event, pos, item) {
                    latestPosition = pos;
                    if (!updateLegendTimeout) updateLegendTimeout = setTimeout(updateLegend, 50);
                });
            }

            //Dynamic Chart

            function chart4() {
                if ($('#chart_4').size() != 1) {
                    return;
                }
                //server load
                var options = {
                    series: {
                        shadowSize: 1
                    },
                    lines: {
                        show: true,
                        lineWidth: 0.5,
                        fill: true,
                        fillColor: {
                            colors: [{
                                opacity: 0.1
                            }, {
                                opacity: 1
                            }]
                        }
                    },
                    yaxis: {
                        min: 0,
                        max: 100,
                        tickColor: "#eee",
                        tickFormatter: function(v) {
                            return v + "%";
                        }
                    },
                    xaxis: {
                        show: false,
                    },
                    colors: ["#6ef146"],
                    grid: {
                        tickColor: "#eee",
                        borderWidth: 0,
                    }
                };

                var updateInterval = 30;
                var plot = $.plot($("#chart_4"), [getRandomData()], options);

                function update() {
                    plot.setData([getRandomData()]);
                    plot.draw();
                    setTimeout(update, updateInterval);
                }
                update();
            }

            //bars with controls

            function chart5() {
                if ($('#chart_55').size() != 1) {
                    return;
                }
                var d1 = [];
                for (var i = 0; i <= 10; i += 1)
                    d1.push([i, parseInt(Math.random() * 30)]);

                var d2 = [];
                for (var i = 0; i <= 10; i += 1)
                    d2.push([i, parseInt(Math.random() * 30)]);

                var d3 = [];
                for (var i = 0; i <= 10; i += 1)
                    d3.push([i, parseInt(Math.random() * 30)]);

                var stack = 0,
                    bars = true,
                    lines = false,
                    steps = false;

                function plotWithOptions() {
                    $.plot($("#chart_55"),

                        [{
                            label: "sales",
                            data: d1,
                            lines: {
                                lineWidth: 1,
                            },
                            shadowSize: 0
                        }, {
                            label: "tax",
                            data: d2,
                            lines: {
                                lineWidth: 1,
                            },
                            shadowSize: 0
                        }, {
                            label: "profit",
                            data: d3,
                            lines: {
                                lineWidth: 1,
                            },
                            shadowSize: 0
                        }]

                        , {
                            series: {
                                stack: stack,
                                lines: {
                                    show: lines,
                                    fill: true,
                                    steps: steps,
                                    lineWidth: 0, // in pixels
                                },
                                bars: {
                                    show: bars,
                                    barWidth: 0.5,
                                    lineWidth: 0, // in pixels
                                    shadowSize: 0,
                                    align: 'center'
                                }
                            },
                            grid: {
                                tickColor: "#eee",
                                borderColor: "#eee",
                                borderWidth: 1
                            }
                        }
                    );
                }

                $(".stackControls input").click(function(e) {
                    e.preventDefault();
                    stack = $(this).val() == "With stacking" ? true : null;
                    plotWithOptions();
                });

                $(".graphControls input").click(function(e) {
                    e.preventDefault();
                    bars = $(this).val().indexOf("Bars") != -1;
                    lines = $(this).val().indexOf("Lines") != -1;
                    steps = $(this).val().indexOf("steps") != -1;
                    plotWithOptions();
                });

                plotWithOptions();
            }

            //graph
            chart1();
            chart2();
            chart3();
            chart4();
            chart5();

        },

        initBarCharts: function() {

            // bar chart:
            var data = GenerateSeries(0);

            function GenerateSeries(added) {
                var data = [];
                var start =0;
                var end = 1;

                for (i = 1; i <= 20; i++) {
                    var d = Math.floor( end - start);
                    data.push([i, d]);
                    start++;
                    end++;
                }

                return data;
            }

            var options = {
                series: {
                    bars: {
                        show: true
                    }
                },
                bars: {
                    barWidth: 0.8,
                    lineWidth: 0, // in pixels
                    shadowSize: 0,
                    align: 'left'
                },

                grid: {
                    tickColor: "#eee",
                    borderColor: "#eee",
                    borderWidth: 1
                }
            };

            if ($('#chart_1_1').size() !== 0) {
                $.plot($("#chart_1_1"), [{
                    data: data,
                    lines: {
                        lineWidth: 1,
                    },
                    shadowSize: 0
                }], options);
            }

            // horizontal bar chart:

            var data1 = [
                [density[0],name[0]],
                [density[0],name[0]],
                [density[0],name[0]],
                [density[0],name[0]]
                
            ];

            var options = {
                series: {
                    bars: {
                        show: true
                    }
                },
                bars: {
                    horizontal: true,
                    barWidth: 6,
                    lineWidth: 0, // in pixels
                    shadowSize: 0,
                    align: 'left'
                },
                grid: {
                    tickColor: "#eee",
                    borderColor: "#eee",
                    borderWidth: 1
                }
            };

            if ($('#chart_1_2').size() !== 0) {
                $.plot($("#chart_1_2"), [data1], options);
            }
        },

        initPieCharts: function() {

            var data = [];
            var series = Math.floor(Math.random() * 10) + 1;
            series = series < 5 ? 5 : series;

            for (var i = 0; i < series; i++) {
                data[i] = {
                    label: "Series" + (i + 1),
                    data: Math.floor(Math.random() * 100) + 1
                };
            }

            // DEFAULT
            if ($('#pie_chart').size() !== 0) {
                $.plot($("#pie_chart"), data, {
                    series: {
                        pie: {
                            show: true
                        }
                    }
                });
            }

            // GRAPH 1
            if ($('#pie_chart_1').size() !== 0) {
                $.plot($("#pie_chart_1"), data, {
                    series: {
                        pie: {
                            show: true
                        }
                    },
                    legend: {
                        show: false
                    }
                });
            }

            // GRAPH 2
            if ($('#pie_chart_2').size() !== 0) {
                $.plot($("#pie_chart_2"), data, {
                    series: {
                        pie: {
                            show: true,
                            radius: 1,
                            label: {
                                show: true,
                                radius: 1,
                                formatter: function(label, series) {
                                    return '<div style="font-size:8pt;text-align:center;padding:2px;color:white;">' + label + '<br/>' + Math.round(series.percent) + '%</div>';
                                },
                                background: {
                                    opacity: 0.8
                                }
                            }
                        }
                    },
                    legend: {
                        show: false
                    }
                });
            }

            // GRAPH 3
            if ($('#pie_chart_3').size() !== 0) {
                $.plot($("#pie_chart_3"), data, {
                    series: {
                        pie: {
                            show: true,
                            radius: 1,
                            label: {
                                show: true,
                                radius: 3 / 4,
                                formatter: function(label, series) {
                                    return '<div style="font-size:8pt;text-align:center;padding:2px;color:white;">' + label + '<br/>' + Math.round(series.percent) + '%</div>';
                                },
                                background: {
                                    opacity: 0.5
                                }
                            }
                        }
                    },
                    legend: {
                        show: false
                    }
                });
            }

            // GRAPH 4
            if ($('#pie_chart_4').size() !== 0) {
                $.plot($("#pie_chart_4"), data, {
                    series: {
                        pie: {
                            show: true,
                            radius: 1,
                            label: {
                                show: true,
                                radius: 3 / 4,
                                formatter: function(label, series) {
                                    return '<div style="font-size:8pt;text-align:center;padding:2px;color:white;">' + label + '<br/>' + Math.round(series.percent) + '%</div>';
                                },
                                background: {
                                    opacity: 0.5,
                                    color: '#000'
                                }
                            }
                        }
                    },
                    legend: {
                        show: false
                    }
                });
            }

            // GRAPH 5
            if ($('#pie_chart_55').size() !== 0) {
                $.plot($("#pie_chart_55"), data, {
                    series: {
                        pie: {
                            show: true,
                            radius: 3 / 4,
                            label: {
                                show: true,
                                radius: 3 / 4,
                                formatter: function(label, series) {
                                    return '<div style="font-size:8pt;text-align:center;padding:2px;color:white;">' + label + '<br/>' + Math.round(series.percent) + '%</div>';
                                },
                                background: {
                                    opacity: 0.5,
                                    color: '#000'
                                }
                            }
                        }
                    },
                    legend: {
                        show: false
                    }
                });
            }

            // GRAPH 6
            if ($('#pie_chart_6').size() !== 0) {
                $.plot($("#pie_chart_6"), data, {
                    series: {
                        pie: {
                            show: true,
                            radius: 1,
                            label: {
                                show: true,
                                radius: 2 / 3,
                                formatter: function(label, series) {
                                    return '<div style="font-size:8pt;text-align:center;padding:2px;color:white;">' + label + '<br/>' + Math.round(series.percent) + '%</div>';
                                },
                                threshold: 0.1
                            }
                        }
                    },
                    legend: {
                        show: false
                    }
                });
            }

            // GRAPH 7
            if ($('#pie_chart_7').size() !== 0) {
                $.plot($("#pie_chart_7"), data, {
                    series: {
                        pie: {
                            show: true,
                            combine: {
                                color: '#999',
                                threshold: 0.1
                            }
                        }
                    },
                    legend: {
                        show: false
                    }
                });
            }

            // GRAPH 8
            if ($('#pie_chart_8').size() !== 0) {
                $.plot($("#pie_chart_8"), data, {
                    series: {
                        pie: {
                            show: true,
                            radius: 300,
                            label: {
                                show: true,
                                formatter: function(label, series) {
                                    return '<div style="font-size:8pt;text-align:center;padding:2px;color:white;">' + label + '<br/>' + Math.round(series.percent) + '%</div>';
                                },
                                threshold: 0.1
                            }
                        }
                    },
                    legend: {
                        show: false
                    }
                });
            }

            // GRAPH 9
            if ($('#pie_chart_9').size() !== 0) {
                $.plot($("#pie_chart_9"), data, {
                    series: {
                        pie: {
                            show: true,
                            radius: 1,
                            tilt: 0.5,
                            label: {
                                show: true,
                                radius: 1,
                                formatter: function(label, series) {
                                    return '<div style="font-size:8pt;text-align:center;padding:2px;color:white;">' + label + '<br/>' + Math.round(series.percent) + '%</div>';
                                },
                                background: {
                                    opacity: 0.8
                                }
                            },
                            combine: {
                                color: '#999',
                                threshold: 0.1
                            }
                        }
                    },
                    legend: {
                        show: false
                    }
                });
            }

            // DONUT
            if ($('#donut').size() !== 0) {
                $.plot($("#donut"), data, {
                    series: {
                        pie: {
                            innerRadius: 0.5,
                            show: true
                        }
                    }
                });
            }

            // INTERACTIVE
            if ($('#interactive').size() !== 0) {
                $.plot($("#interactive"), data, {
                    series: {
                        pie: {
                            show: true
                        }
                    },
                    grid: {
                        hoverable: true,
                        clickable: true
                    }
                });
                $("#interactive").bind("plothover", pieHover);
                $("#interactive").bind("plotclick", pieClick);
            }

            function pieHover(event, pos, obj) {
                if (!obj)
                    return;
                percent = parseFloat(obj.series.percent).toFixed(2);
                $("#hover").html('<span style="font-weight: bold; color: ' + obj.series.color + '">' + obj.series.label + ' (' + percent + '%)</span>');
            }

            function pieClick(event, pos, obj) {
                if (!obj)
                    return;
                percent = parseFloat(obj.series.percent).toFixed(2);
                alert('' + obj.series.label + ': ' + percent + '%');
            }

        }

    };

}();
</script>
<!--<script src="/resources/js/table-advanced.js"></script>  -->
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