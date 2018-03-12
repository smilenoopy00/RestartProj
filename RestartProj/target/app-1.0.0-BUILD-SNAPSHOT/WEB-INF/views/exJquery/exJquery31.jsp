<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>jQuery 애니메이션</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<!-- <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script> -->
	<script type="text/javascript">
		
		jQuery(document).ready(function(){
			// 예제 1 - 기본 동작 애니메이션
			$("button.bt1").click(function(){
				$("div.ex1").animate({left:"250px"});
			});
			
			// 예제 2 - 여러가지 속성을 이용한 애니메이션
			$("button.bt2").click(function(){
				$("div.ex1").animate({
					left:"250px",
					opacity:"0.5",	// 투명도
					height:"150px",
					width:"150px"
				});
			});
			
			// 예제 3 - 상대값을 이용한 애니메이션(+=, -=)
			$("button.bt3").click(function(){
				$("div.ex1").animate({
					left:"250px",
					height:"+=150px",
					width:"+=150px"
				});
			});
			
			// 예제 4 - 미리 정의된 값을 이용한 애니메이션	????????
			$("button.bt4").click(function(){
				$("div.ex1").animate({
					height:"toggle"
				});
			});
			
			// 예제 5 - 큐 기능을 이용한 애니메이션 : 서로다른 애니메이션을 수행하려는 경우 사용
			$("button.bt5").click(function(){
				var div = $("div.ex1");
				div.animate({height:"300px",opacity:"0.4"}, "slow").animate({width:"300px",opacity:"0.8"}, "slow").animate({height:"100px",opacity:"0.2"}, "slow").animate({height:"100px",opacity:"0.9"}, "slow");
			});
			
			// 예제 6 - 텍스트를 가진 애니메이션
			$("button.bt6").click(function(){
				var div = $("div.ex1");
				div.animate({left:"100px"}, "slow").animate({fontSize:"3em"}, "slow");
			});
		});	
	</script>
</head>
<body bgcolor="#feffb8">
	<h1> Welcome to jQuery World!!!</h1>
	<h2>지금부터 연습문제 시작합니다.</h2>
	
	<hr>
	<button class="bt1">기본 애니메이션</button>
	<button class="bt2">여러가지 애니메이션</button>
	<button class="bt3">상대값을 이용한 애니메이션</button>
	<button class="bt4">미리 정의된 값을 이용한 애니메이션</button><p>
	<button class="bt5">큐 기능을 이용한 애니메이션</button>
	<button class="bt6">텍스트를 가진 애니메이션</button>
	<hr>
	<div class="ex1" style="background-color:#8df8f7;height:100px;width:100px;position:absolute;">Hello</div><p>
	
	
</body>
</html>
