<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>함수의 출력</title>
	<script type="text/javascript">
			// 함수가 함수를 입력으로 받을 수 있다.
			function fnA(fn){
				
			}
			
			fnA(function(){	// 익명함수를 넘긴다.
				
			});
			
			
			// 객체 안에 요소로 함수를 넣을 수 있다.
			var 사람 = {
					이름 : "홍길동",
					나이 : 20,
					횟수 : 0,
					인사 : function(){
						console.log("안녕");
						this.횟수++;		// this 꼭 붙여줘야함
						return this;		// this : 현재 객체
					}
				};
			
			var 사람2 = 사람.인사();
			
			사람2.인사().인사().인사().인사().인사();	// 체인호출 가능
			console.log(사람2.횟수);
	</script>
	
</head>
<body>



	
</body>
</html>
