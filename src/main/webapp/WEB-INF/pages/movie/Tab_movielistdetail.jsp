<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="com.springapp.entity.CharactorsList" %>
<%@ page import="java.util.List" %>
<%@ page import="org.springframework.beans.factory.annotation.Autowired" %>
<%@ page import="com.springapp.service.CharactorsListService" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <style type="text/css">
        .Text {
            font-family: Verdana, Arial, Sans-serif, 'Times New Roman';
            font-size: 8pt;
            font-weight: normal;
            font-style: normal;
            color: #333333;
            text-decoration: none;
        }

        .toolTip {
            font-family: Verdana, Arial, Sans-serif, 'Times New Roman';
            font-size: 8pt;
            filter: alpha(opacity=80);
            -moz-opacity: 0.8;
            opacity: 0.8;
            /* comment the above 3 line if you don't want transparency*/
        }
    </style>
    <script>
        var agt = navigator.userAgent.toLowerCase();
        var is_major = parseInt(navigator.appVersion);
        var is_minor = parseFloat(navigator.appVersion);

        var is_nav = ((agt.indexOf('mozilla') != -1)
        && (agt.indexOf('spoofer') == -1)
        && (agt.indexOf('compatible') == -1)
        && (agt.indexOf('opera') == -1) && (agt.indexOf('webtv') == -1) && (agt
                .indexOf('hotjava') == -1));
        var is_nav4 = (is_nav && (is_major == 4));
        var is_nav6 = (is_nav && (is_major == 5));
        var is_nav6up = (is_nav && (is_major >= 5));
        var is_ie = ((agt.indexOf("msie") != -1) && (agt.indexOf("opera") == -1));

        //tooltip Position
        var offsetX = 0;
        var offsetY = 5;
        var opacity = 100;
        var toolTipSTYLE;

        function initToolTips() {
            if (document.getElementById) {
                toolTipSTYLE = document.getElementById("toolTipLayer").style;
            }
            if (is_ie || is_nav6up) {
                toolTipSTYLE.visibility = "visible";
                toolTipSTYLE.display = "none";
                document.onmousemove = moveToMousePos;
            }
        }
        function moveToMousePos(e) {
            if (!is_ie) {
                x = e.pageX;
                y = e.pageY;
            } else {
                x = event.x + document.body.scrollLeft;
                y = event.y + document.body.scrollTop;
            }

            toolTipSTYLE.left = x + offsetX + 'px';
            toolTipSTYLE.top = y + offsetY + 'px';
            return true;
        }

        function toolTip(msg, fg, bg) {

            if (toolTip.arguments.length < 1) // if no arguments are passed then hide the tootip
            {
                if (is_nav4)
                    toolTipSTYLE.visibility = "hidden";
                else
                    toolTipSTYLE.display = "none";
            } else // show
            {
                if (!fg)
                    fg = "#777777";
                if (!bg)
                    bg = "#ffffe5";
                var content = '<table border="0" cellspacing="0" cellpadding="0" class="toolTip"><tr><td bgcolor="' + fg + '">'
                        + '<table border="0" cellspacing="1" cellpadding="0"<tr><td bgcolor="' + bg + '">'
                        + '<font face="sans-serif" color="' + fg + '" size="-2">'
                        + msg + '</font></td></tr></table>' + '</td></tr></table>';
                if (is_nav4) {
                    toolTipSTYLE.document.write(content);
                    toolTipSTYLE.document.close();
                    toolTipSTYLE.visibility = "visible";
                }

                else if (is_ie || is_nav6up) {
                    document.getElementById("toolTipLayer").innerHTML = content;
                    toolTipSTYLE.display = 'block'
                }
            }

        }


        function show(d) {
            /* you have mis placed the following 4 lines elsewhere inside the toolTip function */
            var url = new Array();
            <c:forEach items="${naverRole}" var="item">
            url.push("${item.charactorsURL}");
            </c:forEach>

            var s = '<table width="20%" cellspacing="2" cellpadding="0" border="0">';
            s += '<tr><td><img src=';
            s += String(url[d]);
            s += ' width="200" height="200" border="0"/></td></tr>';
            s += '</table>';

            toolTip(s)
        }
    </script>
<meta charset="utf-8" />
<title>Movietween | LINK 9th | Koreatech</title>
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
<link
	href="http://218.150.181.131/assets/global/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link
	href="http://218.150.181.131/assets/global/plugins/uniform/css/uniform.default.css"
	rel="stylesheet" type="text/css">
<!-- END GLOBAL MANDATORY STYLES -->
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
<link rel="shortcut icon" href="favicon.ico" />
<style type="text/css">
.sigma-parent {
	position: relative;
	height: 540px;
}

.sigma-expand {
	position: absolute;
	width: 100%;
	height: 100%;
}
</style>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-menu-fixed" class to set the mega menu fixed  -->
<!-- DOC: Apply "page-header-top-fixed" class to set the top menu fixed  -->
<body onload="initToolTips()">
<%@include file="../includes/headerMenu.jsp"%>
<div id="toolTipLayer"
    style="position: absolute; visibility: hidden; left: 0; right: 0; z-index: 5;"></div>
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
				<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
				<!-- BEGIN PAGE BREADCRUMB -->
				<ul class="page-breadcrumb breadcrumb">
					<li><a href="/">홈화면</a><i class="fa fa-circle"></i></li>
					<li><a href="/Tab_movielist">영화리스트</a> <i
						class="fa fa-circle"></i></li>
					<li class="active">영화 자세히보기</li>
				</ul>
				<!-- END PAGE BREADCRUMB -->
				<!-- BEGIN PAGE CONTENT INNER -->
				<div class="row">
					<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 margin-bottom-10">
						<a class="dashboard-stat dashboard-stat-light blue-madison"
							href="javascript:;">
							<div class="visual">
								<i class="fa fa-briefcase fa-icon-medium"></i>
							</div>
							<div class="details">
								<div class="number">감&nbsp;&nbsp;독 : <span class="number" style="font-size:24px !important;">${n.director}</span></div>
								<div class="desc">${n.year}</div>
							</div>
						</a>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
						<a class="dashboard-stat dashboard-stat-light red-intense"
							href="javascript:;">
							<div class="visual">
								<i class="fa fa-shopping-cart"></i>
							</div>
							<div class="details">
								<div class="number">${n.name}</div>
								<div class="desc">영화 제목</div>
							</div>
						</a>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
						<a class="dashboard-stat dashboard-stat-light green-haze"
							href="javascript:;">
							<div class="visual">
								<i class="fa fa-group fa-icon-medium"></i>
							</div>
							<div class="details">
								<div class="number">${n.spectators}</div>
								<div class="desc">관객 수</div>
							</div>
						</a>
					</div>
				</div>
				<div>
					<!-- Begin: life time stats -->
					<div class="portlet light">
						<div class="portlet-title">
							<div class="caption">
								<i class="icon-bar-chart font-green-sharp"></i> <span
									class="caption-subject font-green-sharp bold uppercase">영화 내 인물 네트워크</span>
								&nbsp;
								<button class="btn default purple-stripe"
									onclick="openPopup('/Tab_compare?movie1=${n.id}')">다른영화와 비교
								</button>
							</div>
							<div class="tools">
								<a href="javascript:;" class="collapse"> </a> <a
									href="#portlet-config" data-toggle="modal" class="config">
								</a> <a onclick="javascript:;" class="reload"></a>
							</div>
						</div>
						<div class="portlet-body">
							<!-- sigmagraph-container-->
							<div class="sigma-parent">
								<div class="sigma-expand" id="sigma-jang"></div>
							</div>

							<script
								src="http://218.150.181.131/sigmajsGraph/jquery-2.1.1.min.js"></script>
							<script src="http://218.150.181.131/sigmajsGraph/sigma.min.js"></script>
							<script src="http://218.150.181.131/sigmajsGraph/parseGexf.js"></script>
							<script src="http://218.150.181.131/sigmajsGraph/scroll.min.js"></script>
							<script>
	var id=${n.id};
	console.log("id : "+id);
	var url_prefix='http://218.150.181.131/assets/gexf/';
	var url_suffix='.gexf';
	var completeURL = url_prefix+id+url_suffix;

    function init() {

        var sigInst = sigma.init(document.getElementById('sigma-jang')).drawingProperties({
            defaultLabelColor: '#777',
            defaultLabelSize: 12,
            defaultLabelBGColor: '#777',
            defaultLabelHoverColor: '#555',
            labelThreshold: 2,
            defaultEdgeType: 'straight'
        }).graphProperties({
            minNodeSize: 1,
            maxNodeSize: 8,
            minEdgeSize: 1,
            maxEdgeSize: 2
        }).mouseProperties({
            maxRatio: 1,
            mouseEnabled: false
        });


        sigInst.parseGexf(completeURL);

        // Bind events :
        sigInst.bind('overnodes',function(event){
            var nodes = event.content;
            var neighbors = {};
            sigInst.iterEdges(function(e){
                if(nodes.indexOf(e.source)>=0 || nodes.indexOf(e.target)>=0){
                    neighbors[e.source] = 1;
                    neighbors[e.target] = 1;
                }
            }).iterNodes(function(n){
                if(!neighbors[n.id]){
                    n.hidden = 1;
                }else{
                    n.hidden = 0;
                }
            }).draw(2,2,2);
        }).bind('outnodes',function(){
            sigInst.iterEdges(function(e){
                e.hidden = 0;
            }).iterNodes(function(n){
                n.hidden = 0;
            }).draw(2,2,2);
        });

        (function(){

            // First, let's write a FishEye class.
            // There is no need to make this class global, since it is made to be used through
            // the SigmaPublic object, that's why a local scope is used for the declaration.
            // The parameter 'sig' represents a Sigma instance.
            var FishEye = function(sig) {
                sigma.classes.Cascade.call(this);      // The Cascade class manages the chainable property
                                                       // edit/get function.

                var self = this;                       // Used to avoid any scope confusion.
                var isActivated = false;               // Describes is the FishEye is activated.

                this.p = {                             // The object containing the properties accessible with
                    radius: 200,                         // the Cascade.config() method.
                    power: 2
                };

                function applyFishEye(mouseX, mouseY) {   // This method will apply a formula relatively to
                    // the mouse position.
                    var newDist, newSize, xDist, yDist, dist,
                            radius   = self.p.radius,
                            power    = self.p.power,
                            powerExp = Math.exp(power);

                    sig.graph.nodes.forEach(function(node) {
                        xDist = node.displayX - mouseX;
                        yDist = node.displayY - mouseY;
                        dist  = Math.sqrt(xDist*xDist + yDist*yDist);

                        if(dist < radius){
                            newDist = powerExp/(powerExp-1)*radius*(1-Math.exp(-dist/radius*power));
                            newSize = powerExp/(powerExp-1)*radius*(1-Math.exp(-dist/radius*power));

                            if(!node.isFixed){
                                node.displayX = mouseX + xDist*(newDist/dist*3/4 + 1/4);
                                node.displayY = mouseY + yDist*(newDist/dist*3/4 + 1/4);
                            }

                            node.displaySize = Math.min(node.displaySize*newSize/dist,10*node.displaySize);
                        }
                    });
                };

                // The method that will be triggered when Sigma's 'graphscaled' is dispatched.
                function handler() {
                    applyFishEye(
                            sig.mousecaptor.mouseX,
                            sig.mousecaptor.mouseY
                    );
                }

                this.handler = handler;

                // A public method to set/get the isActivated parameter.
                this.activated = function(v) {
                    if(v==undefined){
                        return isActivated;
                    }else{
                        isActivated = v;
                        return this;
                    }
                };

                // this.refresh() is just a helper to draw the graph.
                this.refresh = function(){
                    sig.draw(2,2,2);
                };
            };

            // Then, let's add some public method to sigma.js instances :
            sigma.publicPrototype.activateFishEye = function() {
                if(!this.fisheye) {
                    var sigmaInstance = this;
                    var fe = new FishEye(sigmaInstance._core);
                    sigmaInstance.fisheye = fe;
                }

                if(!this.fisheye.activated()){
                    this.fisheye.activated(true);
                    this._core.bind('graphscaled', this.fisheye.handler);
                    document.getElementById(
                            'sigma_mouse_'+this.getID()
                    ).addEventListener('mousemove',this.fisheye.refresh,true);
                }

                return this;
            };

            sigma.publicPrototype.desactivateFishEye = function() {
                if(this.fisheye && this.fisheye.activated()){
                    this.fisheye.activated(false);
                    this._core.unbind('graphscaled', this.fisheye.handler);
                    document.getElementById(
                            'sigma_mouse_'+this.getID()
                    ).removeEventListener('mousemove',this.fisheye.refresh,true);
                }

                return this;
            };

            sigma.publicPrototype.fishEyeProperties = function(a1, a2) {
                var res = this.fisheye.config(a1, a2);
                return res == s ? this.fisheye : res;
            };
        })();


        (function(){

            var popUp;

            function attributesToString(attr) {
                console.log(attr);

                var out = [];

                $.each(attr, function(index, value) {
                    switch(value['attr']){
                        case "betweenesscentrality":
                            out.push({attr:'Betweenness', val: value['val']})
                            break;
                        case "degree":
                            out.push({attr:'Degree', val: value['val']})
                            break;
                        case "modularity_class":
                            out.push({attr:'Cluster', val: value['val']})
                            break;
                    }



                });

                return '<ul style="list-style-type:none; padding:0px; margin:0px; position:relative; left:-6px;">' +
                        out.map(function(o){
                            return '<li style="font-size:12px!important;">' + o.attr + ' : ' + Math.round(o.val*10)/10 + '</li>';
                        }).join('') +
                        '</ul>';

            }

            function showNodeInfo(event) {
                popUp && popUp.remove();

                var node;
                sigInst.iterNodes(function(n){
                    node = n;
                },[event.content[0]]);

                popUp = $(
                        '<div class="node-info-popup"></div>'
                ).append(

                        attributesToString( node['attr']['attributes'] )
                ).attr(
                        'id',
                        'node-info'+sigInst.getID()
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
                            'left': node.displayX,
                            'top': node.displayY+10
                        });

                $('ul',popUp).css('margin','0 0 0 10px');

                $('#sigma-jang').append(popUp);
            }

            function hideNodeInfo(event) {
                popUp && popUp.remove();
                popUp = false;
            }

            sigInst.bind('overnodes',showNodeInfo).bind('outnodes',hideNodeInfo).draw();
        })();

        // Finally, let's activate the FishEye on our instance:
        sigInst.activateFishEye().draw();
    }

    if (document.addEventListener) {
        document.addEventListener("DOMContentLoaded", init, false);
    } else {
        window.onload = init;
    }

    $('#sigma-jang').css('background-color','white');
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
								<span class="caption-subject font-red-sunglo bold uppercase">영화정보</span>
							</div>
							<ul class="nav nav-tabs">
								<li><a href="#portlet_tab2" data-toggle="tab" id="statistics_amounts_tab"> Base </a></li>
								<li class="active"><a href="#portlet_tab1" data-toggle="tab"> 줄거리 </a></li>
							</ul>
						</div>
						<div class="portlet-body">
							<div class="tab-content">
								<div class="tab-pane active" id="portlet_tab1">
									<font face=Verdana>&nbsp;${n.synopsis}</font>
								</div>
								<div class="tab-pane" id="portlet_tab2">
									<div id="statistics_2" class="chart">ㅇㄴㅁ</div>
								</div>
							</div>
							<div class="margin-top-20 no-margin no-border">
								<div class="row">
									<div class="col-md-3 col-sm-3 col-xs-6 text-stat">
										<span class="label label-success uppercase"> 배우 </span>
									</div>
								</div>
								<br>
								<div>
									<table class="table table-striped table-bordered table-hover">
										<thead>
											<tr>
												<th width="10%">Between</th>
												<c:forEach var="m" items="${betweenRole}">
													<th width="5%">${m.name}</th>
												</c:forEach>
											</tr>
											<tr>
												<th width="10%">Degree</th>
												<c:forEach var="m" items="${degreeRole}">
													<th width="5%">${m.name}</th>
												</c:forEach>
											</tr>
											<tr>
												<th width="10%">Naver</th>
                                                <%
                                                    int count2 = 0;
                                                %>
												<c:forEach var="m" items="${naverRole}">

													<th width="5%" onmouseover="show(<%=count2%>)" onmouseout="toolTip()">${m.name}</th>
                                                <%
                                                count2++;
                                                %>
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
                <div>
                    <div class="portlet light">
                        <div class="alert alert-info">
                        	<strong>이 영화가 마음에 드신다면..</strong> 다음 영화들을 추천드려요 
                        </div>
                        <div>
                            <%
                                int cnt = 0;
                            %>
                            <table>
                                <tr>
                            <c:forEach var="m" items="${recommend}">
                                <td>
                                <img class='img-responsive' src='http://218.150.181.131/poster/${m.movie_id}p.png' width="270pt" height="100pt" onclick="document.location = 'Tab_movielistdetail?id=${m.movie_id}';">
                                </td>
                                <%
                                    if(cnt > 2){
                                %>
                                </tr>
                                <tr>
                                <%
                                        cnt = 0;
                                    } else {
                                            cnt++;
                                            System.out.println("cnt = " + cnt);
                                        }
                                %>

                             </c:forEach>
                                </tr>
                            </table>
                        </div>
                    </div>

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
	<script
		src="http://218.150.181.131/assets/global/plugins/flot/jquery.flot.js"
		type="text/javascript"></script>
	<script
		src="http://218.150.181.131/assets/global/plugins/flot/jquery.flot.resize.js"
		type="text/javascript"></script>
	<script
		src="http://218.150.181.131/assets/global/plugins/flot/jquery.flot.categories.js"
		type="text/javascript"></script>
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
		src="http://218.150.181.131/assets/admin/pages/scripts/ecommerce-index.js"></script>
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