<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>jQuery 기초 예제 3 - addClass와 애니메이션 </title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<style type="text/css">
		section > div {
			width:0px;		/* transition 속성이 적용되려면 초기값이 무조건 있어야한다. */
			height:0px;
			margin:0;
			background-color:white;
			transition:all 2s; 
		}
		
		/* 예제 2 */
		section > div.a {
			width:auto; 
			height:100px;
			margin:20px;
			background-color:gold;
		}
		section > div.b {
			width:500px; 
			height:300px;
			margin:50px;
			background-color:green;
		}
		section > div.c {
			width:700px; 
			height:400px;
			margin:10px;
			background-color:blue;
		}
		
	</style>
	<script type="text/javascript">
		jQuery(document).ready(function(){
			 
			 // 예제 1
			 /*
			 $("section > div")
			 	.eq(0)		// 인덱스에 해당하는 요소를 가져온다. 선택자 :eq(index)와 동일함
			 	.css("height","100px")
			 	.css("background-color","red")
			 	.css("margin","20px");
			 $("section > div")
			 	.eq(1)
			 	.css("height","100px")
			 	.css("background-color","gray")
			 	.css("margin","20px");
			 $("section > div")
			 	.eq(2)
			 	.css("height","100px")
			 	.css("background-color","gold")
			 	.css("margin","20px");
			 */
			 // 위 코드를 each()를 사용하여 실습
			 /*
			 $("button").click(function(){
				 $("section > div").each(function(index, node){
					 var bgColor = $(node).data("bg-color");
					 var width = $(node).data("width");
					 var height = $(node).data("height");
					 $(node).text(index);
					 
					 if(bgColor){
					 	$(node).css("background-color",bgColor);
					 }
					 if(width){
					 	$(node).css("width",width);
					 }
					 if(height){
					 	$(node).css("height",height);
					 }
				 });
			 });
			 // --> 이 코드는 js가 디자인영역을 침범했으므로 아래코드로 수정한다.
			 */
			 
			// 예제 2
			 $("button").click(function(){
				 $("section > div").each(function(index, node){
					 var className = $(node).data("click-class");
					 $(node).addClass(className);
				 });
			 });
			 
		});
	</script>
</head>
<body>
<!-- 예제 1
	<section>
		<div data-bg-color="red" data-height="200px" data-width="50px"></div>	사용자생성 속성은 앞에 "data-"를 붙여준다.
		<div data-bg-color="gray" data-height="50px" data-width="auto"></div> 가져와 사용할 때는 "data-"를 뺀 "bg-color"가 속성이름이 된다.
		<div data-bg-color="gold" data-height="200px" data-width="50px"></div>
	</section>
	
	<button>each() 사용하여 css 일괄적용</button> -->
	
	<!-- 예제 2 -->
	<section>
		<div data-click-class="a"></div>
		<div data-click-class="b"></div>
		<div data-click-class="c"></div>
	</section>
	<button>디자인 변경</button>
</body>
</html>