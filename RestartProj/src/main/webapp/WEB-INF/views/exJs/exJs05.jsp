<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>기초 4 - setTimeout, setInterval</title>
	<!-- <link href="/css/exJs/exJs01.css" rel="stylesheet" type="text/css"/> -->
	<style type="text/css">
		body.active {
			background-color:red;
		}
	</style>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function(){
			
			// # setTimeout(함수이름, 시간) : 입력한 시간 후에 실행
			// # setInterval : 입력한 시간마다 반복하여 실행
			
			function fnA(){
				$("body").addClass('active');
			}
			
			//setTimeout(fnA, 100);	// 1000 : 1초
			
			function fnB(){
				$("body").toggleClass('active');		// IE에서는 안됨
			}
			
			setInterval(fnB, 2000);
			
		});
	</script>
	
</head>
<body>



	
</body>
</html>
