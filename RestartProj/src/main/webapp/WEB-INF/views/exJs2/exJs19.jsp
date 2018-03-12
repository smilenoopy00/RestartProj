<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>이미지 확대 팝업창 띄우기 예제</title>
	<!-- 
		<예제의 전체적인 조건> 
		1. 이미지는 셀 가운데 위치
		2. 제목 글자 크기는 <h2>크기
		3. 이미지를 150*150으로 표시
		4. 가격은 파란색으로 표시
		5. 확대보기 창은 별도의 윈도우에 250*250으로 이미지를 보여준다.
		6. 팝업창의 창 닫기를 누르면 팝업창이 닫힌다.
	 -->
	 
	 <script type="text/javascript">
	 	function openWin(imgTag){
	 		var win = window.open("", "childwin", "width=300, height=350");
	 		win.document.write("<html><body><center>");
	 		win.document.write("<img src='" + imgTag.src +"' width=250 height=250/><br>");
	 		win.document.write("<input type='button' onClick='window.close()' value='창닫기'>");
	 		win.document.write("</center></body></html>");
	 	}
	 
	 </script>
</head>
<body>
	<center>
		<h2><ins>이미지 확대하기</ins></h2>
		<form name="frm1">
			<table width=500 border=1 cellspacing=1>
				<tr>
					<td align="center">
						<img src="/resources/img/monitor.jpg" border=1 width=150 height=150 onClick="openWin(this)"/>
					</td>
					<td align="center">
						<img src="/resources/img/camcoder.jpg" border=1 width=150 height=150 onClick="openWin(this)"/>
					</td>
				</tr>
				<tr>
					<td align="center">
						<b>LCD모니터</b><br>
						<b><font color="blue">500,000 원</font></b>
					</td>
					<td align="center">
						<b>캠코더</b><br>
						<b><font color="blue">700,000 원</font></b>
					</td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>
