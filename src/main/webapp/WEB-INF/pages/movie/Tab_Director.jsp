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

  <style>
    @import url(http://fonts.googleapis.com/css?family=Orbitron:700,900);

    @import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);

    #mainTitle {
      font-family: 'Orbitron', sans-serif;
      font-weight: 900;
    }

    .koreanStyle {
      font-family: 'Nanum Gothic', sans-serif !important;
    }
  </style>
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
      filter: alpha(opacity = 80);
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
      s = '<table width="20%" cellspacing="2" cellpadding="0" border="0">';
      s += '<tr><td><img src="http://218.150.181.131/assets/img/gephi/';
      s += d;
      s += '.png" width="200" height="200" border="0"/></td></tr>';
      s += '</table>'

      toolTip(s)
    }
    function show2(d) {
      /* you have mis placed the following 4 lines elsewhere inside the toolTip function */
      s = '<table width="20%" cellspacing="2" cellpadding="0" border="0">';
      s += '<tr><td><img src="http://218.150.181.131/Explain/';
      s += d;
      s += '.PNG"width="300" height="300" border="0"/>';
      s += '</td></tr>';
      s += '</table>';

      toolTip(s)
    }


    function openPopup(url) {
      window.open(url, "open_about", "top=100 left=100 width=640 height=400")
    }
  </script>

  <title>Movie</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"></meta>
  <meta content="width=device-width, initial-scale=1.0" name="viewport" />
  <meta http-equiv="Content-type" content="text/html; charset=utf-8"></meta>
  <meta content="" name="description" />
  <meta content="" name="author" />
  <!-- BEGIN GLOBAL MANDATORY STYLES -->
  <link
          href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all"
          rel="stylesheet" type="text/css"></link>
  <link
          href="http://218.150.181.131/assets/global/plugins/font-awesome/css/font-awesome.min.css"
          rel="stylesheet" type="text/css"></link>
  <link
          href="http://218.150.181.131/assets/global/plugins/simple-line-icons/simple-line-icons.min.css"
          rel="stylesheet" type="text/css"></link>
  <link
          href="http://218.150.181.131/assets/global/plugins/bootstrap/css/bootstrap.min.css"
          rel="stylesheet" type="text/css"></link>
  <link
          href="http://218.150.181.131/assets/global/plugins/uniform/css/uniform.default.css"
          rel="stylesheet" type="text/css"></link>
  <!-- END GLOBAL MANDATORY STYLES -->
  <!-- BEGIN PAGE LEVEL STYLES -->
  <link rel="stylesheet" type="text/css"
        href="http://218.150.181.131/assets/global/plugins/select2/select2.css"></link>
  <link rel="stylesheet" type="text/css"
        href="http://218.150.181.131/assets/global/plugins/datatables/extensions/Scroller/css/dataTables.scroller.min.css" />
  <link rel="stylesheet" type="text/css"
        href="http://218.150.181.131/assets/global/plugins/datatables/extensions/ColReorder/css/dataTables.colReorder.min.css" />
  <link rel="stylesheet" type="text/css"
        href="http://218.150.181.131/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css" />
  <!-- END PAGE LEVEL STYLES -->
  <!-- BEGIN THEME STYLES -->
  <link href="http://218.150.181.131/assets/global/css/components.css"
        rel="stylesheet" type="text/css"></link>
  <link href="http://218.150.181.131/assets/global/css/plugins.css"
        rel="stylesheet" type="text/css"></link>
  <link href="http://218.150.181.131/assets/admin/layout3/css/layout.css"
        rel="stylesheet" type="text/css"></link>
  <link
          href="http://218.150.181.131/assets/admin/layout3/css/themes/default.css"
          rel="stylesheet" type="text/css" id="style_color"></link>
  <link href="http://218.150.181.131/assets/admin/layout3/css/custom.css"
        rel="stylesheet" type="text/css"></link>
  <!-- END THEME STYLES -->
  <link rel="shortcut icon" href="favicon.ico"></link>
</head>
<!-- END HEAD -->

<!-- BEGIN BODY -->
<body onload="initToolTips();">
<%@include file="../includes/headerMenu.jsp"%>
<div id="toolTipLayer"
     style="position: absolute; visibility: hidden; left: 0; right: 0; z-index: 5;"></div>
<!-- BEGIN PAGE CONTAINER -->
<div class="page-container">
  <!-- BEGIN PAGE HEAD -->
  <div class="page-head">
    <div class="container">
      <!-- BEGIN PAGE TITLE -->
      <div class="page-title">
        <h1 class="koreanStyle">감독 목록</h1>
      </div>
      <!-- END PAGE TITLE -->
      <!-- BEGIN PAGE TOOLBAR -->
      <div class="page-toolbar"></div>
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
      <!-- /.modal -->
      <!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
      <!-- BEGIN PAGE BREADCRUMB -->

      <!-- END PAGE BREADCRUMB -->
      <!-- BEGIN PAGE CONTENT INNER -->
      <div class="row">
        <div class="col-md-12">
          <!-- BEGIN EXAMPLE TABLE PORTLET-->
          <div class="portlet light">
            <div class="portlet-title" style="z-index: 1;">
              <div class="caption">
                <i class="fa fa-cogs font-green-sharp"></i> <span
                      class="caption-subject font-green-sharp bold uppercase koreanStyle">감독
										리스트</span>
              </div>
            </div>


            <div class="portlet-body">

              <table class="table table-striped table-bordered table-hover"
                     id="sample_4">
                  <thead>
                    <tr>
                      <th width="10%">감독</th>
                      <th width="10%">총 관객 수</th>
                      <th width="10%">평균 Diameter</th>
                      <th width="10%">평균 Pathlength</th>
                      <th width="10%">평균 Clustering</th>
                      <th width="10%">평균 Density</th>
                      <th width="10%">영화 개수</th>
                    </tr>
                  </thead>

                <tbody>
                  <c:forEach var="m" items="${dist}">
                    <tr onclick="document.location = 'Tab_DirectorDetail?id=${m.id}';">
                      <td>${m.director}</td>
                      <td>${m.sumS}</td>
                      <td>${m.avgD}</td>
                      <td>${m.avgP}</td>
                      <td>${m.avgC}</td>
                      <td>${m.avgDE}</td>
                      <td>${m.count}</td>
                    </tr>

                   </c:forEach>
                </tbody>
              </table>
            </div>
          </div>
          <!-- END EXAMPLE TABLE PORTLET-->
        </div>
      </div>
      <!-- END PAGE CONTENT INNER -->
    </div>
  </div>
  <!-- END PAGE CONTENT -->
</div>
<!-- END PAGE CONTAINER -->
<%@include file="../includes/footMenu.jsp"%>
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<%@include file="../includes/footer.jsp"%>
<!-- BEGIN PAGE LEVEL PLUGINS -->
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
<script src="http://218.150.181.131/assets/global/scripts/metronic.js"
        type="text/javascript"></script>
<script
        src="http://218.150.181.131/assets/admin/layout3/scripts/layout.js"
        type="text/javascript"></script>
<script
        src="http://218.150.181.131/assets/admin/layout3/scripts/demo.js"
        type="text/javascript"></script>
<script src="/resources/js/table-advanced2.js"></script>
<script>
  jQuery(document).ready(function () {
    Metronic.init(); // init metronic core components
    Layout.init(); // init current layout
    Demo.init(); // init demo features
    TableAdvanced.init();

    function trans_Num(str) {
      var str = String(str); //우선 스트림으로 바꾸고
      var result = "";
      var len = str.length;
      if (len > 3) { //세자리 이상일떄만
        for (i = len - 1, j = 0; i >= 0; i--) {
          result = str.substring(i, i + 1) + result; //끝자리 부터 하나씩 합치다가
          j++;
          if (j == 3 && j != 0) { //세자리 되면 콤마 추가
            result = "," + result;
            j = 0;
          }
        }
      }
      return result;
    }
  });
</script>
</body>
<!-- END BODY -->
</html>