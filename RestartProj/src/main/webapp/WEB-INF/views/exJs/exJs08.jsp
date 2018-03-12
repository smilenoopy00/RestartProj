<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>window, 객체지향</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function(){
			var 사람객체 = {
					이름 : "",
					나이 : "",
					주소 : "",
					인사 : function(){
						console.log("안녕하세요 " + this.나이 + "살 제 이름은 " + this.이름 + "입니다.");
					}
				};
			
			function 사람생성(이름, 나이, 주소){
				var 새사람 = $.extend({}, 사람객체);	// extend : ??????
				
				새사람.이름 = 이름;
				새사람.나이 = 나이;
				새사람.주소 = 주소;
				
				return 새사람;
			}
			
			var 사람1 = 사람생성("홍길동", 20, "인천");
			var 사람2 = 사람생성("홍길순", 31, "부산");
			var 사람3 = 사람생성("홍길천", 19, "서울");
			
			사람1.인사();
			사람2.인사();
			사람3.인사();
		});
	</script>
	
</head>
<body>



	
</body>
</html>
