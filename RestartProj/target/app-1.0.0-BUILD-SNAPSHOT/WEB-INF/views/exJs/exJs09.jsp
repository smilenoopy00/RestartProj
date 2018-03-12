<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>함수 연습문제 1</title>
	<script type="text/javascript">
	
		function Max(x, y){	// 변수 타입 적어줄 필요 없음
			if(x > y)
				return x;
			else if(y > x)
				return y;
		}
	
	</script>
</head>
<body>	<!-- 컴파일은 head부분이 먼저 되지만 실행은 body부분이 먼저됨 -->

<script type="text/javascript">
	var x, y, res;
	x = prompt("값을 입력하세요.");		// prompt : 내장함수. 입력창이 뜸
	y = prompt("값을 하나 더 입력하세요.");
	x = parseInt(x);	// js는 이렇게 타입을 지정해주지않으면 숫자도 자동으로 문자타입으로 인식한다.
	y = parseInt(y);	// 그래서 내장함수인 parseInt()를 사용해줘야함.
	
	res = Max(x, y);
	document.write(res);
</script>

</body>
</html>
