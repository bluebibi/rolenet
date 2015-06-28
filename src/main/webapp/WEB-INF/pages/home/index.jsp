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
	<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script>

$(function(){
	
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

    var count=0;
	var string="<div class='row'>";
	string +="<div class='col-md-3 col-sm-3'><div class='portlet light' id='haha'><div class='portlet-title tabbable-line'><div class='caption'><i class='icon-share font-red-sunglo'></i><span class='caption-subject font-red-sunglo bold uppercase'>";
	string += name[count];
	string += "</span><span class='caption-helper'>";
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
	string +="<div class='col-md-3 col-sm-3'><div class='portlet light' id='haha'><div class='portlet-title tabbable-line'><div class='caption'><i class='icon-share font-red-sunglo'></i><span class='caption-subject font-red-sunglo bold uppercase'>";
	string += name[count];
	string += "</span><span class='caption-helper'>";
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
	string +="<div class='col-md-3 col-sm-3'><div class='portlet light' id='haha'><div class='portlet-title tabbable-line'><div class='caption'><i class='icon-share font-red-sunglo'></i><span class='caption-subject font-red-sunglo bold uppercase'>";
	string += name[count];
	string += "</span><span class='caption-helper'>";
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
	string +="<div class='col-md-3 col-sm-3'><div class='portlet light' id='haha'><div class='portlet-title tabbable-line'><div class='caption'><i class='icon-share font-red-sunglo'></i><span class='caption-subject font-red-sunglo bold uppercase'>";
	string += name[count];
	string += "</span><span class='caption-helper'>";
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
	string+="</div>";
	//$(window).scroll(function() { });
    

    $(string).appendTo("#haha");
	$(window).bind("scroll",infinityScrollFunction);

    function infinityScrollFunction() {
    	
		if(count < "${count}"){
        //현재문서의 높이를 구함.
        var documentHeight  = $(document).height();
        console.log("documentHeight : " + documentHeight);
        
        //scrollTop() 메서드는 선택된 요소의 세로 스크롤 위치를 설정하거나 반환    
        //스크롤바가 맨 위쪽에 있을때 , 위치는 0
        console.log("window의 scrollTop() : " + $(window).scrollTop()); 
        //height() 메서드는 브라우저 창의 높이를 설정하거나 반환
        console.log("window의 height() : " + $(window).height());
        
        //세로 스크롤위치 max값과 창의 높이를 더하면 현재문서의 높이를 구할수있음.
        //세로 스크롤위치 값이 max이면 문서의 끝에 도달했다는 의미
        var scrollHeight = $(window).scrollTop()+$(window).height();         
        console.log("scrollHeight : " + scrollHeight);
            
        if(scrollHeight == documentHeight) { //문서의 맨끝에 도달했을때 내용 추가 
        	count++;
        	if(count < "${count}")
        	if(count == "${count}" -4){
        	var string="<div class='row'>";
        	string +="<div class='col-md-3 col-sm-3'><div class='portlet light' id='haha'><div class='portlet-title tabbable-line'><div class='caption'><i class='icon-share font-red-sunglo'></i><span class='caption-subject font-red-sunglo bold uppercase'>";
        	string += name[count];
        	string += "</span><span class='caption-helper'>";
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
        	string +="<div class='col-md-3 col-sm-3'><div class='portlet light' id='haha'><div class='portlet-title tabbable-line'><div class='caption'><i class='icon-share font-red-sunglo'></i><span class='caption-subject font-red-sunglo bold uppercase'>";
        	string += name[count];
        	string += "</span><span class='caption-helper'>";
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
        	string +="<div class='col-md-3 col-sm-3'><div class='portlet light' id='haha'><div class='portlet-title tabbable-line'><div class='caption'><i class='icon-share font-red-sunglo'></i><span class='caption-subject font-red-sunglo bold uppercase'>";
        	string += name[count];
        	string += "</span><span class='caption-helper'>";
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
        	string +="<div class='col-md-3 col-sm-3'><div class='portlet light' id='haha'><div class='portlet-title tabbable-line'><div class='caption'><i class='icon-share font-red-sunglo'></i><span class='caption-subject font-red-sunglo bold uppercase'>";
        	string += name[count];
        	string += "</span><span class='caption-helper'>";
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
        	string+="</div>";
        	}else if(count == "${count}" -1){
        		var string="<div class='row'>";
            	string +="<div class='col-md-3 col-sm-3'><div class='portlet light' id='haha'><div class='portlet-title tabbable-line'><div class='caption'><i class='icon-share font-red-sunglo'></i><span class='caption-subject font-red-sunglo bold uppercase'>";
            	string += name[count];
            	string += "</span><span class='caption-helper'>";
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
            	string+="</div>";
        	} else if(count == "${count}" -2){
        		var string="<div class='row'>";
            	string +="<div class='col-md-3 col-sm-3'><div class='portlet light' id='haha'><div class='portlet-title tabbable-line'><div class='caption'><i class='icon-share font-red-sunglo'></i><span class='caption-subject font-red-sunglo bold uppercase'>";
            	string += name[count];
            	string += "</span><span class='caption-helper'>";
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
            	string +="<div class='col-md-3 col-sm-3'><div class='portlet light' id='haha'><div class='portlet-title tabbable-line'><div class='caption'><i class='icon-share font-red-sunglo'></i><span class='caption-subject font-red-sunglo bold uppercase'>";
            	string += name[count];
            	string += "</span><span class='caption-helper'>";
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
            	string+="</div>";
        		
        	} else if(count == "${count}" -3){
        		var string="<div class='row'>";
            	string +="<div class='col-md-3 col-sm-3'><div class='portlet light' id='haha'><div class='portlet-title tabbable-line'><div class='caption'><i class='icon-share font-red-sunglo'></i><span class='caption-subject font-red-sunglo bold uppercase'>";
            	string += name[count];
            	string += "</span><span class='caption-helper'>";
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
            	string +="<div class='col-md-3 col-sm-3'><div class='portlet light' id='haha'><div class='portlet-title tabbable-line'><div class='caption'><i class='icon-share font-red-sunglo'></i><span class='caption-subject font-red-sunglo bold uppercase'>";
            	string += name[count];
            	string += "</span><span class='caption-helper'>";
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
            	string +="<div class='col-md-3 col-sm-3'><div class='portlet light' id='haha'><div class='portlet-title tabbable-line'><div class='caption'><i class='icon-share font-red-sunglo'></i><span class='caption-subject font-red-sunglo bold uppercase'>";
            	string += name[count];
            	string += "</span><span class='caption-helper'>";
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
            	string+="</div>";
        		
        		} else{
        			var string="<div class='row'>";
                	string +="<div class='col-md-3 col-sm-3'><div class='portlet light' id='haha'><div class='portlet-title tabbable-line'><div class='caption'><i class='icon-share font-red-sunglo'></i><span class='caption-subject font-red-sunglo bold uppercase'>";
                	string += name[count];
                	string += "</span><span class='caption-helper'>";
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
                	string +="<div class='col-md-3 col-sm-3'><div class='portlet light' id='haha'><div class='portlet-title tabbable-line'><div class='caption'><i class='icon-share font-red-sunglo'></i><span class='caption-subject font-red-sunglo bold uppercase'>";
                	string += name[count];
                	string += "</span><span class='caption-helper'>";
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
                	string +="<div class='col-md-3 col-sm-3'><div class='portlet light' id='haha'><div class='portlet-title tabbable-line'><div class='caption'><i class='icon-share font-red-sunglo'></i><span class='caption-subject font-red-sunglo bold uppercase'>";
                	string += name[count];
                	string += "</span><span class='caption-helper'>";
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
                	string +="<div class='col-md-3 col-sm-3'><div class='portlet light' id='haha'><div class='portlet-title tabbable-line'><div class='caption'><i class='icon-share font-red-sunglo'></i><span class='caption-subject font-red-sunglo bold uppercase'>";
                	string += name[count];
                	string += "</span><span class='caption-helper'>";
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
                	string+="</div>";
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

<body >
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
							<input type="text" id="movieName" class="form-control" placeholder="Search for Movies" name="query">
							<span class="input-group-btn">
							<button type="submit"  class="icon-magnifier"></button>
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
								<span class="glyphicon glyphicon-hand-up"></span>
								<i class="icon-bar-chart theme-font hide"></i> <span
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
									</label><!--  <label
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
								<div id="container_jang"></div>
								<script src="/js/sigmajs/jquery-2.1.1.min.js"></script>
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
									var id = ${hit.id};
									var preurl = 'http://218.150.181.131/assets/gexf/'
									var last = '.gexf';
									var url = preurl + id + last;
									sigma.classes.graph
											.addMethod(
											'neighbors',
											function(nodeId) {
												var k, neighbors = {}, index = this.allNeighborsIndex[nodeId]
														|| {};
												for (k in index)
													neighbors[k] = this.nodesIndex[k];
												return neighbors;

											});

									sigma.parsers
											.gexf(
											url,
											{
												container : 'container_jang'
											},
											function(s) {
												s.graph
														.nodes()
														.forEach(
														function(
																n) {
															n.originalColor = n.color;
														});
												s.graph
														.edges()
														.forEach(
														function(
																e) {
															e.originalColor = e.color;
														});
												s
														.bind(
														'clickNode',
														function(
																e) {
															var nodeId = e.data.node.id, toKeep = s.graph
																	.neighbors(nodeId);
															toKeep[nodeId] = e.data.node;

															s.graph
																	.nodes()
																	.forEach(
																	function(
																			n) {
																		if (toKeep[n.id])
																			n.color = n.originalColor;
																		else
																			n.color = '#eee';
																	});
															s.graph
																	.edges()
																	.forEach(
																	function(
																			e) {
																		if (toKeep[e.source]
																				&& toKeep[e.target])
																			e.color = e.originalColor;
																		else
																			e.color = '#eee';
																	});
															// Since the data has been modified, we need to
															// call the refresh method to make the colors
															// update effective.
															s
																	.refresh();
														});

												// When the stage is clicked, we just color each
												// node and edge with its original color.
												s
														.bind(
														'clickStage',
														function(
																e) {
															s.graph
																	.nodes()
																	.forEach(
																	function(
																			n) {
																		n.color = n.originalColor;
																	});

															s.graph
																	.edges()
																	.forEach(
																	function(
																			e) {
																		e.color = e.originalColor;
																	});

															// Same as in the previous event:
															s
																	.refresh();
														});
											});
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

								<span class="glyphicon glyphicon-ok"></span>
								<i class="icon-bar-chart theme-font hide"></i> <span
									class="caption-subject theme-font bold uppercase">Recently Updated
											Movie</span> <span class="caption-helper hide">weekly
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
												<tr onclick="document.location = 'Tab_movielistdetail.do?id=${m.id}';">
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
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>

<script src="http://218.150.181.131/assets/global/plugins/respond.min.js"></script>
<script src="http://218.150.181.131/assets/global/plugins/excanvas.min.js"></script>
<![endif]-->
<script src="http://218.150.181.131/assets/global/plugins/jquery.min.js"
		type="text/javascript"></script>
<script src="http://218.150.181.131/assets/global/plugins/jquery-migrate.min.js"
		type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui-1.10.3.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script
		src="http://218.150.181.131/assets/global/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js"
		type="text/javascript"></script>
<script
		src="http://218.150.181.131/assets/global/plugins/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>
<script
		src="http://218.150.181.131/assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"
		type="text/javascript"></script>
<script src="http://218.150.181.131/assets/global/plugins/jquery.blockui.min.js"
		type="text/javascript"></script>
<script src="http://218.150.181.131/assets/global/plugins/jquery.cokie.min.js"
		type="text/javascript"></script>
<script
		src="http://218.150.181.131/assets/global/plugins/uniform/jquery.uniform.min.js"
		type="text/javascript"></script>
<!-- END CORE PLUGINS -->
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



<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>

