<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<!--
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.2.0
Version: 3.3.1
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
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8">
    <title>MY PAGE</title>
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
    <link href="http://218.150.181.131/assets/global/plugins/sqvmap/jqvmap/jqvmap.css" rel="stylesheet" type="text/css">
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
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-menu-fixed" class to set the mega menu fixed  -->
<!-- DOC: Apply "page-header-top-fixed" class to set the top menu fixed  -->
<body>
<!-- BEGIN HEADER -->
<div class="page-header">
    <!-- BEGIN HEADER MENU -->

        <!-- END HEADER MENU -->
    <%@include file="../includes/headerMenu.jsp"%>
    <!-- END HEADER -->
    <!-- BEGIN PAGE CONTAINER -->
    <div class="page-container">
        <!-- BEGIN PAGE HEAD -->
        <div class="page-head">
            <div class="container">
                <!-- BEGIN PAGE TITLE -->
                <div class="page-title">
                    <h1>My Page <small>edit profile</small></h1>
                </div>
                <!-- END PAGE TITLE -->
                <!-- BEGIN PAGE TOOLBAR -->
                <div class="page-toolbar">
                    <!-- BEGIN THEME PANEL -->
                    <div class="btn-group btn-theme-panel">
                        <a href="javascript:;" class="btn dropdown-toggle" data-toggle="dropdown">
                            <i class="icon-settings"></i>
                        </a>
                        <div class="dropdown-menu theme-panel pull-right dropdown-custom hold-on-click">
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h3>THEME COLORS</h3>
                                    <div class="row">
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <ul class="theme-colors">
                                                <li class="theme-color theme-color-default" data-theme="default">
                                                    <span class="theme-color-view"></span>
                                                    <span class="theme-color-name">Default</span>
                                                </li>
                                                <li class="theme-color theme-color-blue-hoki" data-theme="blue-hoki">
                                                    <span class="theme-color-view"></span>
                                                    <span class="theme-color-name">Blue Hoki</span>
                                                </li>
                                                <li class="theme-color theme-color-blue-steel" data-theme="blue-steel">
                                                    <span class="theme-color-view"></span>
                                                    <span class="theme-color-name">Blue Steel</span>
                                                </li>
                                                <li class="theme-color theme-color-yellow-orange" data-theme="yellow-orange">
                                                    <span class="theme-color-view"></span>
                                                    <span class="theme-color-name">Orange</span>
                                                </li>
                                                <li class="theme-color theme-color-yellow-crusta" data-theme="yellow-crusta">
                                                    <span class="theme-color-view"></span>
                                                    <span class="theme-color-name">Yellow Crusta</span>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <ul class="theme-colors">
                                                <li class="theme-color theme-color-green-haze" data-theme="green-haze">
                                                    <span class="theme-color-view"></span>
                                                    <span class="theme-color-name">Green Haze</span>
                                                </li>
                                                <li class="theme-color theme-color-red-sunglo" data-theme="red-sunglo">
                                                    <span class="theme-color-view"></span>
                                                    <span class="theme-color-name">Red Sunglo</span>
                                                </li>
                                                <li class="theme-color theme-color-red-intense" data-theme="red-intense">
                                                    <span class="theme-color-view"></span>
                                                    <span class="theme-color-name">Red Intense</span>
                                                </li>
                                                <li class="theme-color theme-color-purple-plum" data-theme="purple-plum">
                                                    <span class="theme-color-view"></span>
                                                    <span class="theme-color-name">Purple Plum</span>
                                                </li>
                                                <li class="theme-color theme-color-purple-studio" data-theme="purple-studio">
                                                    <span class="theme-color-view"></span>
                                                    <span class="theme-color-name">Purple Studio</span>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-6 col-xs-12 seperator">
                                    <h3>LAYOUT</h3>
                                    <ul class="theme-settings">
                                        <li>
                                            Layout
                                            <select class="theme-setting theme-setting-layout form-control input-sm input-small input-inline tooltips" data-original-title="Change layout type" data-container="body" data-placement="left">
                                                <option value="boxed" selected="selected">Boxed</option>
                                                <option value="fluid">Fluid</option>
                                            </select>
                                        </li>
                                        <li>
                                            Top Menu Style
                                            <select class="theme-setting theme-setting-top-menu-style form-control input-sm input-small input-inline tooltips" data-original-title="Change top menu dropdowns style" data-container="body" data-placement="left">
                                                <option value="dark" selected="selected">Dark</option>
                                                <option value="light">Light</option>
                                            </select>
                                        </li>
                                        <li>
                                            Top Menu Mode
                                            <select class="theme-setting theme-setting-top-menu-mode form-control input-sm input-small input-inline tooltips" data-original-title="Enable fixed(sticky) top menu" data-container="body" data-placement="left">
                                                <option value="fixed">Fixed</option>
                                                <option value="not-fixed" selected="selected">Not Fixed</option>
                                            </select>
                                        </li>
                                        <li>
                                            Mega Menu Style
                                            <select class="theme-setting theme-setting-mega-menu-style form-control input-sm input-small input-inline tooltips" data-original-title="Change mega menu dropdowns style" data-container="body" data-placement="left">
                                                <option value="dark" selected="selected">Dark</option>
                                                <option value="light">Light</option>
                                            </select>
                                        </li>
                                        <li>
                                            Mega Menu Mode
                                            <select class="theme-setting theme-setting-mega-menu-mode form-control input-sm input-small input-inline tooltips" data-original-title="Enable fixed(sticky) mega menu" data-container="body" data-placement="left">
                                                <option value="fixed" selected="selected">Fixed</option>
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
                    <li>
                        <a href="#">Home</a><i class="fa fa-circle"></i>
                    </li>
                    <li class="active">
                        Dashboard
                    </li>
                </ul>
                <!-- END PAGE BREADCRUMB -->
                <!-- BEGIN PAGE CONTENT INNER -->
                <div class="row margin-top-10">

                    <div class="profile-sidebar" style="width: 250px;">
                        <!-- PORTLET MAIN -->

                        <!-- END PORTLET MAIN -->
                        <!-- PORTLET MAIN -->

                        <!-- END PORTLET MAIN -->
                    </div>
                    <!-- END BEGIN PROFILE SIDEBAR -->
                </div>
                <div class="row">
                    <div class="col-md-6 col-sm-12">
                        <!-- BEGIN PORTLET-->
                        <div class="portlet light tasks-widget">
                            <div class="portlet-title">
                                <div class="caption caption-md">
                                    <i class="icon-bar-chart theme-font hide"></i>
                                    <span class="caption-subject theme-font bold uppercase">My page</span>
                                    <span class="caption-helper">Profile</span>
                                </div>

                            </div>
                            <div class="portlet-body">
                                <div class="task-content">
                                    <div class="portlet light profile-sidebar-portlet">
                                        <!-- SIDEBAR USERPIC -->
                                        <div class="profile-userpic">
                                            <img src="http://218.150.181.131/assets/img/profile2.png" class="img-responsive" alt="">
                                        </div>
                                        <!-- END SIDEBAR USERPIC -->
                                        <!-- SIDEBAR USER TITLE -->
                                        <div class="profile-usertitle">
                                            <div class="profile-usertitle-name">
                                                <h3>Jang Won</h3>
                                            </div>
                                            <div class="profile-usertitle-job">
                                                (abcdefg123)
                                            </div>
                                        </div>
                                        <!-- END SIDEBAR USER TITLE -->
                                        <!-- SIDEBAR BUTTONS -->

                                        <!-- END SIDEBAR BUTTONS -->
                                        <!-- SIDEBAR MENU -->

                                        <!-- END MENU -->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END PORTLET-->
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <!-- BEGIN PORTLET-->
                        <div class="portlet light">
                            <div class="portlet-title">
                                <div class="caption caption-md">
                                    <i class="icon-bar-chart theme-font hide"></i>
                                    <span class="caption-subject theme-font bold uppercase">script</span>
                                    <span class="caption-helper">total 3 text</span>
                                </div>

                            </div>
                            <div class="portlet-body">
                                <div class="scroller" style="height: 305px;" data-always-visible="1" data-rail-visible1="0" data-handle-color="#D7DCE2">
                                    <div class="general-item-list">
                                        <div class="item">

                                            <div class="item-head">
                                                <div class="item-details">
                                                    <a href="" class="item-name primary-link">title1</a>
                                                    <span class="item-label">2012</span>
                                                </div>
                                                <span class="item-status"><span class="badge badge-empty badge-success"></span> 수정하기</span>
                                            </div>
                                            <div class="item-body">
                                                script explain 123 test
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="item-head">
                                                <div class="item-details">
                                                    <a href="" class="item-name primary-link">title2</a>
                                                    <span class="item-label">2002</span>
                                                </div>
                                                <span class="item-status"><span class="badge badge-empty badge-success"></span> 수정하기</span>
                                            </div>
                                            <div class="item-body">
                                                script explain 222222 test
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="item-head">
                                                <div class="item-details">
                                                    <a href="" class="item-name primary-link">title3</a>
                                                    <span class="item-label">1999</span>
                                                </div>
                                                <span class="item-status"><span class="badge badge-empty badge-success"></span> 수정하기</span>
                                            </div>
                                            <div class="item-body">
                                                script explain 33333 test
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END PORTLET-->
                    </div>

                    <div class="col-md-6 col-sm-12">
                        <!-- BEGIN PORTLET-->
                        <div class="portlet light">
                            <div class="portlet-title">
                                <div class="caption caption-md">
                                    <i class="icon-bar-chart theme-font hide"></i>
                                    <span class="caption-subject theme-font bold uppercase">script</span>
                                    <span class="caption-helper">total 1 text</span>
                                </div>

                            </div>
                            <div class="portlet-body">
                                <div class="scroller" style="height: 305px;" data-always-visible="1" data-rail-visible1="0" data-handle-color="#D7DCE2">
                                    <div class="general-item-list">
                                        <div class="item">
                                            <div class="item-head">
                                                <div class="item-details">
                                                    <a href="" class="item-name primary-link">title1</a>
                                                    <span class="item-label">2012</span>
                                                </div>
                                                <span class="item-status"><span class="badge badge-empty badge-success"></span> change</span>
                                            </div>
                                            <div class="item-body">
                                                script explain 123 test
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END PORTLET-->
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6 col-sm-6">
                        <!-- BEGIN REGIONAL STATS PORTLET-->
                        <div class="portlet light ">
                            <div class="portlet-title">
                                <div class="caption caption-md">
                                    <i class="icon-bar-chart theme-font hide"></i>
                                    <span class="caption-subject theme-font bold uppercase">User menu</span>
                                </div>
                            </div>
                            <div class="portlet-body">
                                <div class="profile-usermenu">
                                    <ul class="nav">
                                        <li class="active">
                                            <a href="Tab_editprofile.do">
                                                <span class="glyphicon glyphicon-user"></span>
                                                edit</a>
                                        </li>
                                        <li>
                                            <a href="Tab_mygraph.do">
                                                <span class="glyphicon glyphicon-stats"></span>
                                                graph </a>
                                        </li>
                                        <li>
                                            <a href="Tab_charge.do">
                                                <!--<a href="extra_profile_2.html" target="_blank">-->
                                                <span class="glyphicon glyphicon-usd"></span>
                                                charge </a>
                                        </li>
                                        <li>
                                            <a href="Tab_boardlist.do">
                                                <span class="glyphicon glyphicon-list"></span>
                                                board </a>
                                        </li>
                                    </ul>
                                </div>
                                <div id="region_statistics_content" class="display-none">
                                    <div class="btn-toolbar margin-bottom-10">
                                        <div class="btn-group btn-group-circle" data-toggle="buttons">
                                            <a href="" class="btn grey-salsa btn-sm active">
                                                Users </a>
                                            <a href="" class="btn grey-salsa btn-sm">
                                                Orders </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- END REGIONAL STATS PORTLET-->
                        </div>
                    </div>
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
        <script src="http://218.150.181.131/assets/morris.min.js" type="text/javascript"></script>
        <script src="http://218.150.181.131/assets/raphael-min.js" type="text/javascript"></script>
        <script src="http://218.150.181.131/assets/jquery.sparkline.min.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN PAGE LEVEL SCRIPTS -->

        <script src="http://218.150.181.131/assets/global/scripts/metronic.js" type="text/javascript"></script>
        <script src="http://218.150.181.131/assets/admin/layout3/scripts/layout.js" type="text/javascript"></script>
        <script src="http://218.150.181.131/assets/admin/layout3/scripts/demo.js" type="text/javascript"></script>
        <script src="http://218.150.181.131/assets/admin/pages/scripts/profile.js" type="text/javascript"></script>
        <script src="http://218.150.181.131/assets/admin/pages/script/index3.js" type="text/javascript"></script>
        <script src="http://218.150.181.131/assets/admin/pages/script/tasks.js" type="text/javascript"></script>
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