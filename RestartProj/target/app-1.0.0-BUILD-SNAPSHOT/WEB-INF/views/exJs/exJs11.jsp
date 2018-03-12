<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>내장함수</title>
	<script type="text/javascript">
	/*
		alert : 단순한 메시지 창
	*/
	function OK(){
		alert("예. 담패를 피웁니다.");
	}
	function NO(){
		alert("아니오. 담패를 피우지 않습니다.");
	}
	
	/*
		prompt : 사용자의 입력을 받는 메시지박스
	*/
	var su;
	su = prompt("값을 입력하세요.");
	document.write("입력된 값은 " + su + " 입니다.");
	
	/*
		confirm : 확인과 취소 버튼을 가지는 alert창. true, false를 리턴한다.
	*/
	var res;
	res = confirm("계속 하시겠습니까?");
	
	if(res == true)
		document.write("계속 진행됩니다.");
	else
		document.write("취소 되었습니다.");
	
	</script>
</head>
<body>
	<br/>담배를 피우십니까?
	<form>
		<input type="button" value="예" onClick="OK()">
		<input type="button" value="아니오" onClick="NO()">
	</form>
</body>
</html>
