<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>jQuery 기타 메소드 2</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<!-- <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script> -->
	<script type="text/javascript">
		/*
		
			# $.param()
			
			- 배열(object나 array)을 serialized 하여 표현하거나 해당 객체를 반환한다.
			- 예) $.param(object변수명, trad);		// trad는 뭐지???????
			
			
			# size()
			
			- 선택된 element와 매칭되는 element의 수를 반환한다.
			- jQuery 1.8 버전에서 비권장 되었고 대신 length 속성을 사용한다.
			
			
			# toArray()
			
			- 선택된 element와 매칭되는 element들을 배열로 반환한다.
			- 배열의 요소는 element가 된다.
			- 부모 element 기준이 아닌 body 태그 전체를 기준으로 해당 element들을 배열로 만든다.
			
		*/
		
		jQuery(document).ready(function(){
			// 예제 1
			// 객체 생성
			var personObj = new	Object();	// var 붙이지 않아도됨 ㅠ
			personObj.firstname = "John";
			personObj.lastname = "Kim";
			personObj.age = 50;
			personObj.eyecolor = "blue";
			
			$("button.bt1").click(function(){
				$("div.ex1").text($.param(personObj));
			});
			
			// 예제 2
			$("button.bt2").click(function(){
				//alert($("li").size());	// 왜 안됨????
			});
			
			// 예제 3
			$("button.bt3").click(function(){
				var x = $("li").toArray();
				for(var i = 0; i < x.length; i++){
					alert(x[i].innerHTML);
				}
			});
		});	
	</script>
</head>
<body bgcolor="#feffb8">
	<h1> Welcome to jQuery World!!!</h1>
	<h2>지금부터 연습문제 시작합니다.</h2>
	
	<hr>
	<div class="ex1"></div><p>
	<button class="bt1">Serialize object</button>
	
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
	
	<button class="bt2">li태그의 개수를 가져온다.</button>
	<hr>
	
	<button class="bt3">li를 배열로 만들어 각 요소들을 확인</button>
	
</body>
</html>
