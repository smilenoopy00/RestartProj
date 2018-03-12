<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>Math 객체</title>
	<script type="text/javascript">
		/*
			# 내장객체인 Math 객체
			
			- 생성방법
			new를 사용하지않고 java에서 static 객체처럼 사용 가능하다.
			
			- 멤버변수
			E : 자연로그의 밑수. 오일러 상수
			PI : 원주율 구할때 쓰는 파이
			LN10 : 10의 자연로그
			LN2 : 2의 자연로그
			SQRT2 : 2의 제곱근
			
			- 메소드
			sin(), cos(), tan(), asin(), acos(), atan()
			abs() : 절대값
			exp() : 
			log()
			pow(n1, n2) : n1의 n2승
			sqrt(n) : n의 제곱근
			random() : 난수
			round()
			floor(x) : 내림 값
			ceil(x) : 올림 값
			max(x, y), min(x, y) : 파라미터의 크기를 비교하여 반환
		*/
		
		
	</script>
</head>
<body>
	<script type="text/javascript">
		
		// 예제 1
		document.write(Math.max(10, 5) + "<br>");
		document.write(Math.min(10, 5) + "<br>");
		document.write(Math.ceil(78.12) + "<br>");
		document.write(Math.floor(78.12) + "<br>");
		document.write(Math.abs(-1) + "<p>");
		
		// 예제 2
		document.write("E : " + Math.E + "<br>");
		document.write("LN2 : " + Math.LN2 + "<br>");
		document.write("LN10 : " + Math.LN10 + "<br>");
		document.write("SQRT1_2 : " + Math.SQRT1_2 + "<br>");
		document.write("SQRT2 : " + Math.SQRT2 + "<br>");
		document.write("PI : " + Math.PI + "<p>");
		
		// 예제 3
		document.write("sin(PI/2) : " + Math.sin(Math.PI/2) + "<br>");
		document.write("cos(PI) : " + Math.cos(Math.PI) + "<br>");
		document.write("tan(PI/6) : " + Math.tan(Math.PI/6) + "<br>");
		document.write("2의 5승 : " + Math.pow(2, 5) + "<br>");
		document.write("2의 제곱근 : " + Math.sqrt(2) + "<p>");
	</script>
</body>
</html>
