<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>parent / children</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<style type="text/css">
		/* 예제 1 */
		/*
		section {
			border:10px solid red;
		}
		
		section div {
			border:10px solid blue;
			height:50px;
		}
		*/
		
		/* 예제 2 */
		section {
			border:10px solid red;
		}
		section > div {
			border:10px solid blue;
		}
		section > div > div {
			border:10px solid gold;
			height:50px;
		}
		
	</style>
	<script type="text/javascript">
		jQuery(document).ready(function(){
			// 예제 1
			/*
			$("section div").click(function(){
				var $this = $(this);
				var $section = $this.parent();
				
				$section.css("border-width","100px");
			});
			*/
			
			// 예제 2
			$("section").click(function(){
				var $section = $(this);
				
				$section.children().css("border-color", "green");
				//$section.find("> div").css("border-color", "green");	find함수 파라미터로 선택자 가능.
			});
			
		});
	</script>
</head>
<body>
	<!-- 예제 1 -->
	<section>
		<div>1</div>
		<div>2</div>
		<div>3</div>
		<div>4</div>
		<div>5</div>
	</section>
	<section>
		<div>6</div>
		<div>7</div>
		<div>8</div>
		<div>9</div>
		<div>10</div>
	</section>
	
	<!-- 예제 2 -->
	<section>
		<div>
			<div>1</div>
			<div>2</div>
			<div>3</div>
		</div>
	</section>
	<section>
		<div>
			<div>1</div>
			<div>2</div>
			<div>3</div>
		</div>
	</section>
	
</body>
</html>