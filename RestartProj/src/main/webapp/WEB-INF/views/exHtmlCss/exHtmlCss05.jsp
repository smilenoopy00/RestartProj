<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>

<link href="/css/exHtmlCss/exHtmlCss05.css" rel="stylesheet" type="text/css">

<body>
	<!-- 리스트 태그 -->
	
	<!-- 
	ul(unordered list),	ol(ordered list), dl(definition list)
	자식 태그로 li를 가지며 항목을 기술할 수 있다.
	 -->
	 
	 <ul>
	 	<li>사과</li>
	 	<li>배</li>
	 	<li>메론</li>
	 </ul>
	 
	 <ol>
	 	<li>사과</li>
	 	<li>배</li>
	 	<li>메론</li>
	 </ol>
	 
	 <dl>
	 	<dt>이름</dt>
	 	<dd>홍길동</dd>
	 	
	 	<dt>나이</dt>
	 	<dd>20세</dd>
	 </dl>
</body>
</html>