<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>폼 필터 선택자 - Form filters 2</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<!-- <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script> -->
	<script type="text/javascript">
		/*
			1. :image
			- type="image"인 속성의 input 태그를 선택한다. 
			- 예) $(":image")
			
			
			2. :file
			- type="file"인 속성의 input 태그를 선택한다. 
			- 예) $(":file")
			
			
			3. :enabled
			- enabled 속성인 모든 form 요소들을 선택한다. 
			- 예) $(":enabled")
			
			
			4. :diabled
			- disabled 속성인 모든 form 요소들을 선택한다. 
			- 예) $(":diabled")
			

			5. :selected
			- <select>태그에서 <option selected>인 option요소를 선택한다.
			- radio, checkbox 태그에는 적용되지 않는다.
			- 예) $(":selected")
			
			
			6. :checked
			- type="radio" 또는 "checkbox"인 속성의 input 태그에서 checked 속성이 적용된 요소를 선택한다.
			- 예) $(":checked")
			
			
		*/
		
		jQuery(document).ready(function(){
			// 예제 1
			//$(":image").css("background-color", "#80f68b");

			// 예제 2
			// $(":file").css("background-color", "#9dfcad");
			
			// 예제 3
			// $(":enabled").css("background-color", "#9dfcad");
			// $(":disabled").css("background-color", "#80f68b");
			
			// 예제 4
			// $(":selected").css("background-color", "green");
			
			// 예제 5
			$(":checked").wrap("<span style='background-color:#fe63ea'></span>");
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
			아이디 : <input type="text" name="id" disabled="disabled"/><br>
			패스워드 : <input type="password" name="pw"/><br>
			파일명 : <input type="file" name="file"/><br>
			<input type="button" value="버튼">
			<input type="reset" value="취소">
			<input type="image" src="/resources/img/button.jpg"><br>
		</form>
	</div>
	<textarea cols=10 rows=5></textarea><p>
	당신의 성별은 무엇입니까?<p>
	남 : <input type="radio" name="sex" value="male"/>
	여 : <input type="radio" name="sex" value="female" checked/>
	<hr>
	여행가본 나라는?
	<input type="checkbox" checked/>미국
	<input type="checkbox"/>일본
	<input type="checkbox"/>태국
	<hr>
	<select size=1>
		<option>서울</option>
		<option selected="selected">부산</option>
		<option>경기</option>
		<option>제주</option>
	</select>
	
</body>
</html>
