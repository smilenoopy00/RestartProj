<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>전송폼의 데이터 오류 확인하기 예제 1</title>
	<!-- 
		<예제의 전체적인 조건> 
		1. [보기]와 같이 실행되도록하며 이름에 아무것도입력하지않고 추가하기를 누르면 오류메시지를 출력하게한다.
		1-1. 메시지창에서 확인을 누르면 커서를 이름을 입력하는 텍스트 박스에 위치 시킨다.
		2. 메일주소에 @기호가 없으면 오류 메시지를 출력한다.
		2-1. 메시지창에서 확인 버튼을 누르면 이름과 메일주소의 내용을 지우고 이름 입력란에 커서를 위치 시킨다.
		3. 폼의 입력된 데이터를 전송하고 화면과 같이 실행하게 한다.
	 -->
	 
	 <script type="text/javascript">
	 	
	 	function btSubmit(form){
	 		var strNm = form.nm.value;
	 		if(strNm == ""){
	 			alert("이름을 입력하지 않았습니다.");
	 			form.nm.focus();		// 왜 안되지????
	 			return;
	 		}
	 		var strEmail = form.email.value;
	 		if(strEmail.indexOf('@') == -1){
	 			alert("메일주소가 잘못 입력되었습니다.");
	 			form.nm.value = "";
	 			form.email.value = "";
	 			form.nm.focus();		// 포커스
	 			return;
	 		}
	 	}
	 </script>
</head>
<body>
	<center>	<!-- 이 태그가 감싼 부분은 브라우저에서 가운데 정렬됨. -->
		<h1><ins>주소록현황</ins></h1>	<!-- <u>도 밑줄태그  -->
		<form name="frm1">
			<table width=400 border=1 cellspacing=1>
				<tr>
					<td align="center">이름</td>
					<td>
						&nbsp;<input type="text" name="nm" size=10/>
					</td>
				</tr>
				<tr>
					<td align="center">메일주소</td>
					<td>
						&nbsp;<input type="text" name="email" size=30/>
					</td>
				</tr>
				<tr>
					<td align="center">전화번호</td>
					<td>
						&nbsp;<input type="text" name="tel" size=10/>
						&nbsp;<input type="radio" name="telRd" value="phone" id="phone"/><label for="phone">핸드폰</label>
						&nbsp;<input type="radio" name="telRd" value="home" id="home"/><label for="home">집</label>
						&nbsp;<input type="radio" name="telRd" value="office" id="office"/><label for="office">직장</label>
					</td>
				</tr>
				<tr>
					<td align="center">팩스번호</td>
					<td>
						&nbsp;<input type="text" name="fax" size=10/>
					</td>
				</tr>
			</table>
			
			<p><p>
			
			<input type="submit" value="추가하기" onClick="btSubmit(frm1)"/>&nbsp;&nbsp;
			<input type="reset" value="지우기"/>
		</form>
		
	</center>
</body>
</html>
