<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>

<link href="/css/exHtmlCss/exHtmlCss11.css" rel="stylesheet" type="text/css">

<body>
	안	<!-- enter(줄바꿈)은 실제 브라우저에서 space 하나로 인식된다. -->
	녕	<!-- 이것은 html 태그에서도 똑같이 적용됨. -->
	하
	세
	요
	
	<ul>
	<!-- 한줄에 쭉 붙여서 나오게 하려고 style display 속성을 inline-block으로 설정했지만
		html에서 각 li태그를 엔터로 줄바꿈 시켜놨기때문에 브라우저 실행화면에서는
		각 메뉴들이 space 한칸씩 띄워져서 나온다. -->
		<li><a href="#">1</a></li>
		<li><a href="#">2</a></li>
		<li><a href="#">3</a></li>
		<li><a href="#">4</a></li>
	<!-- 모두 붙여서 나오게 하고싶으면 아래처럼 작성해야하는데 그러면
		가독성이 떨어지므로 좋은 코드가 아니다. -->	
		<li><a href="#">1</a></li><li><a href="#">2</a></li><li><a href="#">3</a></li><li><a href="#">4</a></li>
	</ul>
	
	<!-- 그래서 사용하는것이 float 속성이다.
		이때 display 속성은 inline이 아닌 block으로 지정해준다. -->
	<section>1</section>
	<section>2</section>
	<section>3</section>
	<section>4</section>
</body>
</html>