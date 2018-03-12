<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>이미지 슬라이더만들기 1</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<style type="text/css">
		div.slides {
			margin:0 auto;
			width:400px;
			height:200px;
			background-color:red;
			position:relative;
		}
		div.slides > div {
			position:absolute;
			top:0;
			left:0;
			width:100%;
			height:100%;
			opacity:0;
		}
		div.slides > div.active {
			opacity:1;
		}
	</style>
	<script type="text/javascript">
		jQuery(document).ready(function(){
			$("button").click(function(){
				var $clickedBt = $(this);
				var $active = $("div.active");
				var 왼쪽버튼인가요 = $clickedBt.hasClass("left");
				
				if(왼쪽버튼인가요){
					var $next = $active.prev();
				}
				else {
					var $next = $active.next();
				}
				
				// 비순환
				/*
				if($next.length == 0){
					$next = $active;					
				}
				*/
				// 순환
				if($next.length == 0){
					if(왼쪽버튼인가요){
						$next = $active.parent().children().last();
					}
					else{
						$next = $active.parent().children().first();
					}
				}
				
				$active.removeClass("active");
				$next.addClass("active");
			});
			
		});
	</script>
</head>
<body>
	<button class="left">좌</button>
	<button class="right">우</button>
	
	<div class="slides">
		<div style="background-color:blue;" class="active"></div>
		<div style="background-color:green;"></div>
		<div style="background-color:yellow;"></div>
	</div>
</body>
</html>