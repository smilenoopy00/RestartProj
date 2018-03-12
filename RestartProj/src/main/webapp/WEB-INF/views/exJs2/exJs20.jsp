<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>상담카드 작성 시 오류 체크하기 예제</title>
	<!-- 
		<예제의 전체적인 조건> 
		1. 제목 글자 크기는 <h2>크기
		2. 이름, 이메일, 제목, 내용은 오른쪽 정렬
		3. 내용 입력란은 5행 60열
		4. 쓰기 버튼을 클릭했을 때 이메일이 없으면 에러 메시지를 출력
		5. 취소 버튼을 누르면 내용이 초기화된다.
	 -->
	 
	 <script type="text/javascript">
	 	function writeFn(form){
	 		if(form.email.value == ""){
	 			alert("이메일을 입력하세요.");
	 			form.email.focus();
	 			return;
	 		}else{
	 			form.submit();
	 		}
	 	}
	 </script>
</head>
<body>
	<center>
		<h2><ins>상담 하기</ins></h2>
		
		<form name="frm1">
		<table width=550 border=1 cellpadding=5 cellspacing=1>
			<tr>
				<td align="right">
					이 름
				</td>
				<td>
					<input type="text" name="nm" size=20/>
				</td>
			</tr>
			<tr>
				<td align="right">
					e-mail
				</td>
				<td>
					<input type="text" name="email" size=30/>
				</td>
			</tr>
			<tr>
				<td align="right">
					제 목
				</td>
				<td>
					<input type="text" name="title" size=50/>
				</td>
			</tr>
			<tr>
				<td align="right">
					내 용
				</td>
				<td>
					<textarea name="content" rows=5 cols=60></textarea>
				</td>
			</tr>
			<tr>
				<td colspan=2 align="center">
					<input type="button" value="쓰기" onClick="writeFn(this.form)"/>&nbsp;
					<input type="reset" value="취소"/>
				</td>
			</tr>
		</table>
		</form>
		
	</center>
</body>
</html>
