<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>폼 필터 선택자 - Form filters 1</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<!-- <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script> -->
	<script type="text/javascript">
		/*
			1. :input
			- 모든 input element를 선택한다.
			- 예) $(":input")
			
			
			2. :text
			- type="text"인 속성의 input 태그를 선택한다. 
			- 예) $(":text")
			
			
			3. :password
			- type="password"인 속성의 input 태그를 선택한다. 
			- 예) $(":password")
			
			
			4. :radio
			- type="radio"인 속성의 input 태그를 선택한다. 
			- 예) $(":radio")

			5. :checkbox
			- type="checkbox"인 속성의 input 태그를 선택한다. 
			- 예) $(":checkbox")
			
			
			6. :submit
			- type="submit"인 속성의 input 태그를 선택한다.
			- 대부분의 브라우저에서 <button></button> 태그에 타입을 정하지않으면 submit으로 인식한다.
			- 예) $(":submit")
			
			7. :reset
			- type="reset"인 속성의 input 태그를 선택한다.
			- 예) $(":reset")
			
			8. :button
			- type="button"인 속성의 input 태그를 선택한다.
			- 예) $(":button")
			
		*/
		
		jQuery(document).ready(function(){
			// 예제 1
			// $(":input").css("background-color", "gold");
			
			// 예제 2
			// $(":text").css("background-color", "gold"); 
			
			// 예제 3
			// $(":password").css("background-color", "gold"); 
			
			// 예제 4
			// $(":radio").wrap("<span style='background-color:#fe63ea'></span>");
			// wrap() : 파라미터의 내용(HTML문장 또는 함수)으로 선택당한 요소를 감싼다.
			// 			여기서는 해당 라디오 박스를 칠해주고싶은데 css함수로는 적용이 되지 않아서 wrap으로 span태그를 추가해준다.
			// 예) 
			/*
				$('.b2').on('click', function(){
					var a = ['blue', 'green', 'red'];
					$('p').wrap(function(i){
						$(this).css('color', a[i]);
						return "<li></li>";
					});
				});
			*/
			
			// 예제 5
			$(":submit").css("background-color", "gold");
			$(":reset").css("background-color", "#c581ff");
			$(":button").css("background-color", "#83d260");
		});	
	</script>
</head>
<body bgcolor="#feffb8">
	<h1> Welcome to jQuery World!!!</h1>
	<h2>지금부터 연습문제 시작합니다.</h2>
	
	<div style="border:2px solid green;">
		<form action="">
			<br>
			이름 : <input type="text" name="user"/><br>
			아이디 : <input type="text" name="id"/><br>
			패스워드 : <input type="password" name="pw"/><br>
			<input type="button" value="버튼">
			<input type="reset" value="취소">
			<input type="submit" value="전송"><br>
			<hr>
			당신의 성별은 무엇입니까?<p>
			남 : <input type="radio" name="sex" value="male"/>
			여 : <input type="radio" name="sex" value="female"/>
		</form>
	</div>
	<p>폼 바깥의 input 태그들</p>
	이름 : <input type="text" name="user"/><br>
	아이디 : <input type="text" name="id"/><br>
	패스워드 : <input type="password" name="pw"/><br>
	
	
</body>
</html>
