<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>Number, Arguments 객체</title>
	<script type="text/javascript">
		/*
			# Number 객체 : 문자를 숫자로 바꾸어주는 내장객체
			
			- 사용방법
			Number("문자열"); : 입력된 문자열이 숫자로 바꿀 수 없는 경우 NaN(Not a Number)을 반환
			
			
			# Arguments 객체 : 함수가 호출될 때 함수내의 매개변수에 대한 정보를 알아내기 위한 내장객체
							   <script language="javascript1.2"> 처럼 버전을 정확히 적어줘야 사용가능하다.
			
			- 멤버변수
			caller : 함수를 호출하는 함수의 매개변수 정보
			callee : 호출되는 함수의 매개변수 정보
		*/
		
		
	</script>
</head>
<body>
	<script type="text/javascript">
		
		// 예제 1
		document.write("하나 = " + Number("1") + "<br>");
		document.write("둘 = " + Number("2") + "<br>");
		document.write("셋 = " + Number("3") + "<br>");
		document.write("넷 = " + Number("4") + "<br>");
		document.write("다섯 = " + Number("다섯") + "<p>");
		
		// 예제 2
		NUM1 = "123" + 45;	// 자바스크립트에서는 var를 써주지않아도 오류안남
		NUM2 = Number("123") + 45;
		
		document.write(NUM1 + "<br>");
		document.write(NUM2 + "<br>");
		document.write(Number("100A"));
		
	</script>
</body>
</html>
