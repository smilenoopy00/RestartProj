<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>Form 객체 - Frame 객체 1</title>
	<script type="text/javascript">
		/*
			# Frame 객체
			
			- 윈도우 브라우저에 포함되어있는 모든 프레임에 대한 정보를 제공하는 객체
			- <frameset></frameset> 태그에 해당.
			- 브라우저를 나누는 기능을 한다.
			- <body></body> 태그 대신에 사용되는 태그
			
			- 구조
			<html>
			<head><title>제목</title></head>
			<frameset rows="픽셀값or퍼센트">또는<frameset cols="픽셀값or퍼센트">	// 실무에서는 픽셀 주로씀
				<frame src="문서1"/>
				<frame src="문서2"/>
				...
			</frameset>
			</html>
			
			- 멤버변수
			src : 각 프레임에 보여질 페이지의 파일명
			name : 프레임의 이름. 중요!!!
			noresize : 프레임의 경계선을 움질일 수 있는지 여부
			scrolling : 프레임의 스크롤바를 보여줄 것인지 여부
			marginheight : 프레임 상하 여백
			marginwidth : 프레임 좌우 여백
			
		*/
		
		
	</script>
</head>

<frameset cols="100,*">		<!-- 각 프레임의 사이즈 -->
	<!-- <frame src="jsp/exHtmlCss/exHtmlCss01.jsp" name="left">	이거 왜 안됨??? ㅠㅠ
	<frame src="jsp/exHtmlCss/exHtmlCss02.jsp" name="right"> -->
	<frame src="http://www.daum.net" name="left"/>
	<frame src="http://www.goole.com" name="right"/>
</frameset>
</html>
