<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>Window 객체 2</title>
	<script type="text/javascript">
		/*
			# Window 객체
			
			1. status 속성 : 상태표시줄을 의미
			2. moveBy(x, y) 메소드 : 상대적인 좌표로 이동한다.
			   moveTo(x, y) : 절대적인 좌표로 이동.
		*/
		
		function msg(val){
			switch(val){
				case true: window.status = "버튼을 한번 클릭 했습니다."; break;
				case false: window.status = "버튼을 두번 클릭 했습니다."; break;
			}
		}
			   
		function win_size(res){
			switch(res){
				case "상": window.moveBy(0, -50); break;
				case "하": window.moveBy(0, 50); break;
				case "좌": window.moveBy(-50, 0); break;
				case "우": window.moveBy(50, 0); break;
			}
		}
		
		// 새롭게 오픈하는 창을 직접 생성
		// 팝업창 오픈하는 방법중하나. - 실무에서는 지양...
		function win_open(){
			var str = "";
			new_win = window.open("", "open_win1", "");
			
			if(new_win != null){
				str += "<html><body>";
				str += "<font size=5> 이곳은 새로운 창입니다. <br>";
				str += "팝업창을 만들때 사용하죠";
				str += "</body></html>";
				new_win.document.write(str);
			}
		}
	</script>
</head>
<body>
	버튼을 한번 또는 두번 클릭하세요.<p>
	<form>
		<input type="button" value="버튼" onClick="msg(true)" onDblClick="msg(false)"/>
	</form>
	
	<p>브라우저가 이동합니다.<p>
	<form>
		<input type="button" value="상" onClick="win_size('상')"/>
		<input type="button" value="하" onClick="win_size('하')"/>
		<input type="button" value="좌" onClick="win_size('좌')"/>
		<input type="button" value="우" onClick="win_size('우')"/>
	</form>
	
	<p>팝업창을 만들어 봅니다.<p>
	<form>
		<input type="button" value="새로운 창 열기" onClick="win_open()"/>
	</form>
</body>
</html>
