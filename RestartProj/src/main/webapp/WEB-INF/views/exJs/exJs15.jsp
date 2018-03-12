<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>String 객체 1</title>
	<script type="text/javascript">
		/*
			# 내장객체인 String 객체
			
			- 생성방법
			var 변수명 = new String("문자열");
			var 변수명 = "문자열";
			
			- 멤버변수
			length : 해당 문자열의 길이. 한국어도 한문자당 하나로 인식함.
			
			- 메소드
			charAt(index) : index 위치의 문자를 반환
			concat(문자열) : 두 문자열을 하나의 문자열로 만듦
			indexOf(문자) : 왼쪽부터 해당 문자를 검색 후 인덱스를 반환. 없으면 -1 반환
			lastIndexOf(문자) : 왼쪽부터 해당 문자열을 검색 후 인덱스를 반환
			slice(index1, index2) : 인덱스1에서 인덱스2 문자까지 반환
			split() : 문자열을 분리시킴
			substr(index1, 개수) : 인덱스1에서 개수만큼 문자열을 반환	// 실습했을때 substring이랑 차이를 못느낌 ㅠㅠ
			substring(index1[, index2]) : 인덱스1에서 인덱스2의 하나 앞 문자까지 반환
										  인덱스1이 인덱스2보다 더 큰 수이더라도 자동으로 같은 결과값을 반환해준다.
										  파라미터가 한개인 경우 인덱스1부터 끝까지 반환
			toLowerCase() : 소문자로 변환시켜줌
			toUpperCase() : 대문자로 변환시켜줌
			big() : 좀더크게 해준다.
			small() : 좀더작게 해준다.
			blink() : 깜빡이게해준다. 익스플로러에서는 작동안됨. 예전 브라우저에서 작동.(네스케이프 등)
			bold() : 굵게해준다.
			fixed() : 타자기체. <TT></TT> 태그와 같은 효과
		*/
	
		
		
	</script>
</head>
<body>
	<script type="text/javascript">
		
		// 예제 1
		
		document.write("글자를 크게 ".big() + "글자를 작게".small() + "<p>");
		document.write("글자를 굵게 ".bold() + "글자의 타자기체".fixed() + "<p>");
		document.write("글자의 이텔릭체 ".italics() + "글자의 취소선".strike() + "<p>");
		document.write("글자의 아래첨자 ".sub() + "글자의 윗첨자".sup() + "<p>");
		document.write("글자를 깜빡이게".blink() + "<p>");
		document.write("글자크기 ".fontsize(7) + "글자색".fontcolor("red") + "<p>");
		
		
	</script>
</body>
</html>
