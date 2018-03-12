<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>Function, Screen 객체</title>
	<script type="text/javascript">
		/*
			# Function 객체 : 간단하게 함수를 정의할 수 있는 내장객체
			
			- 생성방법
			함수명 = new Function("변수명1", "변수명2", ..., "return 변수명들을 이용한 로직");
			
			
			# screen 객체 : 현재 화면의 해상도, 색상등에 관한 정보를 얻기 위한 객체
			
			- 생성방법
			static 객체처럼 객체명을 바로 써서 사용한다.
			
			- 멤버변수
			availHeight : 윈도우 인터페이스를 제외한 화면이 높이
			availWidth : 윈도우 인터페이스를 제외한 화면의 너비
			height : 픽셀 단위의 화면 높이
			width : 픽셀 단위의 화면 너비
			pixelDepth : 한 픽셀 당 비트 수
			colorDepth : 사용가능한 색상 수
		*/
		
		
	</script>
</head>
<body>
	<script type="text/javascript">
		
		// 예제 1
		scoreFn = new Function("kor", "mat", "eng", "return (kor + mat + eng)/3");
		
		document.write(scoreFn(99, 100, 95) + "<p>");
		
		// 예제 2
		document.write("화면 높이 : " + screen.availHeight + "<br>");
		document.write("화면 너비 : " + screen.availWidth + "<br>");
		document.write("색상 수 : " + screen.colorDepth + "<br>");
		document.write("픽셀당 높이 : " + screen.height + "<br>");
		document.write("픽셀당 너비 : " + screen.width + "<br>");
		document.write("픽셀당 비트수 : " + screen.pixelDepth + "<p>");
		
	</script>
</body>
</html>
