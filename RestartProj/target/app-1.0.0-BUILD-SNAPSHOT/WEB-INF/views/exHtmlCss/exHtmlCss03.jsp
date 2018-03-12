<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>

<link href="/css/exHtmlCss/exHtmlCss03.css" rel="stylesheet" type="text/css">

<body>	 
	 <section>
	 	 <article>
			 <div class="a2">1</div>	<!-- class : 여러개의 태그에 공통적인 작업을 해주기위해 이름을 부여. -->
			 <div>2</div>
			 <div id="a1">3</div>	<!-- id : 단 하나의 태그에 특별한 이름을 부여. -->
			 <div>4</div>
		 </article>
	 </section>
	 
	 <div class="a2">5</div>
	 <div>6</div>
</body>
</html>