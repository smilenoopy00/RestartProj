<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>3차원 사이트 만들기(translateZ 기술) 1</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<style type="text/css">
		body {
			height:5000px;
		}
		div.perspective {		/* 부모 element에다가 perspective를 준다. */
			perspective:100px;		/* 3차원적 관점 : Z축을 기준으로 해당수치만큼 떨어진 위치에서 보고있다. */ 
			position:fixed;
			top:0;
			left:0;
			width:100%;
			height:100%;
		}
		div.perspective > div.item {
			position:absolute;
			top:0;
			left:0;
			width:100%;
			height:100%;
			background-color:black;
			opacity:0.5;
			transform:translateZ(-100px);	/* 화면을 기준으로 떨어지는 거리 */
		}
		
	</style>
	<script type="text/javascript">
		jQuery(document).ready(function(){
			
		});
	</script>
</head>
<body>
	<h1>3차원 사이트만들기 예제</h1>
	<div class="perspective">
		<div class="item"></div>
		<div class="item"></div>
		<div class="item"></div>
	</div>
</body>
</html>