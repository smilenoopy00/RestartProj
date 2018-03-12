<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>jQuery 기초 예제 1 - setTimeout, setInterval (타이머)</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<style type="text/css">
		/* 예제 1 */
		div {
			font-size:50px;
		}
		
	</style>
	<script type="text/javascript">
		jQuery(document).ready(function(){
			
			// 1. setInterval()을 이용한 타이머
			
			//var status = "움직임";
			
			var Timer = function(){
				/*
				if(status == "안움직임"){
					return false;
				}
				*/
				var time = $("div.a").text();
				time = parseInt(time);
				
				$("div.a").text(++time);
			};
			
			var intervalId = window.setInterval(Timer, 1000);	// 초 당 타이머
			
			$("div.a").dblclick(function(){
				// status = "안움직임";		// status 값을 둬서 멈출수도있고
				window.clearInterval(intervalId);	// 해당 id의 interval이 멈춘다.
			});
			
			
			// 2. setInterval()을 이용한 타이머
			
			var Timer2 = function(){
				var time = $("div.b").text();
				time = parseInt(time);
				
				$("div.b").text(++time);
				
				Additional_timer();				// 간접적인 재귀를 통해 오류가 안나도록함.
			};
			
			var Additional_timer = function(){
				window.setTimeout(Timer2, 1000);
			};
			
			Additional_timer();
		});
	</script>
</head>
<body>
	<div class="a">0</div>
	<div class="b">0</div>
</body>
</html>