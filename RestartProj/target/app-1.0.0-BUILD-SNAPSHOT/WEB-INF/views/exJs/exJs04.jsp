<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>기초 3(자료형) - 문자, 숫자, 논리</title>
	<script type="text/javascript">
	
		var a = 1;
		var b = '2';
		var c = '문자';
		var d = true;
		
		// typeof 함수
		//alert(typeof(a) + "\n" + typeof(c) + "\n" + typeof(d));
		//alert(a + b);	// 숫자 + 문자 = 문자
		
		
		// 문자열 자르기
		
		var str = "홍길동";
		var str2 = str.substr(0, 1);	// substr(시작, 개수);
		var str3 = str.substr(-2);		// substr(음수값) : 뒤에서부터 세서 해당 자리 값을 반환한다.
		
		//alert(str2);
		//alert(str3);
		
		
		// parse 함수 : 들어온 값을 최대한 해당 자료형의 숫자로 리턴한다.
		
		var i = 3.141592;
		
		var j = parseInt(i);	// 정수화
		var k = parseFloat(i);	// 실수화
		
		// alert(j + ", " + k);
		
		alert(parseFloat("3.14lkjsdfs532"));
	</script>
</head>
<body>
	
</body>
</html>
