<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>Link 객체</title>
	<script type="text/javascript">
		/*
			# Link 객체
			
			- <a href="">태그에 해당된다.
			- document의 하위객체인 links 객체
			- 현재 브라우저의 link 들에 대해 배열로 값을 가지고있다.
			
			- 멤버변수
			pathname : 호출하는 해당 페이지의 프로젝트 상 경로. restful 주소를 반환한다.
			href : url 주소. 프로토콜도 포함해서 반환
			
		*/
	</script>
</head>
<body>
	<a href="http://www.naver.com">네이버</a><br>
	<a href="http://www.daum.net">다음</a><br>
	<a href="http://www.kbs.co.kr">KBS방송</a><br>
	<a href="http://WWW.IMBC.CO.KR">MBC방송</a><br>
	<!-- <a href="http://localhost:8080/exTest">내가 만든 페이지</a><br> -->
	<a href="/jsp/exHtml5/exHtml01.html">내가 만든 페이지</a><br>
	<hr>
	
	<script type="text/javascript">
		// 예제 1
		document.write("[1]" + document.links[0].pathname + "<br>");
		document.write("[1]" + document.links[0].href + "<br><hr>");
		document.write("[2]" + document.links[1].pathname + "<br>");
		document.write("[2]" + document.links[1].href + "<br><hr>");
		document.write("[3]" + document.links[2].pathname + "<br>");
		document.write("[3]" + document.links[2].href + "<br><hr>");
		document.write("[4]" + document.links[3].pathname + "<br>");
		document.write("[4]" + document.links[3].href + "<br><hr>");
		document.write("[5]" + document.links[4].pathname + "<br>");
		document.write("[5]" + document.links[4].href + "<br><hr>");
		
	</script>
</body>
</html>
