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
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport">
<meta content="" name="description">
<meta content="" name="author">
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

<style type="text/css" media="screen">
#title_search {
	margin: 0 auto;
}

* {
	margin: auto;
}

body {
	margin: 20px 0;
	background: #abc;
	color: #111;
	font-family: Helvetica, Arial, Verdana, 'Lucida Grande', sans-serif;
}

h1, h3, p {
	text-align: center;
}

div.example {
	padding: 20px;
	margin: 10px auto;
	background: #bcd;
	width: 750px;
}

div.example h3 {
	margin-bottom: 10px;
}

ul, ol {
	padding: 0;
}

#list {
	width: 50px;
	height: 150px;
	overflow-y: scroll;
}

#images {
	width: 600px;
	height: 550px;
	overflow-x: hidden;
	text-align: center;
	list-style: none;
}

.endless_scroll_loader {
	position: fixed;
	top: 10px;
	right: 20px;
}

.sigma-parent {
	position: relative;
	height: 100%;
}

.sigma-expand {
	position: absolute;
	width: 100%;
	height: 100%;
}

#head-back {
	background-image: url(http://218.150.181.131/assets/img/gephi/002.png);
	background-repeat: repeat;
	height: 244px;
	margin: 0 auto;
	text-align: center;
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
	background:
		url('http://218.150.181.131/assets/global/scroll/js/top.png')
		no-repeat;
}
</style>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script>
	$(document).ready(function() {
		$(window).scroll(function() {
			if ($(this).scrollTop() > 100) {
				$('.scrollup').fadeIn();
			} else {
				$('.scrollup').fadeOut();
			}
		});
		$('.scrollup').click(function() {
			$("html, body").animate({
				scrollTop : 0
			}, 600);
			return false;
		});
	});
</script>

<script>
	$(function() {

		var id = new Array();
		var name = new Array();
		var director = new Array();
		var year = new Array();

		<c:forEach items="${scroll_movie}" var="item">
		id.push("${item.id}");
		name.push("${item.name}");
		director.push("${item.director}");
		year.push("${item.year}");
		</c:forEach>

		var count = 0;
		var string = "<div class='row'>";
		string += "<div class='col-md-3 col-sm-3'><div class='portlet light' id='haha'><div class='portlet-title tabbable-line'><div class='caption'><i class='icon-share font-red-sunglo'></i><span class='caption-subject font-red-sunglo bold uppercase'>";
		string += name[count];
		string += "</span><span class='caption-helper'>";
		string += "<br> &nbsp;";
		string += director[count];
		string += " | ";
		string += year[count];
		string += "</span></div></div><div class='portlet-body'><a href='Tab_movielistdetail?id=";
		string += id[count];
		string += "'><img src='http://218.150.181.131/poster/";
	string += id[count];
	string += "p.png' width='220' height='200'onmouseover=\"this.src='http://218.150.181.131/assets/img/gephi/";
	string += id[count];
	string += ".png'\" onmouseout=\"this.src='http://218.150.181.131/poster/";
	string += id[count];
	string += "p.png'\"/></a></div></div></div>";
		count++;
		string += "<div class='col-md-3 col-sm-3'><div class='portlet light' id='haha'><div class='portlet-title tabbable-line'><div class='caption'><i class='icon-share font-red-sunglo'></i><span class='caption-subject font-red-sunglo bold uppercase'>";
		string += name[count];
		string += "</span><span class='caption-helper'>";
		string += "<br> &nbsp;";
		string += director[count];
		string += " | ";
		string += year[count];
		string += "</span></div></div><div class='portlet-body'><a href='Tab_movielistdetail?id=";
		string += id[count];
		string += "'><img src='http://218.150.181.131/poster/";
	string += id[count];
	string += "p.png' width='220' height='200'onmouseover=\"this.src='http://218.150.181.131/assets/img/gephi/";
	string += id[count];
	string += ".png'\" onmouseout=\"this.src='http://218.150.181.131/poster/";
	string += id[count];
	string += "p.png'\"/></a></div></div></div>";
		count++;
		string += "<div class='col-md-3 col-sm-3'><div class='portlet light' id='haha'><div class='portlet-title tabbable-line'><div class='caption'><i class='icon-share font-red-sunglo'></i><span class='caption-subject font-red-sunglo bold uppercase'>";
		string += name[count];
		string += "</span><span class='caption-helper'>";
		string += "<br> &nbsp;";
		string += director[count];
		string += " | ";
		string += year[count];
		string += "</span></div></div><div class='portlet-body'><a href='Tab_movielistdetail?id=";
		string += id[count];
		string += "'><img src='http://218.150.181.131/poster/";
	string += id[count];
	string += "p.png' width='220' height='200'onmouseover=\"this.src='http://218.150.181.131/assets/img/gephi/";
	string += id[count];
	string += ".png'\" onmouseout=\"this.src='http://218.150.181.131/poster/";
	string += id[count];
	string += "p.png'\"/></a></div></div></div>";
		count++;
		string += "<div class='col-md-3 col-sm-3'><div class='portlet light' id='haha'><div class='portlet-title tabbable-line'><div class='caption'><i class='icon-share font-red-sunglo'></i><span class='caption-subject font-red-sunglo bold uppercase'>";
		string += name[count];
		string += "</span><span class='caption-helper'>";
		string += "<br> &nbsp;";
		string += director[count];
		string += " | ";
		string += year[count];
		string += "</span></div></div><div class='portlet-body'><a href='Tab_movielistdetail?id=";
		string += id[count];
		string += "'><img src='http://218.150.181.131/poster/";
	string += id[count];
	string += "p.png' width='220' height='200'onmouseover=\"this.src='http://218.150.181.131/assets/img/gephi/";
	string += id[count];
	string += ".png'\" onmouseout=\"this.src='http://218.150.181.131/poster/";
	string += id[count];
	string += "p.png'\"/></a></div></div></div>";
		string += "</div>";
		//$(window).scroll(function() { });

		$(string).appendTo("#haha");
		$(window).bind("scroll", infinityScrollFunction);

		function infinityScrollFunction() {

			if (count < "${count}") {
				//현재문서의 높이를 구함.
				var documentHeight = $(document).height();
				console.log("documentHeight : " + documentHeight);

				//scrollTop() 메서드는 선택된 요소의 세로 스크롤 위치를 설정하거나 반환    
				//스크롤바가 맨 위쪽에 있을때 , 위치는 0
				console.log("window의 scrollTop() : " + $(window).scrollTop());
				//height() 메서드는 브라우저 창의 높이를 설정하거나 반환
				console.log("window의 height() : " + $(window).height());

				//세로 스크롤위치 max값과 창의 높이를 더하면 현재문서의 높이를 구할수있음.
				//세로 스크롤위치 값이 max이면 문서의 끝에 도달했다는 의미
				var scrollHeight = $(window).scrollTop() + $(window).height();
				console.log("scrollHeight : " + scrollHeight);

				if (scrollHeight == documentHeight) { //문서의 맨끝에 도달했을때 내용 추가 
					count++;
					if (count < "${count}")
						if (count == "${count}" - 4) {
							var string = "<div class='row'>";
							string += "<div class='col-md-3 col-sm-3'><div class='portlet light' id='haha'><div class='portlet-title tabbable-line'><div class='caption'><i class='icon-share font-red-sunglo'></i><span class='caption-subject font-red-sunglo bold uppercase'>";
							string += name[count];
							string += "</span><span class='caption-helper'>";
							string += "<br> &nbsp;";
							string += director[count];
							string += " | ";
							string += year[count];
							string += "</span></div></div><div class='portlet-body'><a href='Tab_movielistdetail?id=";
							string += id[count];
							string += "'><img src='http://218.150.181.131/poster/";
        	string += id[count];
        	string += "p.png' width='220' height='200'onmouseover=\"this.src='http://218.150.181.131/assets/img/gephi/";
        	string += id[count];
        	string += ".png'\" onmouseout=\"this.src='http://218.150.181.131/poster/";
        	string += id[count];
        	string += "p.png'\"/></a></div></div></div>";
							count++;
							string += "<div class='col-md-3 col-sm-3'><div class='portlet light' id='haha'><div class='portlet-title tabbable-line'><div class='caption'><i class='icon-share font-red-sunglo'></i><span class='caption-subject font-red-sunglo bold uppercase'>";
							string += name[count];
							string += "</span><span class='caption-helper'>";
							string += "<br> &nbsp;";
							string += director[count];
							string += " | ";
							string += year[count];
							string += "</span></div></div><div class='portlet-body'><a href='Tab_movielistdetail?id=";
							string += id[count];
							string += "'><img src='http://218.150.181.131/poster/";
        	string += id[count];
        	string += "p.png' width='220' height='200'onmouseover=\"this.src='http://218.150.181.131/assets/img/gephi/";
        	string += id[count];
        	string += ".png'\" onmouseout=\"this.src='http://218.150.181.131/poster/";
        	string += id[count];
        	string += "p.png'\"/></a></div></div></div>";
							count++;
							string += "<div class='col-md-3 col-sm-3'><div class='portlet light' id='haha'><div class='portlet-title tabbable-line'><div class='caption'><i class='icon-share font-red-sunglo'></i><span class='caption-subject font-red-sunglo bold uppercase'>";
							string += name[count];
							string += "</span><span class='caption-helper'>";
							string += "<br> &nbsp;";
							string += director[count];
							string += " | ";
							string += year[count];
							string += "</span></div></div><div class='portlet-body'><a href='Tab_movielistdetail?id=";
							string += id[count];
							string += "'><img src='http://218.150.181.131/poster/";
        	string += id[count];
        	string += "p.png' width='220' height='200'onmouseover=\"this.src='http://218.150.181.131/assets/img/gephi/";
        	string += id[count];
        	string += ".png'\" onmouseout=\"this.src='http://218.150.181.131/poster/";
        	string += id[count];
        	string += "p.png'\"/></a></div></div></div>";
							count++;
							string += "<div class='col-md-3 col-sm-3'><div class='portlet light' id='haha'><div class='portlet-title tabbable-line'><div class='caption'><i class='icon-share font-red-sunglo'></i><span class='caption-subject font-red-sunglo bold uppercase'>";
							string += name[count];
							string += "</span><span class='caption-helper'>";
							string += "<br> &nbsp;";
							string += director[count];
							string += " | ";
							string += year[count];
							string += "</span></div></div><div class='portlet-body'><a href='Tab_movielistdetail?id=";
							string += id[count];
							string += "'><img src='http://218.150.181.131/poster/";
        	string += id[count];
        	string += "p.png' width='220' height='200'onmouseover=\"this.src='http://218.150.181.131/assets/img/gephi/";
        	string += id[count];
        	string += ".png'\" onmouseout=\"this.src='http://218.150.181.131/poster/";
        	string += id[count];
        	string += "p.png'\"/></a></div></div></div>";
							string += "</div>";
						} else if (count == "${count}" - 1) {
							var string = "<div class='row'>";
							string += "<div class='col-md-3 col-sm-3'><div class='portlet light' id='haha'><div class='portlet-title tabbable-line'><div class='caption'><i class='icon-share font-red-sunglo'></i><span class='caption-subject font-red-sunglo bold uppercase'>";
							string += name[count];
							string += "</span><span class='caption-helper'>";
							string += "<br> &nbsp;";
							string += director[count];
							string += " | ";
							string += year[count];
							string += "</span></div></div><div class='portlet-body'><a href='Tab_movielistdetail?id=";
							string += id[count];
							string += "'><img src='http://218.150.181.131/poster/";
            	string += id[count];
            	string += "p.png' width='220' height='200'onmouseover=\"this.src='http://218.150.181.131/assets/img/gephi/";
            	string += id[count];
            	string += ".png'\" onmouseout=\"this.src='http://218.150.181.131/poster/";
            	string += id[count];
            	string += "p.png'\"/></a></div></div></div>";
							string += "</div>";
						} else if (count == "${count}" - 2) {
							var string = "<div class='row'>";
							string += "<div class='col-md-3 col-sm-3'><div class='portlet light' id='haha'><div class='portlet-title tabbable-line'><div class='caption'><i class='icon-share font-red-sunglo'></i><span class='caption-subject font-red-sunglo bold uppercase'>";
							string += name[count];
							string += "</span><span class='caption-helper'>";
							string += "<br> &nbsp;";
							string += director[count];
							string += " | ";
							string += year[count];
							string += "</span></div></div><div class='portlet-body'><a href='Tab_movielistdetail?id=";
							string += id[count];
							string += "'><img src='http://218.150.181.131/poster/";
            	string += id[count];
            	string += "p.png' width='220' height='200'onmouseover=\"this.src='http://218.150.181.131/assets/img/gephi/";
            	string += id[count];
            	string += ".png'\" onmouseout=\"this.src='http://218.150.181.131/poster/";
            	string += id[count];
            	string += "p.png'\"/></a></div></div></div>";
							count++;
							string += "<div class='col-md-3 col-sm-3'><div class='portlet light' id='haha'><div class='portlet-title tabbable-line'><div class='caption'><i class='icon-share font-red-sunglo'></i><span class='caption-subject font-red-sunglo bold uppercase'>";
							string += name[count];
							string += "</span><span class='caption-helper'>";
							string += "<br> &nbsp;";
							string += director[count];
							string += " | ";
							string += year[count];
							string += "</span></div></div><div class='portlet-body'><a href='Tab_movielistdetail?id=";
							string += id[count];
							string += "'><img src='http://218.150.181.131/poster/";
            	string += id[count];
            	string += "p.png' width='220' height='200'onmouseover=\"this.src='http://218.150.181.131/assets/img/gephi/";
            	string += id[count];
            	string += ".png'\" onmouseout=\"this.src='http://218.150.181.131/poster/";
            	string += id[count];
            	string += "p.png'\"/></a></div></div></div>";
							string += "</div>";

						} else if (count == "${count}" - 3) {
							var string = "<div class='row'>";
							string += "<div class='col-md-3 col-sm-3'><div class='portlet light' id='haha'><div class='portlet-title tabbable-line'><div class='caption'><i class='icon-share font-red-sunglo'></i><span class='caption-subject font-red-sunglo bold uppercase'>";
							string += name[count];
							string += "</span><span class='caption-helper'>";
							string += "<br> &nbsp;";
							string += director[count];
							string += " | ";
							string += year[count];
							string += "</span></div></div><div class='portlet-body'><a href='Tab_movielistdetail?id=";
							string += id[count];
							string += "'><img src='http://218.150.181.131/poster/";
            	string += id[count];
            	string += "p.png' width='220' height='200'onmouseover=\"this.src='http://218.150.181.131/assets/img/gephi/";
            	string += id[count];
            	string += ".png'\" onmouseout=\"this.src='http://218.150.181.131/poster/";
            	string += id[count];
            	string += "p.png'\"/></a></div></div></div>";
							count++;
							string += "<div class='col-md-3 col-sm-3'><div class='portlet light' id='haha'><div class='portlet-title tabbable-line'><div class='caption'><i class='icon-share font-red-sunglo'></i><span class='caption-subject font-red-sunglo bold uppercase'>";
							string += name[count];
							string += "</span><span class='caption-helper'>";
							string += "<br> &nbsp;";
							string += director[count];
							string += " | ";
							string += year[count];
							string += "</span></div></div><div class='portlet-body'><a href='Tab_movielistdetail?id=";
							string += id[count];
							string += "'><img src='http://218.150.181.131/poster/";
            	string += id[count];
            	string += "p.png' width='220' height='200'onmouseover=\"this.src='http://218.150.181.131/assets/img/gephi/";
            	string += id[count];
            	string += ".png'\" onmouseout=\"this.src='http://218.150.181.131/poster/";
            	string += id[count];
            	string += "p.png'\"/></a></div></div></div>";
							count++;
							string += "<div class='col-md-3 col-sm-3'><div class='portlet light' id='haha'><div class='portlet-title tabbable-line'><div class='caption'><i class='icon-share font-red-sunglo'></i><span class='caption-subject font-red-sunglo bold uppercase'>";
							string += name[count];
							string += "</span><span class='caption-helper'>";
							string += "<br> &nbsp;";
							string += director[count];
							string += " | ";
							string += year[count];
							string += "</span></div></div><div class='portlet-body'><a href='Tab_movielistdetail?id=";
							string += id[count];
							string += "'><img src='http://218.150.181.131/poster/";
            	string += id[count];
            	string += "p.png' width='220' height='200'onmouseover=\"this.src='http://218.150.181.131/assets/img/gephi/";
            	string += id[count];
            	string += ".png'\" onmouseout=\"this.src='http://218.150.181.131/poster/";
            	string += id[count];
            	string += "p.png'\"/></a></div></div></div>";
							string += "</div>";

						} else {
							var string = "<div class='row'>";
							string += "<div class='col-md-3 col-sm-3'><div class='portlet light' id='haha'><div class='portlet-title tabbable-line'><div class='caption'><i class='icon-share font-red-sunglo'></i><span class='caption-subject font-red-sunglo bold uppercase'>";
							string += name[count];
							string += "</span><span class='caption-helper'>";
							string += "<br> &nbsp;";
							string += director[count];
							string += " | ";
							string += year[count];
							string += "</span></div></div><div class='portlet-body'><a href='Tab_movielistdetail?id=";
							string += id[count];
							string += "'><img src='http://218.150.181.131/poster/";
                	string += id[count];
                	string += "p.png' width='220' height='200'onmouseover=\"this.src='http://218.150.181.131/assets/img/gephi/";
                	string += id[count];
                	string += ".png'\" onmouseout=\"this.src='http://218.150.181.131/poster/";
                	string += id[count];
                	string += "p.png'\"/></a></div></div></div>";
							count++;
							string += "<div class='col-md-3 col-sm-3'><div class='portlet light' id='haha'><div class='portlet-title tabbable-line'><div class='caption'><i class='icon-share font-red-sunglo'></i><span class='caption-subject font-red-sunglo bold uppercase'>";
							string += name[count];
							string += "</span><span class='caption-helper'>";
							string += "<br> &nbsp;";
							string += director[count];
							string += " | ";
							string += year[count];
							string += "</span></div></div><div class='portlet-body'><a href='Tab_movielistdetail?id=";
							string += id[count];
							string += "'><img src='http://218.150.181.131/poster/";
                	string += id[count];
                	string += "p.png' width='220' height='200'onmouseover=\"this.src='http://218.150.181.131/assets/img/gephi/";
                	string += id[count];
                	string += ".png'\" onmouseout=\"this.src='http://218.150.181.131/poster/";
                	string += id[count];
                	string += "p.png'\"/></a></div></div></div>";
							count++;
							string += "<div class='col-md-3 col-sm-3'><div class='portlet light' id='haha'><div class='portlet-title tabbable-line'><div class='caption'><i class='icon-share font-red-sunglo'></i><span class='caption-subject font-red-sunglo bold uppercase'>";
							string += name[count];
							string += "</span><span class='caption-helper'>";
							string += "<br> &nbsp;";
							string += director[count];
							string += " | ";
							string += year[count];
							string += "</span></div></div><div class='portlet-body'><a href='Tab_movielistdetail?id=";
							string += id[count];
							string += "'><img src='http://218.150.181.131/poster/";
                	string += id[count];
                	string += "p.png' width='220' height='200'onmouseover=\"this.src='http://218.150.181.131/assets/img/gephi/";
                	string += id[count];
                	string += ".png'\" onmouseout=\"this.src='http://218.150.181.131/poster/";
                	string += id[count];
                	string += "p.png'\"/></a></div></div></div>";
							count++;
							string += "<div class='col-md-3 col-sm-3'><div class='portlet light' id='haha'><div class='portlet-title tabbable-line'><div class='caption'><i class='icon-share font-red-sunglo'></i><span class='caption-subject font-red-sunglo bold uppercase'>";
							string += name[count];
							string += "</span><span class='caption-helper'>";
							string += "<br> &nbsp;";
							string += director[count];
							string += " | ";
							string += year[count];
							string += "</span></div></div><div class='portlet-body'><a href='Tab_movielistdetail?id=";
							string += id[count];
							string += "'><img src='http://218.150.181.131/poster/";
                	string += id[count];
                	string += "p.png' width='220' height='200'onmouseover=\"this.src='http://218.150.181.131/assets/img/gephi/";
                	string += id[count];
                	string += ".png'\" onmouseout=\"this.src='http://218.150.181.131/poster/";
                	string += id[count];
                	string += "p.png'\"/></a></div></div></div>";
							string += "</div>";
						}

					$(string).appendTo("#haha");

				}
			}//function infinityScrollFunction()

		}
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
	<!-- BEGIN PAGE CONTAINER -->
	<div class="page-container">
		<!-- BEGIN PAGE HEAD -->

		<div class="page-head">

			<div class="homeview">
				<!-- BEGIN PAGE TITLE -->
				<div id="head-back" class="homebox">
					<br> <br> <br> <br>
					<h1 align="center">
						Movietween <small>Scripts & Graphs!!</small>
					</h1>
					<div class="container">
						<form class="search-form" action="search.do" method="POST">
							<div class="input-group">
								<input type="text" id="movieName" class="form-control"
									placeholder="Search for Movies" name="query"> <span
									class="input-group-btn">
									<button type="submit" class="icon-magnifier"></button>
								</span>
							</div>
						</form>
						<br> <br> <br> <br>
					</div>
				</div>
				<!-- END PAGE TITLE -->
			</div>
		</div>

		<!-- END HEADER SEARCH BOX -->
		<!-- BEGIN PAGE CONTENT -->

		<div class="page-content">
			<div class="container" id="haha">
				<!-- BEGIN PAGE BREADCRUMB -->
				<ul class="page-breadcrumb breadcrumb hide">
					<li><a href="index.jsp">Home</a><i class="fa fa-circle"></i></li>
					<li class="active">HOME</li>
				</ul>
				<!-- END PAGE BREADCRUMB -->
				<!-- BEGIN PAGE CONTENT INNER -->
				<div class="row">
					<div class="row margin-top-10">
						<div class="col-md-6 col-sm-12">
							<!-- BEGIN PORTLET-->
							<div class="portlet light ">
								<div class="portlet-title">
									<div class="caption caption-md">
										<span class="glyphicon glyphicon-hand-up"></span> <i
											class="icon-bar-chart theme-font hide"></i> <span
											class="caption-subject theme-font bold uppercase">MOST
											RECOMMENDATION MOVIE</span> <span class="caption-helper hide">weekly
											stats...</span>
									</div>
									<div class="actions">
										<div class="btn-group btn-group-devided" data-toggle="buttons">
											<label
												class="btn btn-transparent grey-salsa btn-circle btn-sm active">
												<input type="radio" name="options" class="toggle"
												id="option1">Today
											</label>
											<!--  <label
												class="btn btn-transparent grey-salsa btn-circle btn-sm">
												<input type="radio" name="options" class="toggle"
												id="option2">Week
											</label> <label
												class="btn btn-transparent grey-salsa btn-circle btn-sm">
												<input type="radio" name="options" class="toggle"
												id="option2">Month
											</label> -->
										</div>
									</div>
								</div>
								<div class="portlet-body">
									<div class="row list-separated">
										<div class="col-md-3 col-sm-3 col-xs-6">
											<div class="font-grey-mint font-sm">Movie Name</div>
											<div class="uppercase font-hg font-red-flamingo">
												${hit.name} <span class="font-lg font-grey-mint"></span>
											</div>
										</div>
										<div class="col-md-3 col-sm-3 col-xs-6">
											<div class="font-grey-mint font-sm">Year</div>
											<div class="uppercase font-hg theme-font">
												${hit.year} <span class="font-lg font-grey-mint"></span>
											</div>
										</div>
										<div class="col-md-3 col-sm-3 col-xs-6">
											<div class="font-grey-mint font-sm">Director</div>
											<div class="uppercase font-hg font-purple">
												${hit.director} <span class="font-lg font-grey-mint"></span>
											</div>
										</div>

									</div>
									<ul class="list-separated list-inline-xs hide">
										<li>
											<div class="font-grey-mint font-sm">Total Sales</div>
											<div class="uppercase font-hg font-red-flamingo">
												13,760 <span class="font-lg font-grey-mint">$</span>
											</div>
										</li>
										<li></li>
										<li class="border">
											<div class="font-grey-mint font-sm">Revenue</div>
											<div class="uppercase font-hg theme-font">
												4,760 <span class="font-lg font-grey-mint">$</span>
											</div>
										</li>
										<li class="divider"></li>
										<li>
											<div class="font-grey-mint font-sm">Expenses</div>
											<div class="uppercase font-hg font-purple">
												11,760 <span class="font-lg font-grey-mint">$</span>
											</div>
										</li>
										<li class="divider"></li>
										<li>
											<div class="font-grey-mint font-sm">Growth</div>
											<div class="uppercase font-hg font-blue-sharp">
												9,760 <span class="font-lg font-grey-mint">$</span>
											</div>
										</li>
									</ul>
									<div style="height: 260px">
										<!-- 자리자리자리-->
										<!-- BEGIN GRAPH -->
										<div class="sigma-parent">
											<div class="sigma-expand" id="sigma-jang"></div>
										</div>
										<script
								src="http://218.150.181.131/sigmajsGraph/jquery-2.1.1.min.js"></script>
							<script src="http://218.150.181.131/sigmajsGraph/sigma.min.js"></script>
							<script src="http://218.150.181.131/sigmajsGraph/parseGexf.js"></script>
							<script src="http://218.150.181.131/sigmajsGraph/scroll.min.js"></script>
										<script>
										var id=${hit.id};
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
										<!-- END GRAPH -->
									</div>
								</div>
							</div>
							<!-- END PORTLET-->
						</div>
						<div class="col-md-6 col-sm-12">
							<!-- BEGIN PORTLET-->
							<div class="portlet light ">
								<div class="portlet-title">
									<div class="caption caption-md">

										<span class="glyphicon glyphicon-ok"></span> <i
											class="icon-bar-chart theme-font hide"></i> <span
											class="caption-subject theme-font bold uppercase">Recently
											Updated Movie</span> <span class="caption-helper hide">weekly
											stats...</span>
									</div>

								</div>
								<div class="portlet-body">
									<div class="row number-stats margin-bottom-30">

										<div class="stat-left">
											<div class="stat-number">
												<div class="title">Total</div>
												<div class="number">${count}개</div>
											</div>
										</div>
										<div class="table-scrollable table-scrollable-borderless">
											<table class="table table-hover table-light">
												<thead>
													<tr class="font-grey-mint font-sm">
														<th>No.</th>
														<th>Movie</th>
														<th>Year</th>
														<th>Director</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="m" items="${last}">
														<tr
															onclick="document.location = 'Tab_movielistdetail.do?id=${m.id}';">
															<td id="id">${m.id}</td>
															<td class="bold">${m.name}</td>
															<td>${m.year}</td>
															<td>${m.director}</td>
														</tr>
													</c:forEach>
												</tbody>

											</table>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- END PORTLET-->
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

