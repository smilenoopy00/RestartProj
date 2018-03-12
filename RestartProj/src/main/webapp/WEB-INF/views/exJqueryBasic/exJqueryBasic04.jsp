<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>addClass, removeClass, toggleClass - 클릭한 div 색깔 바꾸기</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<style type="text/css">
		/* 예제 1 */
		div.a {
			width:100px;
			height:100px;
			background-color:blue;
			margin:10px;
			display:inline-block;
		}
		
		div.a.active {
			background-color:red;
		}
		/* 예제 2 */
		div.b {
			width:100px;
			height:100px;
			background-color:lightgreen;
			margin:10px;
			display:inline-block;
		}
		div.b.active {		/* 선택자가 길면길수록 더 우선적용된다고 생각하면된다 */
			background-color:green;
		}
		
	</style>
	<script type="text/javascript">
		jQuery(document).ready(function(){
			// 예제 1
			var fn = function(){
				var $this = $(this);	// 함수를 호출한 주인. 여기서는 "div.a"
				$this.addClass("active");
				console.log("hi");
			};
			$("div.a").click(fn);			
			
			// 예제 2
			$("div.b").click(function(){
				var $클릭한요소 = $(this);
				
				$클릭한요소.removeClass("active");
			})
		});
	</script>
</head>
<body>
	<section>
		<div class="a"></div>
		<div class="a"></div>
		<div class="a"></div>
		<div class="a"></div>
	</section>
	<section>
		<div class="b active"></div>
		<div class="b active"></div>
		<div class="b active"></div>
		<div class="b active"></div>
	</section>
</body>
</html>