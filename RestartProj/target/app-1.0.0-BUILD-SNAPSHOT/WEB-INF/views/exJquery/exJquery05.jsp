<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>계층선택자 - hierachy</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<!-- <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script> -->
	<script type="text/javascript">
		/*
			1. parent > child
			- 바로 아래 자식 element를 선택한다.
			- 즉, 자손 element는 포함 시키지 않는다는 것이다.
			- 예) $("div > span")
			
			2. parent descendant(자손)
			- 모든 자손 element를 선택한다.
			- 예) $("div span")
			
			3. element + next element
			- +를 기준으로 양쪽 element는 같은 부모를 공유한다.
			- 즉, 형제 element간의 선택이며 바로 아래에 인접해 있는 element를 선택한다.
			- 만약 지정한 next element가 인접해 있지 않다면 선택되지 못한다.
			- 앞에 나오는 element가 선택되는 것은 아니다.
			
			4. element ~ siblings
			- element를 기준으로 그 다음에 나오는 모든 형제 element를 선택한다.
			- ~를 기준으로 양쪽 element는 같은 부모를 공유한다.
			- 앞에 나오는 element가 선택되는 것은 아니다.
			
		*/
		
		jQuery(document).ready(function(){
			// 예제 1
			/*
			$("div > span").css("background-color", "#f78fbe");
			$("div > span").css("font-size", "30px");
			$("div > span").css("font-weight", "bold");
			$("div > span").css("color", "#0000ff");
			*/
			
			// 예제 2
			/*
			$("div span").css("background-color", "#f78fbe");
			$("div span").css("font-size", "30px");
			$("div span").css("font-weight", "bold");
			$("div span").css("color", "#0000ff");
			*/
			
			// 예제 3
			// $("div + p").css("background-color", "#82fcc1");
			
			// 예제 4
			$("div ~ p").css("background-color", "#82defc");
		});	
	</script>
</head>
<body>
	<h1>Welcome jQuery world!!!</h1>
	<h4>지금부터 연습문제 시작합니다.</h4>
	<div style="border:1px solid black; padding:10px;">
		<p>여기는 div태그안의 p태그 영역입니다.</p>
		<span>여기는 div태그안의 span태그 영역입니다.</span>
		<p>이것은 div 세번째 자식 p태그입니다.</p>
	</div>
	<div style="border:1px solid black; padding:10px;">
		<p>여기는 div태그안의 p태그 영역입니다.
			<span>여기는 div태그안의 p태그 안의 span태그 영역입니다.</span>
		</p>
		<p>이것은 div 두번째 자식 p태그입니다.</p>
	</div>
	<p>div와 형제인 첫번째 p태그 입니다.</p>
	<h5>여기는 h5입니다.</h5>
	<p>div와 형제인 두번째 p태그 입니다.</p>
</body>
</html>
