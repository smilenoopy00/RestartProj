<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>함수 연습문제 2</title>
	<script type="text/javascript">
	
		function calc(a, b, x){
			
			switch(x){
				case '+':
					return (a + b);
				case '-':
					return (a - b);
				case '*':
					return (a * b);
				case '/':
					return (a / b);
			}
		}
	
	</script>
</head>
<body>

<script type="text/javascript">
	var a, b, x, res;
	a = prompt("첫번째 숫자를 입력하세요.");
	b = prompt("두번째 숫자를 입력하세요.");
	x = prompt("연산자를 입력하세요.");
	
	a = parseInt(a);
	b = parseInt(b);
	res=calc(a, b, x);
	document.write(res);
</script>

</body>
</html>
