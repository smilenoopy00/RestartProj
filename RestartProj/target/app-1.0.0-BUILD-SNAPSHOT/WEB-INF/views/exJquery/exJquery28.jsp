<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>Effect - Fading, Sliding</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<!-- <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script> -->
	<script type="text/javascript">
		/*
		
			# Fading
			
			1 .fadeIn()
			
			- 선택된 element의 투명도 값을 hidden에서 visible로 점차 변화시킨다.
			- hidden 상태에서는 레이아웃에 아무런 영향을 미치지 않는 상태이다.
				예) $(selector).fadeIn(속도);
			
			
			2 .fadeOut()
			
			- 선택된 element의 투명도 값을 visible에서 hidden으로 점차 변화시킨다.
				예) $(selector).fadeOut(속도);
			
			
			3 .fadeTo()
			
			- 선택된 element의 투명도 값을 지정된 값으로 점차 변화시킨다.
				예) $(selector).fadeTo(속도, 투명도);
				
			
			3 .fadeToggle()
			
			- 선택된 element의 투명도 값을 fadeIn()과 fadeOut() 사이를 토글시킨다.
				예) $(selector).fadeToggle(속도);
			
			
				
			# Sliding
			
			1 .slideDown()
			
			- 선택된 element가 아래로 펴지도록 한다.
			- hidden 된 element에 대해 작동한다.
				예) $(selector).slideDown(속도);
			
			
			2 .slideUp()
			
			- 선택된 element가 위로 접히도록 한다.
				예) $(selector).slideUp(속도);
			
			
			3 .slideToggle()
			
			- 선택된 element의 slideDown()과 slideUp() 사이를 토글시킨다.
			
			
		*/
		
		jQuery(document).ready(function(){
			// 예제 1
			$("button.bt1").click(function(){
				$("p.ex1").fadeOut();
			});
			$("button.bt2").click(function(){
				$("p.ex1").fadeIn();
			});
			
			// 예제 2
			$("button.bt3").click(function(){
				$("p.ex1").fadeTo(1000, 0.4);
			});
			
			// 예제 3
			$("button.bt3").click(function(){
				$("p.ex1").fadeTo(1000, 0.4);
			});
			
			// 예제 4
			$("button.bt4").click(function(){
				$("p.ex1").fadeToggle("slow");
			});
			
			// 예제 5
			$("button.bt5").click(function(){
				$("p.ex1").slideUp();
			});
			$("button.bt6").click(function(){
				$("p.ex1").slideDown("slow");
			});
			$("button.bt7").click(function(){
				$("p.ex1").slideToggle(900);
			});
		});	
	</script>
</head>
<body bgcolor="#feffb8">
	<h1> Welcome to jQuery World!!!</h1>
	<h2>지금부터 연습문제 시작합니다.</h2>
	
	<hr>
	<p class="ex1">p태그입니다.</p>
	
	<hr>
	<button class="bt1">Fade out</button>
	<button class="bt2">Fade in</button>
	<button class="bt3">Fade to</button>
	<button class="bt4">Fade toggle</button><p>
	<button class="bt5">Slide up</button>
	<button class="bt6">Slide down</button>
	<button class="bt7">Slide toggle</button><p>
	
</body>
</html>
