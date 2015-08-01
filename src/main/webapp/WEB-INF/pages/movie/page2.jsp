<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>

		<script>
			var infinite = new Waypoint.Infinite({
				element : $('.infinite-container')[0]
			});
		</script>
		<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
		<script
			src="http://218.150.181.131/assets/libr/jquery.waypoints.min.js"></script>
		<script src="http://218.150.181.131/assets/libr/infinite.min.js"></script>
		<script src="http://218.150.181.131/assets/libr/scripts.js"></script>
		<script src="http://218.150.181.131/assets/libr/sticky.min.js"></script>
		<script src="http://218.150.181.131/assets/libr/inview.min.js"></script>
		
</head>

<body>
	<%@include file="../includes/headerMenu.jsp"%>
 <article>
	<div class="infinite-container">
		<c:forEach var="m" items="${list2_jangwon}">
			<div class="infinite-item">${m.id}</div>
		</c:forEach>
	</div>
	<a class="infinite-more-link" href="/pages?id_1=${id_2}"></a>
    </article>
</body>
</html>