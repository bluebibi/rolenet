<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.*"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8" />

<title>Movietween | LINK 9th | Koreatech</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta content="width=device-width, initial-scale=1" name="viewport"/>
<meta content="" name="description"/>
<meta content="" name="author"/>
<meta http-equiv="Content-type" content="text/html;charset=UTF-8" />

<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="http://218.150.181.131/assets/global/scroll/js/image.css" rel="stylesheet" type="text/css">
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
<script src="http://218.150.181.131/sigma.js-1.0.3/jquery-2.1.1.min.js"></script>
<script>
function clearBox(id,year,spectators,diameter,pathlength,clustering,density)
{
	var name = new Array();
	var director = new Array();
	
	//origin movie info
	name.push("${movie1.name}");
	director.push("${movie1.director}");
	var hohoho = $("."+ id).eq(0).html();
	var director2 = $("."+id).eq(1).html();
	console.log("hohoho : "+hohoho);

	$( ".list" ).empty();
	var string = "<div class='portlet-body'>";
	string += "<table class='table table-striped table-bordered table-hover'>";
	string += "<thead><tr><th></th><th>";
	string += hohoho;
	string += "</th><th>";
	string += name[0];
	string += "</th></tr></thead>";
	string += "<tbody><tr><th>감독</th><th>";
	string += director2
	string += "</th><th>";
	string += director[0];
	string += "</th></tr>";
	string += "<tr><th>개봉일</th><th>";
	string += year;
	string += "</th><th>";
	string += ${movie1.year};
	string += "</th></tr>";
	string += "<tr><th>관객수</th><th>";
	string += spectators;
	string += "</th><th>";
	string += ${movie1.spectators};
	string += "</th></tr>";
	string += "<tr><th>diameter</th><th>";
	string += diameter;
	string += "</th><th>";
	string += ${movie1.diameter};
	string += "</th></tr>";
	
	string += "<tr><th>pathlength</th><th>";
	string += pathlength;
	string += "</th><th>";
	string += ${movie1.pathlength};
	string += "</th></tr>";
	
	string += "<tr><th>clustering</th><th>";
	string += clustering;
	string += "</th><th>";
	string += ${movie1.clustering};
	string += "</th></tr>";
	
	string += "<tr><th>density</th><th>";
	string += density;
	string += "</th><th>";
	string += ${movie1.density};
	string += "</th></tr>";
	string += "<br><button class='btn default purple-stripe' onclick='compare()')'>Compare </button>";
	$(string).appendTo(".list");
};
function compare(){
	$( ".list" ).empty();
	var string = "<table class='table table-striped table-bordered table-hover'>";
	string += "<thead><tr><th width='5%'>No.</th><th width='10%'>영화</th><th width='10%'>연도</th><th width='10%'>감독</th><th>관객수</th><th>diameter</th><th>pathlength</th><th>clustering</th><th>density</th></tr></thead><tbody>";
	string += "<c:forEach var='m' items='${list3}'>";
	string += "<tr onclick='clearBox(${m.id},${m.year},${m.spectators},${m.diameter},${m.pathlength},${m.clustering},${m.density})'>";
	string += "<td>${m.id}</td><td class='${m.id}'>${m.name}</td><td>${m.year}</td><td class='${m.id}'>${m.director}</td><td>${m.spectators}</td>";
    string += "<td>${m.diameter}</td>";
    string += "<td>${m.pathlength}</td>";
    string += "<td>${m.clustering}</td><td>${m.density}</td></tr></c:forEach></tbody></table>";
    $(string).appendTo(".list");
}
</script>

</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-menu-fixed" class to set the mega menu fixed  -->
<!-- DOC: Apply "page-header-top-fixed" class to set the top menu fixed  -->

<body>
	<div class="alert alert-success" id="alert">
		<strong>click the movie. compare ${movie1.name} with selected movie</strong>
	</div>
	<div class="list">
		<div class="portlet-body">
			<table class="table table-striped table-bordered table-hover" id="sample_4">
            	<thead>
                	<tr>
                    	<th width="5%">No.</th>
                        <th width="10%">영화</th>
                        <th width="10%">연도</th>
                        <th width="10%">감독</th>
                        <th width="10%">관객수</th>
                        <th width="10%">diameter</th>
                        <th width="10%">pathlength</th>
                        <th width="10%">clustering</th>
                        <th width="10%">density</th>
					</tr>
				</thead>
				<tbody>
                	<c:forEach var="m" items="${list3}">
                    	<tr onclick="clearBox(${m.id},${m.year},${m.spectators},${m.diameter},${m.pathlength},${m.clustering},${m.density})">
                        	<td>${m.id}</td>
                        	<td class="${m.id}">${m.name}</td>
                            <td>${m.year}</td>
                            <td class="${m.id}">${m.director}</td>
                            <td>${m.spectators}</td>
                            <td>${m.diameter}</td>
                            <td>${m.pathlength}</td>
                            <td>${m.clustering}</td>
                            <td>${m.density}</td>
                         </tr>
                     </c:forEach>
                </tbody>
			</table>
		</div>
	</div>
	<!-- BEGIN JAVASCRIPTS (Load javascripts at bottom, this will reduce page load time) -->
<%@include file="../includes/footer.jsp"%>
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
		src="http://218.150.181.131/assets/admin/pages/scripts/index3.js"
		type="text/javascript"></script>
	<script
		src="http://218.150.181.131/assets/admin/pages/scripts/tasks.js"
		type="text/javascript"></script>
	<script
		src="http://218.150.181.131/assets/admin/pages/scripts/ecommerce-index.js"></script>
	<script
		src="http://218.150.181.131/assets/global/scroll/js/jquery.scrollUp.js"
		type="text/javascript"></script>
	<script
		src="http://218.150.181.131/assets/global/scroll/js/jquery.scrollUp.min.js"
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



	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>

