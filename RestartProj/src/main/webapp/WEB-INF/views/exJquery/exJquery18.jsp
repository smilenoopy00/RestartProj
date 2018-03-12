<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>jQuery 이벤트 - browser event, document loading</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<!-- <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script> -->
	<script type="text/javascript">
		/*
			
			# Browser Events
			
			1 .error()
			
			- jQuery 1.8버전에서 비권장됨
			- 오류 발생 시 이벤트
			- 오류 Trigger 시 : $(selector).error()
			  오류 Trigger 후 실행 함수 추가 시 : $(selector).error(function)
			
			
			2 .resize()
			
			- 브라우저 창의 크기가 바뀔 때 발생한다.
			- Trigger 시 : $(selector).resize();
			  Trigger 후 실행할 함수 추가 시 : $(selector).resize(function);
			
			
			3 .scroll()
			
			- 스크롤 했을 때 발생
			- Trigger 시 : $(selector).scroll();
			  Trigger 후 실행할 함수 추가 시 : $(selector).scroll(function);
			
			
			
			# Document Loading
			
			1 .ready()
			
			- DOM이 완전히 로드되었을 때(이미지 포함) 발생한다.
			- jQuery 코드를 이 함수 안에 넣고 사용하는 것이 가장 안정적이다.
			- <body> 태그의 onLoad 이벤트와 함께 사용할 수 없다.
			
			
			2 .load()
			
			- jQuery 1.8버전에서 비권장됨
			- 선택된 element가 로드될 때 발생한다.
			- 파이어폭스나 IE처럼 이미지가 캐시 된 경우 제대로 동작하지 않을 수 있다.
			
			
			3 .unload()
			
			- jQuery 1.8버전에서 비권장됨
			- 사용자가 다른 페이지로 이동할 때 발생한다.
				페이지를 떠날 링크를 클릭한 경우
				새로운 url이 주소 표시줄에 입력된 경우
				앞으로 또는 뒤로 버튼이 사용될 때
				브라우저 창이 닫힐 때
				페이지가 다시 로드되는 경우
			- window 개체에 사용되어야한다.
			
		*/
		
		jQuery(document).ready(function(){
			// 예제 1
			$("button.bt1").click(function(){
				$("img").error();
			});
			/*	이거 먹질않음!!!!! ㅠㅠ
			$("img").error(function(){
				$("img").replaceWith("<p>Error loading image!</p>");
			});
			*/
			
			// 예제 2
			// 이것도 안먹음 ㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠ
			$(window).resize(function(){
				$("span#sp1").text(x+=1);	// x가 현재 태그의 텍스트 값이구나!!!
			});
			
			// 예제 3
			// 이것도 안먹음 ㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠ
			$("div#div1").scroll(function(){
				$("span#sp2").text(x+=1);	// x가 현재 태그의 텍스트 값이구나!!!
			});
			
			// 예제 4
			$("button.bt2").click(function(){
				$("p").slideToggle();	// 모든 p태그 숨기고 보이기
			});
			
			// 예제 5
			// 이것도 안먹음 ㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠ
			$("img").load(function(){
				$("span.imgCl").text("커피 이미지가 로드되었습니다.");
			});
			
			// 예제 5
			// 이것도 안먹음 ㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠ
			$(window).unload(function(){
				alert("다시 만나요!");
			});
			
		});	
	</script>
</head>
<body bgcolor="#feffb8">
	<h1> Welcome to jQuery World!!!</h1>
	<h2>지금부터 연습문제 시작합니다.</h2>
	
	<hr>
	<img src="/resources/img/coffee.gif"/><span class="imgCl"></span>
	
	<p>Window resized <span class="sp1">0</span></p>
	<p>브라우저 사이즈를 변경해 보세요.</p>
	
	<div id="div1" style="height:200px;width:200px;border:1px solid black;overflow:scroll;">
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
	<p>Scrolled <span class="sp2">0</span></p>
	<p>스크롤 위치를 변경해 보세요.</p>
	
	<a href="http://www.naver.com">네이버로 이동</a>
	
	<hr>
	
	<button class="bt1">에러 발생시키기</button>&nbsp;
	<button class="bt2">slide toggle 발생시키기</button>&nbsp;
	
</body>
</html>
