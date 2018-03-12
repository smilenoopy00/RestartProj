<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>거래처 등록하기 예제</title>
	<!-- 
		<예제의 전체적인 조건> 
		1. 제목 글자 크기는 <h2>크기
		2. 거래처, 주소, 전화번호, 품명은 오른쪽 정렬
		3. 품명은 다중선택 가능하게
		4. 쓰기 버튼을 클릭했을 때 전화번호가 없으면 에러 메시지를 출력
		5. 취소 버튼을 누르면 내용이 초기화된다.
	 -->
	 
	 <script type="text/javascript">
	 	function writeFn(form){
	 		if(form.tel.value == ""){
	 			alert("전화번호를 입력하세요.");
	 			form.tel.focus();
	 			return;
	 		}else{
	 			form.submit();
	 		}
	 	}
	 </script>
</head>
<body>
	<center>
		<h2><ins>거래처 등록</ins></h2>
		
		<form name="frm1">
		<table width=500 border=1 cellpadding=5 cellspacing=1>
			<tr>
				<td align="right">
					거래처명
				</td>
				<td>
					<input type="text" name="nm" size=20/>
				</td>
			</tr>
			<tr>
				<td align="right">
					주 소
				</td>
				<td>
					<input type="text" name="addr" size=50/>
				</td>
			</tr>
			<tr>
				<td align="right">
					전화번호
				</td>
				<td>
					<input type="text" name="tel" size=15/>
				</td>
			</tr>
			<tr>
				<td align="right">
					품 명
				</td>
				<td>
					<input type="checkbox" name="kinds" value="mainboard" id="mainboard"/><label for="mainboard">메인보드</label>
					<input type="checkbox" name="kinds" value="monitor" id="monitor"/><label for="monitor">모니터</label>
					<input type="checkbox" name="kinds" value="printer" id="printer"/><label for="printer">프린터</label>
					<input type="checkbox" name="kinds" value="harddisk" id="harddisk"/><label for="harddisk">하드디스크</label>
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
