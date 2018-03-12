<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>객체 배열 만들기</title>
	<script type="text/javascript">
		/*
			# 내장객체인 Array 객체
			
			- 생성방법 : 마찬가지로 배열명 앞에 객체명이나 var를 적어줄 필요가 없다.
			배열명 = new Array(배열크기);
			배열명 = new Array(초기화 값들);
	
			- 메소드
			join(["구분문자"]) : 배열 요소들을 하나의 문자열로 만들어준다.
								 파라미터가 있는 경우 각 요소들을 해당 문자로 구분해주고
								 없는 경우 ,(콤마)로 구분해준다.
			sort() : 배열의 값들을 사전 순서대로 정렬한다.
			reverse() : 배열안의 값들을 거꾸로 정렬시킨다.
			concat(배열명) : 두 개의 배열을 하나의 배열로 합친다.
			slice(시작자리, 끝자리+1) : 배열의 일부분의 값을 가져온다.
		*/
	
		
		
	</script>
</head>
<body>
	<script type="text/javascript">
	
		// 예제 1
		hong_array = new Array(5);
		
		hong_array[0] = "홍길동";
		hong_array[1] = "컴퓨터공학과";
		hong_array[2] = "200511555";
		hong_array[3] = "180cm";
		hong_array[4] = "70kg";
		
		document.write("<h5>");
		for(var i = 0; i <= 4; i++){
			document.write("[" + i + "]" + hong_array[i] + "<br>");
		}
		document.write("</h5>");
		
		
		// 예제 2
		array1 = new Array("사과", "배", "바나나");
		document.write("<h4>" + array1.join() + "<br>");
		document.write(array1.join("와 ") + "<br>");
		document.write(array1.join("&") + "</h4>");
		
		// 예제 3
		array2 = new Array("사과", "배", "바나나");
		array3 = new Array("다", "나", "가");
		
		document.write("<h4>" + array2.sort() + "<br>");
		document.write(array2.reverse() + "<br>");
		document.write(array3.sort() + "<br>");
		document.write(array3.reverse() + "</h4>");
		
		// 예제 4
		array4 = new Array("사과", "배", "바나나");
		array5 = new Array("오징어", "낙지", "문어");
		array6 = array4.concat(array5);
		
		document.write(array6 + "<br>");
		
		// 예제 5
		array7 = new Array("오징어", "낙지", "문어", "꼴뚜기");
		array8 = array7.slice(1, 3);
		
		document.write(array8);
	</script>
</body>
</html>
