<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head><!-- 

	 -->
	<title>3차원 사이트 만들기(translateZ 기술) 4 - 완성</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<style type="text/css">
		nav.menu {
			position:fixed;
			top:50%;
			left:0;
			transform:translateY(-50%);
			background-color:white;
			z-index:2;				/* 포토샵에서 레이어같은 개념. 숫자가 높을수록 가장 위에 있는 것임 */
			padding-right:30px;
			border-radius:10%;
		}
	
		body {
			height:5000px;
			overflow-y:hidden;
		}
		div.perspective {
			position:fixed;
			top:0;
			left:0;
			width:100%;
			height:100%;
			perspective:100px;
		}
		div.perspective div.item {
			position:absolute;
			top:0;
			left:0;
			width:100%;
			height:100%;
			background-color:black;
			opacity:0.5;
			font-size:100px;
			color:red;
		}
	</style>
	<script type="text/javascript">
		jQuery(document).ready(function(){
			
			var 사이값 = 500;
			
			$(window).scroll(function(){
				
				var $this = $(this);
				var scrollTop = $this.scrollTop();
				var $item = $("div.perspective > div.item");
				
				$item.each(function(index, node){
					var z = -(index * 사이값);
					z += scrollTop;
					z = parseInt(z);
				
					$(node).css("transform", "translateZ(" + z + "px)");
				});
			});
			
			$(window).scroll();
			
			$("nav ul li a").click(function(event){
				event.preventDefault();		// 기본기능 막음
				
				var $li = $(this).parent();
				var index = $li.index();		// index() : 형제중에 몇번째냐
				var newScrollTop = index * 사이값;
				var duration = 5000;
				
				// $("body").scrollTop(newScrollTop);
				
				// stop() : 선택된 요소에 연결된 모든 animation을 멈춘다음
				// 			연결된 animation을 실행한다. 
				$("body").stop().animate({scrollTop: newScrollTop}, duration, "swing");
				// 이거 왜 안됨???????????????
			});
		});
	</script>
</head>
<body>
	<nav class="menu">
		<ul>
			<li><a href="#">메뉴아이템1</a></li>
			<li><a href="#">메뉴아이템2</a></li>
			<li><a href="#">메뉴아이템3</a></li>
			<li><a href="#">메뉴아이템4</a></li>
			<li><a href="#">메뉴아이템5</a></li>
		</ul>
	</nav>
	
	<div class="perspective">
		<div class="item">1</div>
		<div class="item">2</div>
		<div class="item">3</div>
		<div class="item">4</div>
		<div class="item">5</div>
	</div>
</body>
</html>