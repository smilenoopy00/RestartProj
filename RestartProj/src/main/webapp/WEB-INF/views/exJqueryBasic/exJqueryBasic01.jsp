<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>jQuery 없이 DOM 작업하기</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<style type="text/css">
		/*
		section > div {
			color:red;
			font-size:50px;
		}
		*/
	</style>
</head>
<body>
	<section>
		<div>1</div>
		<div>2</div>
		<div>3</div>
		<div>4</div>
	</section>
</body>
	<!-- js 기본 DOM 작업할때는 왜 밑에서만 인식할까????? -->
	<script type="text/javascript">
		// 위 css 작업을 js로 하기
		/*
		var divElements = window.document.getElementsByTagName("div");
	
		console.log(divElements.length);
		for(var i = 0; i < divElements.length; i++){
			divElements[i].style.color = "red";
		}
		*/
		
		jQuery(document).ready(function(){
			$("div").css("color","red").css("fontSize", "50px");	// css함수 여러값 세팅은 어떻게 ?????
		});
	
	</script>
</html>