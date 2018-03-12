<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>자식 필터 선택자 - Child filters</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<!-- <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script> -->
	<script type="text/javascript">
		/*
			1. :first-child
			- 해당 element가 어떤 부모태그의 첫번째 자식인 경우 선택한다.
			- 주로 그룹의 특정 인덱스 요소를 선택하기위해 다른 선택자와 함께 사용한다.
			- 예) $("p:first-child")
			
			
			2. :last-child
			- 해당 element가 어떤 부모태그의 마지막 자식인 경우 선택한다.
			- 주로 그룹의 특정 인덱스 요소를 선택하기위해 다른 선택자와 함께 사용한다.
			- 예) $("p:last-child")
			
			
			3. :nth-child()
			- 해당 element가 어떤 부모태그의 입력된 인덱스 위치에 해당하는 자식인 경우 선택한다.
			- 인덱스 대신 even, odd, formula(수식)가 올 수 있다.
			- 예) $("div:nth-child(2)")
			
			
			4. :only-child
			- 해당 element가 어떤 부모태그의 유일한 자식인 경우 선택한다.
			- 예) $("div:only-child")

		*/
		
		jQuery(document).ready(function(){
			// 예제 1
			// $("p:first-child").css("background-color", "gold");
			
			// 예제 2
			// $("p:last-child").css("background-color", "gold"); 
			
			// 예제 3
			// $("p:nth-child(2)").css("background-color", "gold");
			
			// 예제 4
			$("p:only-child").css("background-color", "gold");
			
		});	
	</script>
</head>
<body>
	<h1> Welcome to jQuery World!!!</h1>
	<h2>지금부터 연습문제 시작합니다.</h2>
	
	<p>여기는 p태그 영역입니다.</p>
	
	<div style="border:double red;">
		<p>여기는 첫번째 div 태그 안의 첫번째 p태그 영역입니다.</p>
		<p>여기는 첫번째 div 태그 안의 마지막 p태그 영역입니다.</p>
	</div>
	
	<div style="border:double green;">
		<span>여기는 span태그 영역입니다.</span>
		<p>여기는 두번째 div 태그 안의 첫번째 p태그 영역입니다.</p>
		<p>여기는 두번째 div 태그 안의 두번째 p태그 영역입니다.</p>
	</div>
	
	<p>여기는 마지막 p태그 영역입니다.</p>
</body>
</html>
