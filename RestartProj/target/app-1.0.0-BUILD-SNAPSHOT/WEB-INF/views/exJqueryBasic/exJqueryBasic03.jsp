<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>onClick 이벤트</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<style type="text/css">
		
		body {
			height:10px solid red;
			min-height:100vh;	/* body 최소 높이를 지정해줌 */
		}
		
		body:hover {
			background-color:red;
		}
		
	</style>
</head>
<body>
	<h1>onClick 이벤트 테스트</h1>	<!-- body의 크기는 작성된 태그들에의해 결정된다. 현재는 h1태그뿐이므로 해당 크기밖에 안됨 -->
	
	<section>
		<div style="padding:10px;margin:10px;background-color:gold;">안녕</div>
		<div style="padding:10px;margin:10px;background-color:gold;">안녕</div>
		<div style="padding:10px;margin:10px;background-color:gold;">안녕</div>
		<div style="padding:10px;margin:10px;background-color:gold;">안녕</div>
		<div style="padding:10px;margin:10px;background-color:gold;">안녕</div>
	</section>
</body>
	<script type="text/javascript">
		
		jQuery(document).ready(function(){
			// 예제 1
			var 클릭되면_할일 = function(){
				console.log("클릭");
			}
			var $body = window.$("body");
			
			$body.click(클릭되면_할일);
			
			// 예제 2
			var 클릭되면_할일2 = function(){
				console.log("클릭2");
			}
			var $div = window.$("section > div");
			
			$div.click(클릭되면_할일2);
		});
		
	</script>
</html>