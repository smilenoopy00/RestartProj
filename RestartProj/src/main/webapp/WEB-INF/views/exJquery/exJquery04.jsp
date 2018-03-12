<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>기본선택자 - basics</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<!-- <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script> -->
	<script type="text/javascript">
		/*
			1. 모든 태그(*)
			- 모든 요소를 선택하는 선택자. $("*")
			- * 선택자가 다른 요소와 함께 사용되는 경우 해당 요소 내에 있는 모든 자식요소를 선택한다는 의미
			- 이 선택자를 사용할 경우 구동 시 무거워질수 있다.
			
			2. 아이디(#id)
			- HTML 속성의 특정 id를 가진 요소를 선택한다. $("#id")
 			- id 속성은 웹문서 내에서 고유해야한다.
			- id 속성의 값이 숫자로 시작하면 오류를 유발할 수 있다.
			
			3. 클래스(.class)
			- HTML 속성의 특정 id를 가진 요소를 선택한다. $(".class")
			- class 속성의 값이 숫자로 시작하면 오류를 유발할 수 있다.
			
			4. 여러개의 클래스(.class, .class)
			- 여러클래스를 선택하여 사용할 수 있다. $(".class1, .class2, .class3, ...")
			- 쉼표로 클래스를 분리한다.
			- class 속성의 값이 숫자로 시작하면 오류를 유발할 수 있다.
			
			5. element
			- 특정 태그를 선택한다. $("태그명")
			
			6. 다중 element
			- 여러 태그를 선택할 수 있다. $("태그명1, 태그명2, 태그명3, ...")
		*/
		
		jQuery(document).ready(function(){
			// 예제 1
			// $("*").css("background-color", "#ffff00");
			
			// 예제 2
			// body 태그 아래 모든 자식노드들이 선택됨
			// $("body *").css("background-color", "#b2f365");
			
			// 예제 3
			// $("#first").css("background-color", "#38fcf5");
			
			// 예제 4
			// $(".sec").css("background-color", "#fca738");
			
			// 예제 5
			// $(".one, .two, .three").css("background-color", "#b5fc38");
			
			// 예제 6
			// $("p").css("background-color", "#82defc");
			
			// 예제 7
			$("h1, div").css("background-color", "#f78fbe");
		});	
	</script>
</head>
<body>
	<h1>Welcome jQuery world!!!</h1>
	<p class="intro">안녕하세요</p>
	<p id="first">이제부터 학습시작합니다.</p>
	<p class="one">각각의 선택자를 사용하여</p>
	<p class="sec">백그라운드 컬러 변경합니다.</p>
	<hr>
	<div class="sec">두번째 단락입니다.</div>
	<p>두번째 문장은 어떻게 보이나요</p>
	<hr>
	<div class="two">세번째 단락입니다.</div>
	<p class="three">세번째 문장은 어떻게 보이나요</p>
</body>
</html>
