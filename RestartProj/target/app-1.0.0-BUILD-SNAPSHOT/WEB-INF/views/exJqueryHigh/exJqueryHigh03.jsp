<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>스크롤 예제</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<style type="text/css">
		body {
			height:5000px;
		}
		div {
			position:fixed;		/* 화면에 스티커를 붙인듯한 효과. 그외 성질은 absolute와 동일하다. */
			top:0;
			left:0;
			margin:0;
			padding:0;
			width:100%;
			height:100%;
			background-color:red;
			opacity:0.5;
		}
		div section {
			position:absolute;	/* 유령의 집은 부모중에 position 값을 가진 요소이다. */
			top:0;
			left:0;
			width:100%;
			height:100%;
			font-size:100px;
		}
	</style>
	<script type="text/javascript">
		jQuery(document).ready(function(){
			var $window = $(window);
			
			/*
			setInterval(function(){
				var scrollTop = $window.scrollTop();	// scrollTop() : 현재 스크롤 위치의 윗부분
				$("div > section").empty().append(scrollTop);			
			}, 1000);
			*/
			
			$window.scroll(function(){		// 스크롤할때마다 실행
				var scrollTop = $window.scrollTop();
				$("div > section").empty().append(scrollTop);	
			});
		});
	</script>
</head>
<body>
	<h1>3차원 사이트만들기 예제</h1>
	<div class="scroll-top">
		<section>0</section>
	</div>
</body>
</html>