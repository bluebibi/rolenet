
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="row mix-grid" id="${idx}">
<c:forEach var="m" items="${list2_jangwon}" varStatus="status">
		<div id="${m.id}" class="col-md-3 col-sm-4 mix insertimg infinite-item" style="display:block !important; opacity:1 !important;">
			<a href="Tab_movielistdetail?id=${m.id}">
			<img class='img-responsive' src='http://218.150.181.131/poster/${m.id}p.png' alt=''></a>
			<!--
			<div class="mix-details">
				<h4>Cascusamus et iusto odio</h4>
				<a class="mix-link"> <i class="fa fa-link"></i>
				</a>
				<a class='mix-preview fancybox-button' href='http://218.150.181.131/poster/${m.id}p.png' title='Project Name' data-rel='fancybox-button'>
					<i class='fa fa-search'></i>
				</a>
			</div>
			-->
		</div>
</c:forEach>
</div>
