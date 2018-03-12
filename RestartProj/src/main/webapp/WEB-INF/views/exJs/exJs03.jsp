<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>기초 2 - 배열, 객체</title>
	<script type="text/javascript">
	
		/* 행동은 결과를 만든다. */
		window.곱하기 = function(숫자1, 숫자2){
			return 숫자1 * 숫자2;
		}
		window.a = window.곱하기(1, 2);		// window.a  == var a
		//alert(a);
		
		
		/* 배열 */
		
		var 커피_캐리어 = [];
		
		커피_캐리어.push(1);
		커피_캐리어.push(2);
		
		//alert(커피_캐리어 + 커피_캐리어[0] + 커피_캐리어[1]);

		var 커피_캐리어2 = [3, 4];
		커피_캐리어2.push(5);
		커피_캐리어2.push(6);
		
		
		
		
		/* 객체 : 인덱스 지정이 가능 */ 
		
		var 커피_캐리어3 = {};
		
		커피_캐리어3[0] = 1;
		커피_캐리어3[2] = 3;
		
		//alert(커피_캐리어3[2]);
		
		var 커피_캐리어4 = {0:4, 2:5};
		
		커피_캐리어4[2] = 6;
		커피_캐리어4[3] = 7;
		
		커피_캐리어4['가장 좋아하는'] = 16;
		
		alert(커피_캐리어4[2] + "\n" + 커피_캐리어4['가장 좋아하는'] "\n" + 커피_캐리어4.가장 좋아하는);
		
	</script>
</head>
<body>
	
</body>
</html>
