<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>jQuery 이벤트 객체(속성) - event object 1</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<!-- <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script> -->
	<script type="text/javascript">
		/*
		
			# event.currentTarget
			
			- 이벤트 발생하는 주체(DOM 요소)이며 일반적으로 this와 동일하다
			
			
			# event.data
			
			- 현재 실행 핸들러가 바인딩 될 때 이벤트 메서드에 전달 된 옵션 데이터가 포함되어있다.
			
			
			# event.preventDefault()
			
			- 해당 이벤트의 기본동작(함수안에 기재된 내용이 아닌)을 중지한다.
			- 예를 들어, submit은 제출을 중지, url은 페이지 이동 방지
			
			
			# event.isDefaultPrevented()
			
			- preventDefault() 함수가 이벤트를 호출 되었는지 여부를 확인한다.
			
			
			# event.stopImmediatePropagation()
			
			-
			
			
			# event.isImmediatePropagationStopped()
			
			- stopImmediatePropagation() 함수가 호출 되었는지 여부를 확인한다.
			
			
			# event.stopPropagation()
			
			-
			
			
			
			# event.isPropagationStopped()
			
			- stopPropagation() 함수가 호출 되었는지 여부를 확인한다.
			
			
			# event.namespace
			
			- 이벤트가 발생된 사용자 정의 네임스페이스를 반환한다.
			- 네임스페이스에 따라 다르게 작업하기 원하는 플러그인 개발에 사용될 수 있다.
			- 언더바(_)로 시작하는 네임스페이스는 jQuery에서 예약된 네임스페이스이다.
			
		*/
		
		jQuery(document).ready(function(){
			// 예제 1
			$("h1, h2, p.ex1").click(function(event){	// currentTarget : 현재 선택된 element를 뜻한다.
				alert(event.currentTarget == this);
			});
			
			// 예제 2
			$("p.ex2").each(function(i){	// .each() 함수는 뭐지????????
				$(this).on("click",{a:i}, function(event){	// .on(이벤트명, {재정의변수명:넘기는값}, 함수)
					alert("[" + $(this).index() + "] : " + event.data.a);	// .index() 함수는 뭐지??????
				});
			});
			
			// 예제 3
			$("a").click(function(event){
				event.preventDefault();
				alert("preventDefault() 호출여부 : " + event.isDefaultPrevented());
			});
			
			// 예제 5
			$("div.ex5").click(function(event){
				event.stopImmediatePropagation();
				alert("stopImmediatePropagation() 호출여부 : " + event.isImmediatePropagationStopped());
			});
			
			// 예제 6
			$("p.ex6").on("custom.someNamespace", function(event){	// custom 이게뭐지??????
				alert(event.namespace);
			});
			$("p.ex6").click(function(){
				$("p.ex6").trigger("custom.someNamespace");
			});
			$("button").click(function(){
				$("p.ex6").off("custom.someNamespace");
			});
			
			
		});	
	</script>
</head>
<body bgcolor="#feffb8">
	<h1> Welcome to jQuery World!!!</h1>
	<h2>지금부터 연습문제 시작합니다.</h2>
	
	<hr>
	
	<p class="ex1"><b>제목 텍스트들과 여기를 클릭해보세요</b></p>
	
	<div style="border:1px solid black;width:100px;height:125px;">
		<p class="ex2"><b>첫번째 p태그</b></p>
		<p class="ex2"><b>두번째 p태그</b></p>
		<p class="ex2"><b>세번째 p태그</b></p>
	</div><p>
	
	<a href="http://www.korea.com">코리아 닷컴</a><p>
	
	<div class="ex5" style="border:1px solid black;width:300px;height:125px;padding:10px;background-color:lightpink;">
		이곳을 클릭해보세요
	</div><p>
	
	<p class="ex6">이곳을 클릭하여 바인딩되어있는 이벤트를 발생시키세요</p>
	<button>namespace 삭제</button>
</body>
</html>
