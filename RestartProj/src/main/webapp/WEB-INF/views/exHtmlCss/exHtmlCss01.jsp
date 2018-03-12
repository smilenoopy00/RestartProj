<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>

<link href="/css/exHtmlCss/exHtmlCss01.css" rel="stylesheet" type="text/css">

<!-- <h1>JS 예제</h1>
<h3>자바스크립트가 CSS보다 우선순위가 높다.</h3>
<div>1</div> -->
<body>
	안녕
	
	<!-- 직접 꾸미는 방식은 잘 사용하지않음. -->
	<div style="color:red; font-size:bold; background-color:blue;">html에서 직접 꾸밈</div>
	
	
	<div>
		<section>
				섹션1
				<section>섹션1-1</section>
		</section>
		<section>섹션2</section>
		<section>섹션3</section>
		<section>섹션4</section>
		<section>섹션5</section>
	</div>
	
	<section>섹션6</section>
	<section>섹션7</section>
	<section>섹션8</section>
	<section>섹션9</section>
	<section>섹션10</section>
</body>
</html>