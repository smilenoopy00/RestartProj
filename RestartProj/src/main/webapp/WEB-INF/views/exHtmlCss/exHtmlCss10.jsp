<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>

<link href="/css/exHtmlCss/exHtmlCss10.css" rel="stylesheet" type="text/css">

<body>
	<!-- 풀다운 메뉴(중첩) -->
	
	<nav class="top-menu">
		<ul>
			<li>
				<a href="#">식물</a>
				<ul>
					<li>
						<a href="#">나무</a>
						<ul>
							<li><a href="#">은행</a></li>
							<li><a href="#">벚</a></li>
						</ul>
					</li>
					
					<li>
						<a href="#">꽃</a>
					</li>
				</ul>
			</li>
			
			<li>
				<a href="#">동물</a>
				<ul>
					<li>
						<a href="#">포유류</a>
					</li>
					
					<li>
						<a href="#">조류</a>
					</li>
				</ul>
			</li>
		</ul>
	</nav>
	
</body>
</html>