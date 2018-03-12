<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>jQuery Attributes 관련 메소드</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<!-- <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script> -->
	<script type="text/javascript">
		/*
		
			# .attr()
			
			- 선택된 element의 속성 값을 리턴하거나 값을 세팅한다. 
			- 반환 : 첫 번째 일치하는 요소의 값을 반환한다.????
			- 변경 : 일치하는 요소의 집합에 대해 값을 세팅한다.????
			- 예) $("img").attr("width","500");
			
			- 문법
				1. attribute의 값을 리턴
				$(selector).attr(attribute);
			
				2. attribute의 값을 세팅
				$(selector).attr(attribute, value);
				
				3. 함수를 사용하여 값을 세팅
				$(selector).attr(attribute, function(index, currentvalue));
				
				4. 다중 attributes의 값을 세팅
				$(selector).attr( { attribute1:value1, attribute2:value2, ...});
			
				
				
			# .prop()
			
			- attr()와 거의 같다.
			
			
			# .removeAttr()
			- 선택된 element의 속성 값을 삭제한다.
			- HTML의 속성값을 삭제할때 주로 사용한다.
			- 예) $(selector).removeAttr(attribute);
			
			
			# .removeProp()
			- .removeAttr()와 거의 같다.
			- HTML의 속성값을 삭제하지 못한다.
			

			# .val()
			- 선택된 element의 value나 속성을 리턴하거나 세팅한다.
			- 반환 : 첫 번째 일치하는 요소의 값을 반환한다.????
			- 변경 : 모든 일치하는 요소의 value 값을 세팅한다.????
			- 이 메소드는 주로 form 태그에 해당하는 태그들과 함께 사용된다.(input, select, textarea 등)
			
			- 문법
				1. value를 리턴할 때
				$(selector).val();
				
				2. value를 세팅할 때
				$(selector).val();
				
				3. 함수를 사용하여 value를 세팅할 때
				$(selector).val(function(index, currentvalue));
				
		*/
		
		jQuery(document).ready(function(){
			// 예제 1
			$("button").click(function(){
				$("img").attr("width", "500");
				$("img").attr("height", "500");
			});
			
			// 예제 2
			$("button.bt").click(function(){
				var $x = $("font");		// $변수명 : jQuery 변수임을 의미함.
				$x.prop("color", "#FF0000");
				$x.append("색상값은 다음과 같아요.", + $x.prop("color"));
			});
			// attr() 함수도 같은 기능
			/*
			$("button.bt").click(function(){
				var $x = $("font");
				$x.attr("color", "#FF0000");
				$x.append("색상값은 다음과 같아요.", + $x.attr("color"));
			});
			*/
			
			// 예제 3
			$("button.bt2").click(function(){
				$("p").removeAttr("style");
				//$("img").removeAttr("src"); // img의 src만 삭제되므로 width와 height 속성값은 그대로 남아있다.
			});
			
			// 예제 4
			$("button.bt3").click(function(){
				alert($("input:text").val());	// input:text => :text만 해도 결과는 같다.
			});
			
			
		});	
	</script>
</head>
<body bgcolor="#feffb8">
	<h1> Welcome to jQuery World!!!</h1>
	<h2>지금부터 연습문제 시작합니다.</h2>
	
	<button>이미지 사이즈를 변경합니다.</button><br>
	<img src="/jsp/htmlExImg/sky.jpg" alt="sky" width=250 height=250/><p>
	
	<button class="bt">속성 추가 버튼</button><p>
	<font size=5 color="#0000ff">font 태그 안쪽입니다.</font>
	<hr>
	<button class="bt2">속성을 제거합니다.</button><p>
	<p style="font-size:120%;color:red;">처음 나오는 p태그</p>
	<p style="font-weight:bold;color:blue;">두번째 나오는 p태그</p>
	<hr>
	이름 : <input type="text" name="이름" value="홍길동"/><p>
	<button class="bt3">이름을 반환합니다.</button><p>
</body>
</html>
