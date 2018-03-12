<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>

<link href="/css/exHtmlCss/exHtmlCss07.css" rel="stylesheet" type="text/css">

<body>
	<!-- 중첩 리스트 -->
	
	<ul>
		<li>
			<a href="#">동물</a>
			<ul>	<!-- 해당 li 태그 안에 위치 시켜야한다. -->
				<li><a href="#">포유류</a></li>
				<li><a href="#">조류</a></li>
			</ul>
		</li>
		
		<li>
			<a href="#">식물</a>
			<ul>
				<li><a href="#">나무</a></li>
				<li><a href="#">꽃</a></li>
			</ul>
		</li>
	</ul>
	
	
	
	
	
</body>
</html>