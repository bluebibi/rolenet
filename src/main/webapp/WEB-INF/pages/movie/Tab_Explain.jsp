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
    <meta http-equiv="Content-type" content="text/html;charset=UTF-8" />

    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link
            href=http://218.150.181.131/assets/global/scroll/js/image.css"
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
    <link href="http://218.150.181.131/assets/global/plugins/bootstrap/css/bootstrap.min.css"
          rel="stylesheet" type="text/css">
    <link href="http://218.150.181.131/assets/global/plugins/uniform/css/uniform.default.css"
          rel="stylesheet" type="text/css">
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL PLUGIN STYLES -->
    <link href="http://218.150.181.131/assets/global/plugins/jqvmap/jqvmap/jqvmap.css"
          rel="stylesheet" type="text/css">
    <link href="http://218.150.181.131/assets/global/plugins/morris/morris.css"
          rel="stylesheet" type="text/css">
    <!-- END PAGE LEVEL PLUGIN STYLES -->
    <!-- BEGIN PAGE STYLES -->
    <link href="http://218.150.181.131/assets/admin/pages/css/tasks.css" rel="stylesheet"
          type="text/css" />
    <!-- END PAGE STYLES -->
    <!-- BEGIN THEME STYLES -->
    <link href="http://218.150.181.131/assets/global/css/components.css" rel="stylesheet"
          type="text/css">
    <link href="http://218.150.181.131/assets/global/css/plugins.css" rel="stylesheet"
          type="text/css">
    <link href="http://218.150.181.131/assets/admin/layout3/css/layout.css" rel="stylesheet"
          type="text/css">
    <link href="http://218.150.181.131/assets/admin/layout3/css/themes/default.css"
          rel="stylesheet" type="text/css" id="style_color">
    <link href="http://218.150.181.131/assets/admin/layout3/css/custom.css" rel="stylesheet"
          type="text/css">
    <!-- END THEME STYLES -->
    <link rel="shortcut icon" href="favicon.ico">

    <style type="text/css" media="screen">
        #title_search {
            margin: 0 auto;
        }
        * { margin: auto; }
        body { margin: 20px 0; background: #abc; color: #111; font-family: Helvetica, Arial, Verdana, 'Lucida Grande', sans-serif; }
        h1, h3, p { text-align: center; }
        div.example { padding: 20px; margin: 10px auto; background: #bcd; width: 750px; }
        div.example h3 { margin-bottom: 10px; }
        ul, ol { padding: 0; }
        #list { width: 50px; height: 150px; overflow-y: scroll; }
        #images { width: 600px; height: 550px; overflow-x: hidden; text-align: center; list-style: none; }
        .endless_scroll_loader { position: fixed; top: 10px; right: 20px; }
        #container_jang {
            max-width: 510px;
            height: 280px;
            margin: auto;
        }

        #head-back {
            background-image:url(http://218.150.181.131/assets/img/gephi/002.png);
            background-repeat:repeat;
            height:244px;
            margin: 0 auto;
            text-align:center;
        }
        .scrollup {
            width: 40px;
            height: 40px;
            opacity: 0.3;
            position: fixed;
            bottom: 50px;
            right: 100px;
            display: none;
            text-indent: -9999px;
            background: url('http://218.150.181.131/assets/global/scrool/js/top.png') no-repeat;
        }
    </style>
    <script>
        $(document).ready(function () {
            $(window).scroll(function () {
                if ($(this).scrollTop() > 100) {
                    $('.scrollup').fadeIn();
                } else {
                    $('.scrollup').fadeOut();
                }
            });
            $('.scrollup').click(function () {
                $("html, body").animate({
                    scrollTop: 0
                }, 600);
                return false;
            });
        });
    </script>


</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-menu-fixed" class to set the mega menu fixed  -->
<!-- DOC: Apply "page-header-top-fixed" class to set the top menu fixed  -->

<body>
<%@include file="../includes/headerMenu.jsp"%>
<a href="#" class="scrollup">Scroll</a>

<div align="center"><img src="http://218.150.181.131/Explain/1.PNG" width = "1080" height="720"></div>
<div align="center"><img src="http://218.150.181.131/Explain/2.PNG" width = "1080" height="720"></div>
<div align="center"><img src="http://218.150.181.131/Explain/3.PNG" width = "1080" height="720"></div>
<div align="center"><img src="http://218.150.181.131/Explain/4.PNG" width = "1080" height="720"></div>
<div align="center"><img src="http://218.150.181.131/Explain/5.PNG" width = "1080" height="720"></div>
<div align="center"><img src="http://218.150.181.131/Explain/6.PNG" width = "1080" height="720"></div>
<div align="center"><img src="http://218.150.181.131/Explain/7.PNG" width = "1080" height="720"></div>





<%@include file="../includes/footMenu.jsp"%>
<!-- BEGIN JAVASCRIPTS (Load javascripts at bottom, this will reduce page load time) -->
<%@include file="../includes/footer.jsp"%>
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="http://218.150.181.131/assets/global/plugins/jqvmap/jqvmap/jquery.vmap.js"
        type="text/javascript"></script>
<script
        src="http://218.150.181.131/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.russia.js"
        type="text/javascript"></script>
<script
        src="http://218.150.181.131/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.world.js"
        type="text/javascript"></script>
<script src="http://218.150.181.131/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js"
        type="text/javascript"></script>
<script
        src="http://218.150.181.131/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.europe.js"
        type="text/javascript"></script>
<script
        src="http://218.150.181.131/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.germany.js"
        type="text/javascript"></script>
<script
        src="http://218.150.181.131/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.usa.js"
        type="text/javascript"></script>
<script
        src="http://218.150.181.131/assets/global/plugins/jqvmap/jqvmap/data/jquery.vmap.sampledata.js"
        type="text/javascript"></script>
<!-- IMPORTANT! fullcalendar depends on jquery-ui-1.10.3.custom.min.js for drag & drop support -->
<script src="http://218.150.181.131/assets/global/plugins/morris/morris.min.js"
        type="text/javascript"></script>
<script src="http://218.150.181.131/assets/global/plugins/morris/raphael-min.js"
        type="text/javascript"></script>
<script src="http://218.150.181.131/assets/global/plugins/jquery.sparkline.min.js"
        type="text/javascript"></script>

<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="http://218.150.181.131/assets/global/scripts/metronic.js"
        type="text/javascript"></script>
<script src="http://218.150.181.131/assets/admin/layout3/scripts/layout.js"
        type="text/javascript"></script>
<script src="http://218.150.181.131/assets/admin/layout3/scripts/demo.js"
        type="text/javascript"></script>
<script src="http://218.150.181.131/assets/admin/pages/scripts/index3.js"
        type="text/javascript"></script>
<script src="http://218.150.181.131/assets/admin/pages/scripts/tasks.js"
        type="text/javascript"></script>
<script src="http://218.150.181.131/assets/admin/pages/scripts/ecommerce-index.js"></script>
<script src="http://218.150.181.131/assets/global/scroll/js/jquery.scrollUp.js"
        type="text/javascript"></script>
<script src="http://218.150.181.131/assets/global/scroll/js/jquery.scrollUp.min.js"
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
<script>
    function getName(){

        var tmp = document.getElementById("movieName");

        var name = tmp.value;

        name = encodeURIComponent(name);
        name = "search.do?name="+name;

        location.href=name;

    }
</script>


<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>

