<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>find / closest </title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<style type="text/css">
		/* 예제 1 */
		div {
			padding:10px;
			margin:10px;
			background-color:gold;
		}
		
		section {
			border:10px solid red;
		}
		
		/* 예제 2 */
		nav {
			width:100px;
			height:100px;
			background-color:red;
			margin:10px;
		}
		nav article {
			width:80%;
			height:80%;
			background-color:blue;
		}
		
		/* 예제 3 */
		
		article {
			width:200px;
			height:200px;
			background-color:blue;
			margin:10px
		}
		article nav {
			width:80%;
			height:80%;
			background-color:red;
		}
		
	</style>
	<script type="text/javascript">
		jQuery(document).ready(function(){
			// 예제 1
			var $div = $("div");
			
			var fn = function(){
				console.log("얍");
			};
			$div.click(fn);
			
			var $section = $("section");
			var $div2 = $section.find("div");	// section에 속해있는 자식들중에서 찾는다.
			
			// 예제 2
			var $nav = $("nav");
			$nav.click(function(){
				//console.log("nav가 클릭 되었습니다.");	// article 도 작동한다.
				var $this = window.$(this);
				var $article = $this.find("article");
				
				$article.css("background-color", "black");
			});
			
			// 예제 3
			$("nav.ex3").click(function(){
				var $this = $(this);
				
				var $article = $this.closest("article");		// 가장 가까운 element를 찾는다.
				$article.css("background-color", "gold");
			});
		});
	</script>
</head>
<body>
	<section>
		<div>1</div>
		<div>2</div>
		<div>3</div>
		<div>4</div>
		<div>5</div>
	</section>
	
	<div>6</div>
	<div>7</div>
	<div>8</div>
	<div>9</div>
	<div>10</div>
	
	<nav><article>1</article></nav>
	<nav><article>2</article></nav>
	<nav><article>3</article></nav>
	<nav><article>4</article></nav>
	
	<article><nav class="ex3">1</nav></article>
	<article><nav class="ex3">2</nav></article>
	<article><nav class="ex3">3</nav></article>
</body>
</html>