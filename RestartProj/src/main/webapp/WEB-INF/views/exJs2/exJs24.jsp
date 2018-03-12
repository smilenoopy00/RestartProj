<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>로그인 창 만들기 예제</title>
	 <script type="text/javascript">
	 	function logIn(form){
	 		if(form.id.value.length < 5){
	 			alert("아이디를 5글자 이상 입력하세요");
	 			form.id.value = "";
	 			form.id.focus();
	 			return;
	 		}
	 		else if(form.pw.value.charAt(0) != 'P'){
	 			alert("비밀번호는 문자 P로 시작해야합니다.");
	 			form.pw.value = "";
	 			form.pw.focus();
	 			return;
	 		}
	 		else{
	 			form.submit();
	 		}
	 	}
	 </script>
</head>
<body>
	<h2 align="center"><ins>로그인 창 만들기</ins></h2>
	<form name="frm1">
		<table width=300 border=1 cellpadding=5 cellspacing=1>
			<tr>
				<td align="right">아이디</td>
				<td>
					<input type="text" name="id" size=10/>
				</td>
			</tr>
			<tr>
				<td align="right">비밀번호</td>
				<td>
					<input type="password" name="pw" size=20/>
				</td>
			</tr>
		</table>
		<p>
		<input type="button" value="로그인" onClick="logIn(this.form)"/>&nbsp;
		<input type="reset" value="취소"/>
	</form>
</body>
</html>
