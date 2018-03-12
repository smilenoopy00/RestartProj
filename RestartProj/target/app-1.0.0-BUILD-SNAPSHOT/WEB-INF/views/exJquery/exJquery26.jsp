<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>jQuery 이벤트 객체(속성) - event object 2</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<!-- <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script> -->
	<script type="text/javascript">
		/*
		
			# event.pageX
			
			- document의 왼쪽 가장자리를 기준으로 마우스 포인터 위치를 반환한다.
			
			
			# event.pageY
			
			- document의 위쪽 가장자리를 기준으로 마우스 포인터 위치를 반환한다.
			
			
			# event.relatedTarget
			
			- 마우스가 어떤 element에 들어가고 나오는지 해당정보를 가지고있는 객체를 반환한다.


			# event.result
			
			- 현재 이벤트가 마지막으로 발생했을 때 반환한 정보를 기억했다가 반환한다.
			
			
			# event.target
			
			- 어떤 element가 트리거 되었는지 해당정보를 가지고있는 객체를 반환한다.
			- 이벤트 버블링에 의해 처리되고 있는지 확인하기 위해 event.target 값을 this에 비교하는것이 유용하다.
			
			
			# event.type
			
			- 어떤 이벤트가 발생하였는지 이벤트명을 반환한다
			
		*/
		
		jQuery(document).ready(function(){
			// 예제 1
			$(document).mousemove(function(event){
				$("span.ex1").text("X : " + event.pageX + ", Y : " + event.pageY);
			});
			
			// 예제 2
			$("div.ex2, p.ex2").mouseenter(function(event){
				$("div#msg").html("Related target : " + event.relatedTarget.nodeName);
			});
			
			// 예제 3
			$("button").click(function(){
				return "Hello!!!";
			});
			$("button").click(function(event){
				$("p.ex3").append(event.result);
			});
			
			// 예제 4
			$("p, button, h1").click(function(event){
				$("div.ex4").html("트리거된 element : " + event.target.nodeName);
			});
			
			// 예제 5
			$("div.ex2").on("click dblclick mouseover mouseout",function(event){
				$("p.ex5").html(event.type);
			});
		});	
	</script>
</head>
<body bgcolor="#feffb8">
	<h1> Welcome to jQuery World!!!</h1>
	<h2>지금부터 연습문제 시작합니다.</h2>
	
	<hr>
	
	<p>마우스 포인터 위치 : <span class="ex1"></span></p>
	
	<div class="ex2" style="height:150px;border:1px solid black;">
		여기는 div 태그 안쪽입니다.
		<p class="ex2">여기는 div태그 안쪽의 p태그입니다.</p>
		
		<div id="msg"></div>
	</div><p>
	
	<p class="ex3">직전에 반환된 값 : </p>
	<button>click이벤트 발생</button>
	
	<div class="ex4">트리거된 element : </div>
	
	<p class="ex5">Event : </p>
</body>
</html>
