<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>vue.js 2.0 기초</title>
	<!-- <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.1.10/vue.min.js"></script> -->
	<!-- <script type="text/javascript" src="/js/vue.js"></script> -->
	<link href="/js/vue.js" type="text/javascript">
	<!-- <script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script> -->
	<style type="text/css">
		
	</style>
	<script type="text/javascript">
		var app = new Vue({
			el: "#app",		// 현재 vue가 관리하고 있는 element
			data: {
				제목:"안녕하세요."
			}
			
		});
	</script>
</head>
<body>
	<div id="app">
		{{제목}}
	</div>
</body>
</html>