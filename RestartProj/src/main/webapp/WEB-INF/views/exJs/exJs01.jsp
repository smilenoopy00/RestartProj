<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	<link href="/css/exJsJquery/exJsJquery01.css" rel="stylesheet" type="text/css">
	<script src="/js/exJsJquery/exJsJquery01.js" type="text/javascript"></script>
	<script type="text/javascript">
	<!--
		// 이 주석같이 생긴 부분은 혹시나 자바스크립트 언어를 인식하지못하는 브라우저에서의 오류를 방지하기위한 것으로
		// 스크립트 내용을 여기 안에다가 작성한다.
	//-->
	
	/*
		# 자바스크립트의 자료형(varient 타입)
		char, int, double, float, int, long, short, void 등의 타입을 포함한다.
		자료형을 엄격히 따지지 않는 스크립트 언어이므로 a=10과 같이 처음부터 치환문을 이용해도 된다.
	*/
	
	document.write("Hello~");	// document : 브라우저에서 보여지는 부분을 의미함.
	
	</script>
</head>
<body>
	<!-- 1. 자바스크립트의 위치
		<head> ~ </head> 또는 <body> ~ </body> 안에 정의가능.
		<head> 부분에 정의하는 것을 권장한다.
	 -->
	<div class="a">
	자바스크립트가 CSS보다 우선순위가 주로 높지만 js파일 삽입 위치에 따라 달라질 수 있다.
	</div>
</body>
</html>
