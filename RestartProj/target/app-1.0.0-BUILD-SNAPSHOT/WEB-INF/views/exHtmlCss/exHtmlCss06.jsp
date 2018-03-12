<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>

<link href="/css/exHtmlCss/exHtmlCss06.css" rel="stylesheet" type="text/css">

<body>
	<section>
		<span>section의 첫번째 자식</span>
		<div>section의 두번째 자식</div>
		<div>section의 세번째 자식</div>
		<div>section의 네번째 자식</div>
		<div>section의 다섯번째 자식</div>
	</section>
	
	<ul>
		<!-- 속성값 blank : 새창으로 띄우기 -->
		<li><a href="www.naver.com" target="blank">네이버</a></li>	<!-- spring 설정 수정하여 동작하도록 해야함. -->
		<li><a href="www.daum.net" target="blank">다음</a></li>
		<li><a href="www.google.com" target="blank">구글</a></li>
	</ul>
</body>
</html>