<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>3차원 사이트 만들기(translateZ 기술) 4 - 깊숙히 들어가는 느낌</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<style type="text/css">
		body {
			height:5000px;
		}
		div.perspective {
			position:fixed;
			top:0;
			left:0;
			width:100%;
			height:100%;
			perspective:100px;
		}
		div.perspective div.item {
			position:absolute;
			top:0;
			left:0;
			width:100%;
			height:100%;
			background-color:black;
			opacity:0.5;
			font-size:100px;
			color:red;
		}
	</style>
	<script type="text/javascript">
		jQuery(document).ready(function(){
			
			$(window).scroll(function(){
				var $this = $(this);	// 이 함수에서의 this는 window
				var scrollTop = $this.scrollTop();
				
				var $item = $("div.perspective > div.item");
				
				var 사이값 = 500;
				
				$item.each(function(index, node){
					var z = -(index * 사이값);
					z += scrollTop;
					z = parseInt(z);
				
					$(node).css("transform", "translateZ(" + z + "px)");
				});
			});
			
			$(window).scroll();	// 제일처음 한번도 실행시키도록
		});
	</script>
</head>
<body>
	<div class="perspective">
		<div class="item">1</div>
		<div class="item">2</div>
		<div class="item">3</div>
		<div class="item">4</div>
		<div class="item">5</div>
	</div>
</body>
</html>