<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<style type="text/css">
		#container {
			max-width: 800px;
			height: 800px;
			margin: auto;
		}
	</style>
</head>
<body>
<div id="container"></div>
<script src="/js/sigmajs/sigma.min.js"></script>
<script src="/js/sigmajs/plugins/sigma.parsers.json.min.js"></script>
<script>
	sigma.parsers.json('/charactors/node.json', {
		container: 'container',
		settings: {
			defaultNodeColor: '#ec5148'
		}
	});
</script>

</body>
</html>