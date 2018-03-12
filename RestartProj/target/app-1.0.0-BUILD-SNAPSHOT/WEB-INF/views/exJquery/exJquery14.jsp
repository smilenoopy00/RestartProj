<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>jQuery Dimensions(2차원) 관련 메소드</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<!-- <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script> -->
	<script type="text/javascript">
		/*
		
			# .width()와 .height()
			
			- 패딩, 보더, 마진을 포함하지 않는 너비와 높이의 값을 세팅하거나 반환한다.
			
				
			# .innerWidth()와 .innerHeight()
			
			- 패딩을 포함한 너비와 높이의 값을 세팅하거나 반환한다.
			
			
			# .outerWidth()와 .outerHeight()
			
			- 패딩과 보더를 포함한 너비와 높이의 값을 세팅하거나 반환한다.
			
			
			# .outerWidth(true)와 .outerHeight(true)
			
			- 패딩과 보더와 마진을 포함한 너비와 높이의 값을 세팅하거나 반환한다.
			
		*/
		
		jQuery(document).ready(function(){
			// 예제 1
			$("button.bt1").click(function(){
				var txt = "";
				txt += "div의 width : " + $("#div1").width() + "<br>";
				txt += "div의 height : " + $("#div1").height() + "<br>";
				txt += "div의 inner width : " + $("#div1").innerWidth() + "<br>";
				txt += "div의 inner height : " + $("#div1").innerHeight() + "<br>";
				txt += "div의 outer width : " + $("#div1").outerWidth() + "<br>";
				txt += "div의 outer height : " + $("#div1").outerHeight() + "<br>";
				txt += "div의 outer width(true) : " + $("#div1").outerWidth(true) + "<br>";
				txt += "div의 outer height(true) : " + $("#div1").outerHeight(true);
				$("#div1").html(txt);
			});
			
			// 예제 2
			$("button.bt2").click(function(){
				var txt = "";
				txt += "Document의 width : " + $(document).width() + "<br>";
				txt += "Document의 height : " + $(document).height() + "<br>";
				txt += "Document의 inner width : " + $(document).innerWidth() + "<br>";
				txt += "Document의 inner height : " + $(document).innerHeight() + "<br>";
				txt += "Document의 outer width : " + $(document).outerWidth() + "<br>";
				txt += "Document의 outer height : " + $(document).outerHeight() + "<br>";
				txt += "Document의 outer width(true) : " + $(document).outerWidth(true) + "<br>";
				txt += "Document의 outer height(true) : " + $(document).outerHeight(true);
				$("#div1").html(txt);
			});
			
			// 예제 3
			$("button.bt3").click(function(){
				var txt = "";
				txt += "Window의 width : " + $(window).width() + "<br>";
				txt += "Window의 height : " + $(window).height() + "<br>";
				txt += "Window의 inner width : " + $(window).innerWidth() + "<br>";
				txt += "Window의 inner height : " + $(window).innerHeight() + "<br>";
				txt += "Window의 outer width : " + $(window).outerWidth() + "<br>";
				txt += "Window의 outer height : " + $(window).outerHeight() + "<br>";
				txt += "Window의 outer width(true) : " + $(window).outerWidth(true) + "<br>";
				txt += "Window의 outer height(true) : " + $(window).outerHeight(true);
				$("#div1").html(txt);
			});
			
			// 예제 4
			$("button.bt4").click(function(){
				$("#div1").width(600).height(100);
			});
		});	
	</script>
</head>
<body topmargin=100 leftmargin=100 bgcolor="#feffb8">
	<h1> Welcome to jQuery World!!!</h1>
	<h2>지금부터 연습문제 시작합니다.</h2>
	<hr>
	
	<div id="div1" style="width:300px;height:150px;padding:10px;margin:3px;border:1px solid green;background-color:'#a2fb99';">
	</div>
	
	<hr>
	<button class="bt1">버튼1. div태그의 Dimensions 정보</button>&nbsp;
	<button class="bt2">버튼2. 브라우저의 Dimensions 정보</button>&nbsp;
	<button class="bt3">버튼3. 윈도우의 Dimensions 정보</button>&nbsp;
	<button class="bt4">버튼4. 크기 조정</button>
</body>
</html>
