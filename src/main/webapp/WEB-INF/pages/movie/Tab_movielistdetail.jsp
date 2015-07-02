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
    <script>
        function openPopup(url) {
            window.open(url, "open_about", "top=100 left=100 width=640 height=400")
        }
    </script>
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
                            &nbsp;
                            <button class="btn default purple-stripe" onclick="openPopup('http://localhost:8080/Tab_compare?movie1=${n.id}')">Compare </button>
                        </div>
                        <div class="tools">
                            <a href="javascript:;" class="collapse">
                            </a>
                            <a href="#portlet-config" data-toggle="modal" class="config">
                            </a>
                            <a onclick="reloading()" class="reload">
                                ㅁ								</a>
                        </div>
                    </div>
                    <div class="portlet-body">
                        <!-- sigmagraph-container-->
                        <div class="sigma-parent">
    						<div class="sigma-expand" id="sigma-jang"></div>
						</div>

                        <script src="http://218.150.181.131/sigmajsGraph/jquery-2.1.1.min.js"></script>
                        <script src="http://218.150.181.131/sigmajsGraph/sigma.min.js"></script>
                        <script src="http://218.150.181.131/sigmajsGraph/parseGexf.js"></script>
                        <script src="http://218.150.181.131/sigmajsGraph/scroll.min.js"></script>
                        
                        
                        
                        
                        <script>
	var id={n.id};
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
            maxNodeSize: 6,
            minEdgeSize: 1,
            maxEdgeSize: 2
        }).mouseProperties({
            maxRatio: 1,
            mouseEnabled: false
        });


        var url = "http://218.150.181.131/assets/gexf/1.gexf";
        sigInst.parseGexf(url);

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
                        <div class="tab-content" >
                            <div class="tab-pane active" id="portlet_tab1">
                                <font face=Verdana>&nbsp;${n.synopsis}</font>
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
                                        <c:forEach var="m" items="${naverRole}">
                                            <th width="5%" ><font color="red">${m.name}</font></th>
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