<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>jQuery 이벤트 - keyboard event</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<!-- <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script> -->
	<script type="text/javascript">
		/*
			
			# .keydown()
			
			- 키가 눌리는 도중에 발생한다.
			- Trigger 시키는 경우 : $(selector).keydown()
			  Trigger 시 실행될 함수 추가하는 경우 : $(selector).keydown(function)
			
			# .keypress()
			
			- 키가 완전히 눌려진 후 발생한다.
			- .keydown() 이벤트와 꼭 함께 발생하므로 중복코딩 없도록 주의하여 코딩한다.
			- alt, ctrl, shift, esc 키에는 동작하지 않는다.
			- Trigger 시키는 경우 : $(selector).keydown()
			  Trigger 시 실행될 함수 추가하는 경우 : $(selector).keydown(function)
			  
					
			# .keyup()
			
			- 키가 눌렸다가 떼어질 때 발생한다.
			- event.which 속성을 이용해 어떤 키가 눌러졌었는지 확인할 수 있다.
			- Trigger 시키는 경우 : $(selector).keydown()
			  Trigger 시 실행될 함수 추가하는 경우 : $(selector).keydown(function)
			
		*/
		
		jQuery(document).ready(function(){
			// 예제 1
			$("input.ex1").keydown(function(){
				$("input.ex1").css("background-color", "red");
			});
			
			// 예제 2
			$("input.ex1").keypress(function(){
				$("span").text(i+=1);	// 이건 왜 안먹을까?????
			});
			
			// 예제 3
			$("input.ex1").keyup(function(){
				$("input.ex1").css("background-color", "yellow");
			});
		});	
	</script>
</head>
<body bgcolor="#feffb8">
	<h1> Welcome to jQuery World!!!</h1>
	<h2>지금부터 연습문제 시작합니다.</h2>
	
	<hr>
	<input type="text" class="ex1"/>&nbsp;키보드를 누르는 순간 색이 달라집니다.<p>
	Keypress : <span>0</span> times<p>
</body>
</html>
