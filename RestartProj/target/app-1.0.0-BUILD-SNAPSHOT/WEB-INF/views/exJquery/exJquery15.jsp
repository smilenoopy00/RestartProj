<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>jQuery Offset 관련 메소드</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<!-- <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script> -->
	<script type="text/javascript">
		/*
		
			- Offset : 기준이 되는 위치에서 떨어진 거리
			
		
			# .offset()
			
			- 선택된 element의 브라우저 왼쪽 위를 기준으로 오프셋 좌표를 반환하거나 세팅한다.
			- 반환하는 경우 (top 값, left 값)을 가진 객체를 반환한다.
			- 세팅하는 경우 선택자와 일치하는 모든 element의 오프셋 좌표를 세팅한다.
			- 문법
				1. 리턴할 때
				$(selector).offset();
				2. 세팅할 때
				$(selector).offset({top:value, left:value});
				3. 함수를 사용하여 세팅
				$(selector).offset(function(index, currentoffset));
				
				
			# .offsetParent()
			
			- 선택된 element의 조상 중 position속성을 가진(relative or absolute) 처음으로 만나는 element를 반환한다.
			
			
			# .position()
			
			- 선택된 element의 부모 요소의 왼쪽 위를 기준으로 오프셋 좌표를 반환하거나 세팅한다.
			
			
			# .scrollLeft()
			
			- 선택된 element의 가로 스크롤 위치를 반환하거나 세팅한다.
			- 스크롤바가 맨 왼쪽에 있을 때 위치는 0
			- 위치를 반환할 경우 : 첫번째 일치하는 element의 스크롤 막대 가로 위치를 반환한다.
			- 위치를 세팅할 경우 : 일치하는 모든 element에 대한 스크롤 막대의 가로 위치를 세팅한다.
			
			
			# .scrollTop()
			
			- 선택된 element의 세로 스크롤 위치를 반환하거나 세팅한다.
			- 스크롤바가 맨 위쪽에 있을 때 위치는 0
			- 위치를 반환할 경우 : 첫번째 일치하는 element의 스크롤 막대 세로 위치를 반환한다.
			- 위치를 세팅할 경우 : 일치하는 모든 element에 대한 스크롤 막대의 세로 위치를 세팅한다.
			
		*/
		
		jQuery(document).ready(function(){
			// 예제 1
			$("button.bt1").click(function(){
				var x = $("p").offset();	// offset() 리턴값은 객체이다.
				alert("Top : " + x.top + " Left : " + x.left);
			});
			
			// 예제 2
			$("button.bt2").click(function(){
				$("p").offsetParent().css("background-color","#f4f88d");
			});
			
			// 예제 3
			$("button.bt3").click(function(){
				var x = $("p").position();
				alert("Top position : " + x.top + " Left position : " + x.left);
			});
			
			// 예제 4
			$("button.bt4").click(function(){
				alert($(".div2").scrollLeft() + " px");
			});
			
			// 예제 5
			$("button.bt5").click(function(){
				alert($(".div3").scrollTop() + " px");
			});
			
			// 예제 6
			$("button.bt6").click(function(){
				alert($("textarea").scrollTop() + " px");
			});
		});	
	</script>
</head>
<body bgcolor="#feffb8">
	<h1> Welcome to jQuery World!!!</h1>
	<h2>지금부터 연습문제 시작합니다.</h2>
	
	<hr>
	
	<p><b>p태그 안쪽입니다.</b></p>
	<div style="border:1px solid black;width:70%;position:absolute;top:0px;left:10px">
		<div style="border:1px solid black;margin:50px;background-color:lightpink;">
			<p align="center" style="background-color:green;">버튼을 클릭하세요</p>
		</div>
	</div>
	<div class="div2" style="border:1px solid black;width:100px;height:130px;overflow:auto">
		영어 사전에서 가장 긴 단어는 : pneumonoultramicroscopicsilicovolcanoconiosis입니다.
	</div>
	<div class="div3" style="border:1px solid black;width:100px;height:150px;overflow:auto">
		Shape of you 가사
		The club isn’t the best place to find a lover
		So the bar is where I go 
		Me and my friends at the table doing shots 
		drinking fast and then we talk slow
		you come over and start up a conversation 
		with just me and trust me 
		I’ll give it a chance now
		Take my hand stop, put van the man 
		on the jukebox and then we start to dance
		And now I’m singing like
	</div>
	
	<textarea rows="3" cols="4" style="overflow:scroll;">안녕하세요?????</textarea>
	
	<hr>
	
	<button class="bt1">버튼1. p 태그의 offset 좌표를 반환</button>&nbsp;
	<button class="bt2">버튼2. 배경색 설정</button>&nbsp;
	<button class="bt3">버튼3. p 태그의 top과 left position을 반환</button><p>
	<div style="border:1px solid black;padding:10px;">
		스크롤바를 오른쪽으로 옮기면서 여러번 실행해보세요<br>
		<button class="bt4">버튼4. div 수평 scrollbar 위치를 반환</button>
		<button class="bt5">버튼5. div 수직 scrollbar 위치를 반환</button>
		<button class="bt6">버튼6. textarea 태그 수직 scrollbar 위치를 반환</button>
	</div>
</body>
</html>
