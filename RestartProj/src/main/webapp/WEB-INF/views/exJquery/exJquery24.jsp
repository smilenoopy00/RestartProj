<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>jQuery 이벤트 - mouse event 2</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<!-- <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script> -->
	<script type="text/javascript">
		/*
		
			# .mouseenter(), .mouseleave()
			
			- 선택된 element 위에 마우스 포인터를 가져가거나 빠져나오면 발생한다.
			- 해당 element에만 해당되며 자손 element에는 적용되지 않는다.
				즉, 해당 element 내에서 마우스를 움직여도 반응이 없다.
			- Trigger 시키는 경우 : $(selector).mouseenter()
			  Trigger 시 실행될 함수 추가하는 경우 : $(selector).mouseenter(function)
			  
			  
			# .mouseover(), .mouseout()
			
			- 선택된 element 위에 마우스 포인터를 가져가거나 빠져나오면 발생한다.
			- 해당 element와 자손 element 모두에 적용된다.
				즉, 해당 element 내에서 마우스를 움직여도 발생된다.
			- Trigger 시키는 경우 : $(selector).mouseover()
			  Trigger 시 실행될 함수 추가하는 경우 : $(selector).mouseover(function)
			  
			  
			# .mousemove()
			
			- 선택된 element 위에서 마우스가 움직일 때마다 발생한다.
			- 1px 움질일 때마다 발생하므로 시스템에 과부하가 걸릴 수 있다.
			- 마우스의 좌표를 알 수 있다.
			- Trigger 시키는 경우 : $(selector).mousemove()
			  Trigger 시 실행될 함수 추가하는 경우 : $(selector).mousemove(function)
				
			  
			# .toggle()
			
			- jQuery 1.9 버전에서 제거됨
			- 선택된 element를 클릭할 때 두개 이상의 이벤트를 발생시킬 수 있다.
			- Trigger 시키는 경우 : $(selector).toggle()
			  Trigger 시 실행될 함수 추가하는 경우 : $(selector).toggle(function)
			  
			  
		*/
		
		jQuery(document).ready(function(){
			// 예제 1
			/*
			$("div.ex1").mouseenter(function(){
				$("span.ex1").html("<b>진입</b>");
			});
			$("div.ex1").mouseleave(function(){
				$("span.ex1").html("<b>나감</b>");
			});
			*/	// 뭔 차이지????????????????
			$("div.ex1").mouseover(function(){
				$("span.ex1").html("<b>진입</b>");
			});
			$("div.ex1").mouseout(function(){
				$("span.ex1").html("<b>나감</b>");
			});
			
			// 예제 2
			$(document).mousemove(function(event){
				$("span.ex1").text(event.pageX + ", " + event.pageY);
			});
			
		});	
	</script>
</head>
<body bgcolor="#feffb8">
	<h1> Welcome to jQuery World!!!</h1>
	<h2>지금부터 연습문제 시작합니다.</h2>
	
	<hr>
	<div class="ex1" style="background-color:yellow;width:200px;height:200px;">
		div태그1
		<div style="background-color:pink;width:150px;height:150px;">
			div태그2
			<p style="background-color:gray;width:60px;height:60px;">p태그</p>
		</div>
	</div>
	<span class="ex1"></span><p>
	
</body>
</html>
