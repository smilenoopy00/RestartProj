<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>jQuery CSS 관련 메소드</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<!-- <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script> -->
	<script type="text/javascript">
		/*
		
			# .addClass()
			
			- 선택된 element에 클래스 이름을 추가한다.
			- 기존에 존재하던 클래스는 그대로 있다.
			- 복수의 클래스명을 추가할때는 공백으로 구분한다.
			- 예) $(selector).addClass("클래스명1 클래스명2 ...");
				  $(selector).addClass("클래스명", "function(index, oldclass)");
			
				
			# .css()
			
			- 선택된 element의 스타일 속성 값을 리턴하거나 세팅한다.
			- 값을 리턴할 경우 : 첫번째 일치하는 요소의 속성 값을 반환한다.
			- 값을 세팅할 경우 : 모든 일치하는 요소의 속성 값을 세팅한다.
			
			
			# .hasClass()
			- 선택된 element가 해당 class를 가지고 있는지 체크한다.
			- 가지고 있으면 true, 아니면 false를 반환
			- 예) $(selector).hasClass(클래스명);
			
			
			# .removeClass()
			- 선택된 element의 class를 삭제한다.
			- 특정 클래스명을 명시하지않으면 선택된 element의 모든 클래스 이름을 제거한다.
			- 예) $(selector).removeClass(클래스명);
				  $(selector).removeClass(클래스명, function(index, currentclass));
			

			# .toggleClass()
			- 선택한 element에서 class명을 검사하여 이미 있으면 지우고, 없으면 추가한다.
			
				
		*/
		
		jQuery(document).ready(function(){
			// 예제 1
			$("button.bt1").click(function(){
				$("p:first").addClass("special");
			});
			
			// 예제 2
			$("button.bt2").click(function(){
				$("p").css("color", "red");
			});
			
			// 예제 3
			$("button.bt3").click(function(){
				alert($("p").hasClass("special"));	// 제일 처음 만나는 p태그에서 검사한다.
			});
			
			// 예제 4
			$("button.bt4").click(function(){
				$("p").removeClass("normal");
			});
			
			// 예제 5
			$("button.bt5").click(function(){
				$("p").toggleClass("main");
			});
			
		});	
	</script>
	<style type="text/css">
		.special{
			font-size:150%;
			color:red;
		}
		.normal{
			font-size:120%;
			color:blue;
		}
		.main{
			font-size=120%;
			color:green;
			font-weight:bold;
		}
	</style>
</head>
<body bgcolor="#feffb8">
	<h1> Welcome to jQuery World!!!</h1>
	<h2>지금부터 연습문제 시작합니다.</h2>
	<hr>
	
	<p class="normal">처음 나오는 p태그</p>
	<p class="main">두번째 나오는 p태그</p>
	<hr>
	<button class="bt1">버튼1.addClass("special")</button>&nbsp;
	<button class="bt2">버튼2.css() : 모든 p태그의 색 변경</button><br>
	<button class="bt3">버튼3.hasClass("special")</button>&nbsp;버튼1을 누른후 다시 눌러보면 생성되어있다<br>
	<button class="bt4">버튼4.removeClass("normal")</button>&nbsp;
	<button class="bt5">버튼5.toggleClass("main")</button>
</body>
</html>
