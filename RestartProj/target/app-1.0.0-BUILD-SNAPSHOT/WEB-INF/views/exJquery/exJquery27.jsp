<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>Effect - Basic, Custom</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<!-- <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script> -->
	<script type="text/javascript">
		/*
		
			# Basics
			
			1 .hide()
			
			- 선택된 element를 숨기는 기능을 한다.
			- 숨겨진 element는 레이아웃 등에 영향을 미치지 않는다.
			- css의 display:none;과 유사하다.
			- 예) $(selector).hide(속도, easing, 콜백함수);
			
			
			2 .show()
			
			- 선택된 element를 보이게하는 기능을 한다.
			- .hidden() 적용된 것과 css의 display:none;인 요소에 적용된다.(css의 visibility:hidden은 아님)
			- 예) $(selector).show(속도, easing, 콜백함수);
			
			
			3 .toggle()
			
			- 선택된 element에 대해 .hide()와 .show() 사이를 토글한다.
			
			
			
			# Custom
			
			1 .animate()
			
			- 선택된 element가 css 속성 세트로 만들어진 사용자 지정 애니메이션을 수행한다.
			- css 속성 값중 숫자로 표현된 것만 애니메이션 적용이 가능하고 문자열은 불가능하다.
			- "+=" 또는 "-="를 이용해 상대적인 애니메이션을 작성할 수 있다.
			- 예) $(selector).animate({속성명:"속성값"}, 속도);
			
			
			2 .delay()
			
			- 큐에 있는 다음 항목의 실행을 지연시킨다.
			
			
			3 .dequeue()
			
			- 큐에 있는 다음 항목을 제거한다.???????????????
			
			
			4 .stop()
			
			- 선택된 element에 대한 애니메이션을 중지시킨다.
			
			
		*/
		
		jQuery(document).ready(function(){
			// 예제 1
			$("button.bt1").click(function(){
				$("p.ex1").hide();
			});
			$("button.bt2").click(function(){
				$("p.ex1").show();
			});
			
			// 예제 2
			$("button.bt3").click(function(){
				$("p.ex1").toggle();
			});
			
			// 예제 3
			$("button.bt4").click(function(){
				$("div.ex3").animate({height:"200px"});
			});
			$("button.bt5").click(function(){
				$("div.ex3").animate({height:"100px"});
			});
			
			// 예제 4
			$("button.bt6").click(function(){
				$("div.ex4-1").delay("slow").fadeIn();
				$("div.ex4-2").delay("fast").fadeIn();
				$("div.ex4-3").delay(800).fadeIn();
				$("div.ex4-4").delay(2000).fadeIn();
				$("div.ex4-5").delay(4000).fadeIn();
			});
			
		});	
	</script>
</head>
<body bgcolor="#feffb8">
	<h1> Welcome to jQuery World!!!</h1>
	<h2>지금부터 연습문제 시작합니다.</h2>
	
	<hr>
	<p class="ex1">p태그</p>
	
	<button class="bt1">Hide</button>
	<button class="bt2">Show</button>
	<button class="bt3">Toggle</button><p>
	
	<hr>
	
	<div class="ex3" style="background-color:#fb5ef2;height:100px;width:100px;margin:6px;">
	
	</div>
	
	<button class="bt4">높이 변화 애니메이션</button>
	<button class="bt5">되돌리기</button>
	
	<hr>
	<div class="ex4-1" style="width:50px;height:50px;display:none;background-color:black;"></div><br>
	<div class="ex4-2" style="width:50px;height:50px;display:none;background-color:green;"></div><br>
	<div class="ex4-3" style="width:50px;height:50px;display:none;background-color:blue;"></div><br>
	<div class="ex4-4" style="width:50px;height:50px;display:none;background-color:red;"></div><br>
	<div class="ex4-5" style="width:50px;height:50px;display:none;background-color:purple;"></div><br>
	<button class="bt6">Delay 시키기</button>
</body>
</html>
