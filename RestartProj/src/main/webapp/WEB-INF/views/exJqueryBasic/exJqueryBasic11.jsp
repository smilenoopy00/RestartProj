<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>jQuery 기초 예제 4 - 게임 기초개념 (게임엔진) </title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<style type="text/css">
		section {
			border:10px solid blue;
			width:800px;
			height:500px;
			position:relative;
		}
		div {
			width:100px;
			height:100px;
			background-color:red;
			position:absolute;
		}
		
	</style>
	<script type="text/javascript">
		jQuery(document).ready(function(){
			
			var x = 0;
			var y = 0;
			
			var x축방향 = "오른쪽";
			var y축방향 = "아래쪽";
			
			var map = {
					width:800,
					height:500
			};
			var 사각형 = {
					width:100,
					height:100
			};
			
			var 사각형_움직이다 = function(){
				if(x축방향 == "오른쪽"){
					x++;
				}else{
					x--;
				}
				if(y축방향 == "아래쪽"){
					y++;
				}else{
					y--;
				}
				
				if(x > map.width - 사각형.width){
					x축방향 = "왼쪽";
				}
				if(x <= 0){
					x축방향 = "오른쪽";
				}
				
				if(y > map.height - 사각형.height){
					y축방향 = "위쪽";
				}
				if(y <= 0){
					y축방향 = "아래쪽";
				}
				
				$("div").css("left", x);
				$("div").css("top", y);
			};
			setInterval(사각형_움직이다, 10);
		});
	</script>
</head>
<body>
	<section>
		<div></div>
	</section>
</body>
</html>