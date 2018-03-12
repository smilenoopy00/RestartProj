<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>jQuery 기초 예제 2 - keyup (아이콘 이동하기)</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<style type="text/css">
		/* 예제 1 */
		/*
		div {
			width:100px;
			height:100px;
			background-color:red;
		}
		*/
		/* 예제 2 */
		div {
			width:100px;
			height:100px;
			background-color:blue;
			position:absolute;
			transition:all 1s;		/* 모든 변화에 대해 1초를 주겠다 */
		}
		div.a {
			top:0;
			left:0;
		}
		div.b {
			top:0;
			left:90%;
		}
		div.c {
			top:90%;
			left:0;
		}
		div.d {
			top:90%;
			left:90%;
		}
		
	</style>
	<script type="text/javascript">
		jQuery(document).ready(function(){
			 var $window = window.$(window);	// window에게 jquery 함수를 사용하기위해. 아니면 window객체의 메소드들을 사용해야함
			 
			 // 예제 1
			 /*
			 $window.keyup(function(event){
				 var marginLeft = $("div.a").css("margin-left");
				 var marginTop = $("div.a").css("margin-top");
				 
				 marginLeft = parseInt(marginLeft);
				 marginTop = parseInt(marginTop);
				 
				 if(event.keyCode == 37){	// 방향키 좌
					 marginLeft -= 10;
				 }
				 else if(event.keyCode == 39){	// 방향키 우
					 marginLeft += 10;
				 }
				 else if(event.keyCode == 38){	// 방향키 상
					 marginTop -= 10;
				 }
				 else if(event.keyCode == 40){	// 방향키 하
					 marginTop += 10;
				 }
				 
				 $("div.a").css("margin-left", marginLeft + "px");
				 $("div.a").css("margin-top", marginTop + "px");
			 });
			 */
			 
			 // 예제 2
			 $window.keyup(function(event){
				$("div").removeClass("a");
				$("div").removeClass("b");
				$("div").removeClass("c");
				$("div").removeClass("d");
			 	
				 if( event.keyCode == 65 ){			// a
					 $("div").addClass("a");
				 }else if( event.keyCode == 66 ){	// b
					 $("div").addClass("b");
				 }else if( event.keyCode == 67 ){	// c
					 $("div").addClass("c");
				 }else if( event.keyCode == 68 ){	// d
					 $("div").addClass("d");
				 }
			 });
			 
		});
	</script>
</head>
<body>
	<div></div>
</body>
</html>