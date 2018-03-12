<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>속성 선택자 - attribute</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<!-- <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script> -->
	<script type="text/javascript">
		/*
			1. [attribute]
			- 속성을 선택한다.
			- 속성의 값과는 상관없이 해당 속성을 가진 element는 모두 선택된다.
			- 예) $("[href]")
			
			2. [attribute="value"]
			- 해당 속성의 해당 값을 가진 element를 선택한다.
			- 앞에 element를 써주면 해당 태그의 속성과 속성값을 선택한다.
			- 예) $("div[id='abc']")
			
			3. [attribute!="value"]
			- 해당 속성의 해당 값을 가지지 않는 element를 선택한다.
			- 예) $("[class!='abc']")
			
			4. [attribute$="value"]
			- 해당 속성의 값에서 "value" 문자열로 끝나는 element를 선택한다.
			- 예) $("a[href $= '.org']")
			
			5. [attribute^=value]
			- 해당 속성의 값에서 "value" 문자열로 시작하는 element를 선택한다.
			- 예) $("a[href ^= 'www']")
			
			6. [attribute|=value]
			- 해당 속성의 값이 "value"와 일치하거나 "value-"로 시작하는 element를 선택한다.
			- 예) $("a[hreflang |= 'en']")
				  <a hreglang="en-us"/>
			
			7. [attribute~="value"]
			- 해당 속성의 값과 일치하는 값을 가진 element를 선택한다.
			- 예) $("input[class~='food']")
				  <input class="things food my">
			
			8. [attribute*="value"]
			- 해당 속성의 값이 포함된 문자열을 값으로 가진 element를 선택한다.
			- 예) $("a[href*='article']")
				  <a href="/entries/article">
			
			9. [attribute1="value1"][attribute2="value2"]
			- 복수의 속성 값으로도 선택할 수 있다.
			- 예) $('input[type="hidden"][data-value="userValue"]');


		*/
		
		jQuery(document).ready(function(){
			// 예제 1
			// $("[id]").css("background-color", "#f78fbe");
			
			// 예제 2
			/*
			$("[id=bbb]").css("background-color", "#82fcc1");
			$("[id=ddd]").css("background-color", "#82fcc1");
			*/
			
			// 예제 3
			// $("p[id != bbb]").css("background-color", "#82fcc1");
			
			// 예제 4
			// $("a[href$='.kr']").css("background-color", "#82defc");
			
			// 예제 5
			// $("input[name^='frui']").css("background-color", "#fde833");
			
			// 예제 6
			// $("a[hreflang|='en']").css("background-color", "#cff78f");
			
			// 예제 7
			//$("[class~='things']").css("background-color", "#e29af2");
			
			// 예제 8
			// $("li[class*='food']").css("background-color", "#e29af2");
			
			// 예제 8
			$("p[id*='ddd'][class^='thing']").css("background-color", "#e29af2");
			
		});	
	</script>
</head>
<body>
	<h1>Welcome jQuery world!!!</h1>
	<h2>지금부터 연습문제 시작합니다.</h2>
	<p class="aaa things">안녕하세요!!!</p>
	당신의 관심사는 무엇입니까?
	<p id="bbb"><b>교육</b></p>
	<p id="ccc"><b>여행</b></p>
	<p id="ddd" class="things"><b>일</b></p>
	<a href="http://www.naver.com" hreflang="en">네이버</a><br>
	<a href="http://www.chosun.co.kr" hreflang="fr">조선일보</a><br>
	<a href="http://www.korea.com" hreflang="en-us">코리아닷컴</a><br>
	<input type="checkbox" name="fish" value=1/>고등어<br>
	<input type="checkbox" name="fruit" value=1/>바나나<br>
	<input type="checkbox" name="fish" value=2/>참치<br>
	<input type="checkbox" name="fruit" value=2/>사과<br>
	
	<ul>
		<li class='mainfood1'>도시락</li>
		<li class="things">돗자리</li>
		<li class="subfood1">간식</li>
		<li class="things">모자</li>
		<li class="subfood2">음료수</li>
	</ul>
</body>
</html>
