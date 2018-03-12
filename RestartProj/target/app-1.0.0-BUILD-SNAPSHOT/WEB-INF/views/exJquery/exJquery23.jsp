<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>jQuery 이벤트 - mouse event 1</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<!-- <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script> -->
	<script type="text/javascript">
		/*
			
			# .click()
			
			- 마우스 클릭 시 발생한다.
			- Trigger 시키는 경우 : $(selector).click()
			  Trigger 시 실행될 함수 추가하는 경우 : $(selector).click(function)
			
			# .dbclick()
			
			- 마우스 더블클릭 시 발생한다.
			- .click() 이벤트와 같이 발생한다.
			- Trigger 시키는 경우 : $(selector).keydown()
			  Trigger 시 실행될 함수 추가하는 경우 : $(selector).keydown(function)
			  
					
			# .focusin()
			
			- 선택된 element와 자손 element가 포커스를 받을 때 발생한다.(마우스 또는 키보드의 tab으로 이동 시)
			- .focus() 이벤트는 선택된 element 자기자신에만 해당되므로 차이가 있다.
			- Trigger 시키는 경우 : $(selector).focusin()
			  Trigger 시 실행될 함수 추가하는 경우 : $(selector).focusin(function)
			  
			  
			# .focusout()
			
			- 선택된 element와 자손 element가 포커스를 잃을 때 발생한다.(마우스 또는 키보드의 tab으로 이동 시)
			- .blur() 이벤트는 선택된 element 자기자신에만 해당되므로 차이가 있다.
			- Trigger 시키는 경우 : $(selector).focusout()
			  Trigger 시 실행될 함수 추가하는 경우 : $(selector).focusout(function)
			  
			
			# .hover()
			
			- 선택된 element 위에 마우스 포인터를 가져가나 빠져나오면 발생한다.
			- 이 이벤트 발생 시 mouseenter(), mouseleave() 이벤트가 둘다 발생한다.
				예) $(selector).hover(inFunction, outFunction)
			
				
			# .mousedown(), .mouseup()
			
			- 마우스가 아래로 눌리는 도중과 손을 때면서 위로 올라오는 도중에 발생한다.
			- Trigger 시키는 경우 : $(selector).mousedown(), $(selector).mouseup()
			  Trigger 시 실행될 함수 추가하는 경우 : $(selector).mousedown(function), $(selector).mouseup(function)
			
			  
		*/
		
		jQuery(document).ready(function(){
			// 예제 1
			$("div.ex1").focusin(function(){	// 텍스트 박스에 포커스가 가도 div 이벤트가 작동한다.
				$(this).css("background-color","#FFFFCC");
			});
			$("div.ex1").focusout(function(){
				$(this).css("background-color","#FFFFFF");
			});
			
			// 예제 2
			$("p.ex2").hover(function(){	// 텍스트 박스에 포커스가 가도 div 이벤트가 작동한다.
				$("p.ex2").css("background-color","yellow");
			}, function(){
				$("p.ex2").css("background-color","pink");
			});
			
			// 예제 3
			$("div.ex3").mouseup(function(){	// 텍스트 박스에 포커스가 가도 div 이벤트가 작동한다.
				$(this).after("<p style='color:red;'>마우스 버튼 up</p>");
			});
			$("div.ex3").mousedown(function(){
				$(this).after("<p style='color:red;'>마우스 버튼 down</p>");
			});
			
		});	
	</script>
</head>
<body>
	<h1> Welcome to jQuery World!!!</h1>
	<h2>지금부터 연습문제 시작합니다.</h2>
	
	<hr>
	<div class="ex1" style="border:1px solid black;padding:10px;">
		이름 : <input type="text"><p>
		주소 : <input type="text">
	</div><p>
	
	<p class="ex2"><b>이곳에 마우스를 가져와보세요</b></p>
	
	<div class="ex3"><b>텍스트를 눌러 보세요</b></div><p>
	
</body>
</html>
