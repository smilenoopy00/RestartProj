<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>Anchor, Navigator 객체</title>
	<script type="text/javascript">
		/*
			# Anchor 객체
			
			- <a href="#"> ~ <a name="">으로 지정된 링크에 대한 정보를 가지고 있는 객체
			  : 동일한 페이지 내에서 스크롤이 길 경우 원하는 위치로 이동하는 태그이다.
			- document의 하위객체인 anchors 객체
			- 현재 브라우저의 위와같은 형태의 링크들에 대해 배열로 값을 가지고있다.
			
			- 멤버변수
			document.anchors.length : href 속성에 #으로 시작하는 a태그의 개수
			document.anchors[i].name
			
			
			
			# Navigator 객체
			
			- 현재 사용하고 있는 브라우저의 버전을 파악하는데 중요한 객체
			- 홀로 독립되어있는 객체이다.
			
			- 멤버변수
			appName : 브라우저의 종류
			appVersion : 브라우저의 현재 버전
			appCodeName : 브라우저의 현재 코드이름
			userAgent : 브라우저의 현재 user Agent
			mineTypes : 브라우저에서 지원하고 있는 MINE 타입
			plugins : 플러그인 종류
			language : 현재 브라우저가 사용하는 언어
			platform : 브라우저가 설치된 시스템의 종류
			
			- 메소드 : 유일하게 하나 있다.
			javaEnabled() : 브라우저 종류에 따라 java사용가능여부 반환
		*/
		
		
	</script>
</head>
<body>
	<a href="#up">name="up"의 위치로 이동</a><p>
	<a href="#down">name="down"의 위치로 이동</a><p>
	<hr>
	
	<a name="up">name="up"의 위치</a><p>
	<p><br><p><br><p><br><p><p><p><p><p><p><p><p>
	<a name="down">name="down"의 위치</a><p>
	<p><br><p><br><p><br><p><p><p><p><p><p><p><p>
	
	<script type="text/javascript">
		// 예제 1
		for(var i = 0; i < document.anchors.length; i++){
			document.write(document.anchors[i].name + "<br>");
		}
		document.write("anchor 갯수 : " + document.anchors.length + "<p>");
		document.write("<hr><p>");
		
		// 예제 2
		document.write("1. 애플리케이션 이름 : " + navigator.appName + "<br>");
		document.write("2. 브라우저 버전 : " + navigator.appVersion + "<br>");
		document.write("3. 브라우저 이름 : " + navigator.appCodeName + "<br>");
		document.write("4. User agent : " + navigator.userAgent + "<br>");
		document.write("5. 사용 언어 : " + navigator.language + "<br>");
		document.write("6. 사용 시스템 : " + navigator.platform + "<br>");
		
		// 예제 3
		switch(navigator.javaEnabled()){
			case true:
				document.write("<h4>자바사용 가능합니다.</h4>");	break;
			case false:
				document.write("<h4>자바사용 불가능합니다.</h4>");	break;
		}
	</script>
	
</body>
</html>
