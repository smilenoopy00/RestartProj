<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>jQuery 기타 메소드 1</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<!-- <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script> -->
	<script type="text/javascript">
		/*
		
			# data()
			
			- 선택된 element에 대해 data를 세팅하거나 가져온다.
			- 삭제하기 위해서는 removeData()를 사용한다.
			- 예) $(selector).data(data저장할 변수명);
			
			
			# removeData()
			
			- 선택된 element에 대해 세팅되어있는 data를 삭제한다.
			- 예) $(selector).removeData(data변수명);
			
			
			# each()
			
			- 선택된 element가 여러개 있을 때 해당 element들을 돌면서 함수를 실행시킨다.
			
			
			# get()
			
			- 선택된 element의 index 위치에 있는 element를 반환한다.
			- each()는 반복문을 돌리는 것이고 get()은 element 자체를 반환한다. 
				예) $(selector).get();	=> 배열값을 리턴한다.
					$(selector).get(index); 
			
			
			# index()
			
			- 선택된 element의 상대적인 인덱스 위치를 반환한다.
			- 즉, 부모를 기준으로 0부터 시작한다.
			- 해당 element가 존재하지 않으면 -1을 반환한다.
				예) $(selector).index();
			
				
			# $.noConflict()
			
			- jQuery 축약형을 제거하거나 선언할 때 사용한다.
			- 다른 라이브러리와 함께 사용하는 경우 $를 사용하지 못하도록 할 때 
				예) var jq = $.noConflict();
					jq(document).ready(function(){
						jq("button").click(function(){
						jq("p").text("jQuery is still working!");
						});
					});

			
		*/
		
		jQuery(document).ready(function(){
			// 예제 1
			$("button.bt1").click(function(){
				$("div.ex1").data("greeting", "Welcome to jQuery World!!!");
			});
			$("button.bt2").click(function(){
				alert($("div.ex1").data("greeting"));
			});
			$("button.bt5").click(function(){
				$("div.ex1").removeData("greeting");
			});
			
			// 예제 2
			$("button.bt3").click(function(){
				//$("ul.ex2").each(function(){	// 자식 값들을 가져온다.
				$("li").each(function(){
					alert($(this).text());
				});
			});
				
			// 예제 3
			$("button.bt4").click(function(){
				var x = $("li").get(3);
				$("div.ex3").text(x.nodeName + " : " + x.innerHTML);
			});
			
			// 예제 4
			$("button.bt4").click(function(){
				var x = $("li").get(3);
				$("div.ex3").text(x.nodeName + " : " + x.innerHTML);
			});
			
			// 예제 5
			$("li").click(function(){
				alert($(this).index());
			});
		});	
	</script>
</head>
<body bgcolor="#feffb8">
	<h1> Welcome to jQuery World!!!</h1>
	<h2>지금부터 연습문제 시작합니다.</h2>
	
	<hr>
	<div class="ex1">div태그입니다.</div>
	
	<button class="bt1">div 태그에 data를 세팅한다.</button>
	<button class="bt2">div 태그의 data를 가져온다.</button>
	<button class="bt5">div 태그의 data를 삭제한다.</button>
	<hr>
	
	<ul class="ex2">
		<li>Coffee</li>
		<li>Milk</li>
		<li>Soda</li>
	</ul>
	<ul class="ex">
		<li>Apple</li>
		<li>Pear</li>
		<li>Melon</li>
	</ul>
	
	<button class="bt3">ul안의 값들을 가져온다.</button>
	<hr>
	
	<p class="ex3">이것은 <b>p태그</b> 문장입니다.</p>
	<div class="ex3"></div>
	<button class="bt4">DOM element를 가져온다.</button><p>
	
	
</body>
</html>
