<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>Date 객체</title>
	<script type="text/javascript">
		/*
			# 내장객체인 Date 객체
			
			- 생성방법
			var 변수명 = new Date();
		
			- 현재 날짜와 시간에 대한 정보를 가져오는 메소드들
			getYear()
			getMonth() : +1을 해줘야 현재 달이 출력된다.
			getDate()
			getDay() : 일요일 ~ 월요일의 요일을 0 ~ 6 사이의 숫자로 반환한다.
			getHours()
			getMinutes()
			getSeconds()
			getTime()
			
			- 현재 날짜와 시간에 대한 정보를 세팅하는 메소드들
			setYear()
			setMonth()
			setDate()
			setDay()
			setHours()
			setMinutes()
			setSeconds()
			setTime()
			
			- 그외 메소드들
			parse(날짜) : 1070년 1월 1일 00:00:00 이후의 경과 시간을 1000분의 1초 단위로 리턴한다.
			toLocalString() : 날짜를 문자열 형식으로 변환한다.
		*/
	
		
		
	</script>
</head>
<body>
	<script type="text/javascript">
		
		// 예제 1
		
		var Today = new Date();
		var year = Today.getYear();
		var month = Today.getMonth() + 1;
		var date = Today.getDate();
		
		document.write("<h4>오늘 날짜 : ");
		document.write(year + "년 " + month + "월 " + date + "일 " + "<p>");
		
		var hour = Today.getHours();
		var minute = Today.getMinutes();
		var second = Today.getSeconds();
		
		document.write("<h4>현재시간 : ");
		document.write(hour + "시 " + minute + "분 " + second + "초 " + "<p>");
		
		
		// 예제 2
		var day;
		var year = Today.getYear();
		var month = Today.getMonth() + 1;
		var date = Today.getDate();
		document.write("<h4>현재날짜 : ");
		
		switch(Today.getDay()){
			case 0 : day = "일요일"; break;
			case 1 : day = "월요일"; break;
			case 2 : day = "화요일"; break;
			case 3 : day = "수요일"; break;
			case 4 : day = "목요일"; break;
			case 5 : day = "금요일"; break;
			case 6 : day = "토요일"; break;
		}
		document.write(year + "년 " + month + "월 " + date + "일 " + day + "<p>");
		
		
		// 예제 3
		var Now = new Date();
		switch(Now.getSeconds() % 2){	// 초의 짝수 홀수에 따라 배경색 변경
			case 0 : document.bgColor = "yellow"; break;
			case 1 : document.bgColor = "green"; break;
		}
		
		
	</script>
</body>
</html>
