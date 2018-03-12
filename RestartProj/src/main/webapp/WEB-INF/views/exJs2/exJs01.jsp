<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>Documents 객체</title>
	<script type="text/javascript">
		/*
			# Documents 객체
			
			- 브라우저의 내장객체중 최상위객체인 window의 바로 하위 객체 중 하나.
			- htm문서를 실행했을 때 흰 바탕 부분으로 body태그에 연결되는 부분
			- window.document. 으로 사용하는게 맞지만 주로 window를 생략해 쓴다.
			
			- 멤버변수 : 몇몇 변수들은 html 태그로도 사용할 수 있음.
			
		*/
		
		function dc_color(a, b){
			document.fgColor = a;
			document.bgColor = b;
		}
	
		function link_color(link, alink, vlink){
			document.linkColor = link;	// 기본 컬러
			document.alinkColor = alink;	// 클릭시 컬러
			document.vlinkColor = vlink;	// 방문한 컬러
		}
		
	</script>
</head>
<body onLoad="dc_color('pink', 'blue')">
	자바스크립트로 전경색과 배경색을 바꾸어 보세요.
	<form>
		<input type="button" value="배경색, 글자색 바꾸기" onClick="dc_color('blue', 'pink')"/>
	</form>
	
	<p>
	
	<a href="http://www.naver.com">네이버로 이동합니다.</a>
	<form>
		<input type="button" value="링크 색 변경" onClick="link_color('red','blue','yellow')"/>
	</form>
	
	<p>
	
	<script type="text/javascript">
	
	document.write("문서 제목 : " + document.title + "<p>");
	document.write("현재 문서 URL주소 : " + document.location + "<p>");
	document.write("이전 문서 URL주소 : " + document.referrer + "<p>");
	
	</script>
</body>
</html>
