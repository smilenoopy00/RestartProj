<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>이미지 버튼으로 팝업창 열기 예제 - button 태그</title>
	 <script type="text/javascript">
	 	function popup(){
	 		var win = window.open("http://www.naver.com", "popup1", "width=350, height=250");
	 		//var win = window.open("/jsp/exHtml5/exHtml01.html", "popup2", "width=250, height=350");
	 		
	 		if(navigator.appVersion.indexOf("(X11") != -1 || navigator.appVersion.indexOf("(Mac") != -1){
	 			win = window.open("http://www.google.com", "popup2", "width=250, height=350");
	 		}
	 	}
	 </script>
</head>
<body>
	<form name="frm1">
		<!--  버튼태그 -->
		<button type="button" value="공지사항" onClick="popup()">
			<img src="/resources/img/button.jpg"/>
		</button>
		
	</form>
</body>
</html>
