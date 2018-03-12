<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>

<link href="/css/exHtmlCss/exHtmlCss15.css" rel="stylesheet" type="text/css">

<body>
<!-- 
	<article class="ex1">
		<div></div>
		<div></div>
		<section>1</section>
		<div></div>
		<div></div>
	</article>
	하하하
	-->
	<article class="ex2">
		<div></div>
		<div></div>
		<div></div>
		<div></div>
		<section>1</section><!-- float속성을 적용한 자식 태그(div)들을 가지는 경우 이렇게
								 clear:both;, display:block; 속성을 적용한 막내 자식을 꼭 추가해줘야만
								 부모태그의 크기가 설정될수있고 그 아래에 다른 태그들이 정상적으로 붙을 수 있다. -->
	</article>
</body>
</html>