<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>next/ prev : 이전형제와 이후형제 찾기</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<style type="text/css">
		/* 예제 1 */
		div.a {
			background-color:red;
			width:300px;
			height:50px;
			border:10px solid blue;
		}
		
		div.a.active {
			border-color:black;
		}
		
	</style>
	<script type="text/javascript">
		jQuery(document).ready(function(){
			
			var 아래로이동 = function(){
				var $현재 = $("div.a.active");
				
				var $다음 = $현재.next();
				
				if($다음.length == 0){
					return false;
				}
				
				$다음.addClass("active");
				$현재.removeClass("active");
			};
			
			var 위로이동 = function(){
				var $현재 = $("div.a.active");
				
				var $이전 = $현재.prev();
				
				if($이전.length == 0){
					return false;
				}
				
				$이전.addClass("active");
				$현재.removeClass("active");
			};
			
			$("button.down").click(아래로이동);
			
			$("button.up").click(위로이동);
			
			$(window).keyup(function(event){
				if( event.keyCode == 38 ){	// 상
					위로이동();
				}
				else if( event.keyCode == 40 ){	// 하
					아래로이동();
				}
			});
			
		});
	</script>
</head>
<body>
	<section>
		<div class="a active"></div>
		<div class="a"></div>
		<div class="a"></div>
		<div class="a"></div>
		<div class="a"></div>
	</section>
	<button class="up">위</button>
	<button class="down">아래</button>
</body>
</html>