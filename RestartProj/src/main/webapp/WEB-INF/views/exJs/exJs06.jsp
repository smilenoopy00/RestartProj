<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>함수의 입력</title>
	<script type="text/javascript">
			var a = 1;	// 전역변수
			
			function fnA(){
				var a = 1;	// 지역변수 : 변수명이 전역변수와 같을 경우 지역변수가 우선순위
				a++;
				//alert(a);
			}
			
			fnA();
			
			
			var 나이 = 20;
			
			function 숫자출력(숫자){
				나이++;
				console.log("함수 내 나이 : ", 나이);	// log() 함수에서 콤마(,)를 하게되면 각 값들이 공백으로 연결되 출력된다.
			}
			숫자출력(나이);
			console.log("함수 밖 나이 : " + 나이);
			
			
			
			var 사람 = {
					이름 : "홍길동",
					나이 : 20,
					상태 : "쉼"
				};
			
			function 공부하다(이름){
				console.log(이름 + "이 공부합니다.");
				이름 = "바껴라";		// call by value 이므로 변경되지 않는다.
			}
			공부하다(사람.이름);
			
			console.log(사람.이름);
			
			
			// 배열이나 객체의 경우에는 call by value가 아닌 call by address
			function 객체가행동합니다(사람){
				console.log(사람.이름 + "이 공부합니다.");
			}
	</script>
	
</head>
<body>



	
</body>
</html>
