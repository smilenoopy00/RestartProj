<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>기초 1</title>
	<script type="text/javascript">
	
		/* 함수는 인물의 행동이다. */
		// window : 인물
		// 인사 : 행동
		window.인사 = function(){		// "인사"라는 함수 생성. window는 생략가능.
			alert("안녕하세요");
		}
		window.인사();
		
		/* 행동에는 옵션이 여러개 있을 수 있다. */
		window.인사2 = function(이름, 나이){
			alert(이름 + "(" + 나이 + "세) : 안녕하세요");
		};
		window.인사2("김희선", 20);
		window.인사2();		// undefined 출력됨
		
		
		
		함수명1();
		var 함수명1 = function(){	// 이런 형태의 함수는 호이스팅이 불가능하다.
			
		}
		
		함수명2();
		function 함수명2(){		// 호이스팅 가능. 정의보다 앞에서 호출이 가능하다. 
			
		}
		
		
	</script>
</head>
<body>
	
</body>
</html>
