<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>jQuery 이벤트 - event handerler attachment 2</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<!-- <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script> -->
	<script type="text/javascript">
		/*
			
			# Events Handler Attachment
			
			1 .one()
			
			- 선택된 element에 하나이상의 이벤트를 연결하고 오직 한번만 실행된 후 삭제된다. 
			- 선택된 element가 여러개인 경우 해당 이벤트가 적용된 element에는 두번이상 적용되지않고 다른 요소들에는 적용이된다. 
			- 예) $(selector).one(event, data, function)
			
			
			2 .trigger()
			
			- 선택된 element에 파라미터로 입력된 이벤트를 강제로 발생시킨다.
			- 해당 이벤트의 실제 기능과 이벤트 발생 시 실행되는 함수 코드 둘다 실행된다.
			  예) $(selector).trigger(event)
			--> 그냥 이벤트 명을 써서 발생시키면되지 왜 이렇게 한번더 거침???????
			
					
			3 .triggerHandler()
			
			- 선택된 element에 파라미터로 입력된 이벤트를 강제로 발생시킨다.
			- 해당 이벤트의 실제 기능은 실행시키지않고 함수 내부 코드만 실행된다.
			  예) $(selector).triggerHandler(event, param1, param2, ...)
			
			  
			4 .unbind()
			
			- 선택된 element의 모든 이벤트를 제거한다.
			- 이벤트 발생 시 특정 기능을 중지하거나 특정 횟수 트리거 후 제거할 수 있다.
				예) $(selector).unbind(event, function, eventObj)
			
				
			5 .undelegate()
			
			- 선택된 element와 자식 element에 대해 이벤트를 제거한다.
				예) $(selector).undelegate(selector,event,function);
				
				
		*/
		
		jQuery(document).ready(function(){
			// 예제 1
			$("p.ex1").one("click", function(){
				$(this).animate({fontSize:"+=6px"});
			});
			
			// 예제 2
			$("input").select(function(){	// select : 해당 element를 선택할 때 발생
				$("input").after("텍스트가 마크되었습니다.");
			});
			$(".bt2").click(function(){
				$("input").trigger("select");
			});
			
			// 예제 3
			$(".bt3").click(function(){
				$("input").triggerHandler("select");
			});
			
			// 예제 4
			$("p.ex4").click(function(){
				$(this).slideToggle();
			});
			$(".bt4").click(function(){
				$("p.ex4").unbind();
			});
		});	
	</script>
</head>
<body bgcolor="#feffb8">
	<h1> Welcome to jQuery World!!!</h1>
	<h2>지금부터 연습문제 시작합니다.</h2>
	
	<hr>
	<p class="ex1">여기는 p태그 영역입니다.</p>
	<p class="ex1">여기는 두번째 p태그 영역입니다.</p>
	
	<input type="text" value="jQuery World">
	
	<p class="ex4">여기는 ex4 p태그 영역입니다.</p>
	<div>
		여기는 ex4 div태그 영역입니다.
		<p class="ex4">여기는 ex4 div태그 안에 있는 p태그입니다.</p>
	</div>
	
	<hr>
	
	<button class="bt1">배경색바꾸기 event handler 삭제</button>&nbsp;
	<button class="bt2">trigger() 실행</button>&nbsp;
	<button class="bt3">triggerHandler() 실행</button>&nbsp;
	<button class="bt4">ex4 이벤트 제거</button>
</body>
</html>
