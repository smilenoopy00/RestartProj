<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>전송폼의 데이터 오류 확인하기 예제 2</title>
	<!-- 
		<예제의 전체적인 조건> 
		1. 서비스를 선택하지 않고 찾기를 누르면 오류 메시지를 출력한다.
		1-1. 경고창에서 확인을 누르면 "ID찾기"가 선택되게한다.
		2. "ID찾기" 또는 "비밀번호찾기"를 선택하고 이름에 입력없이 찾기를 누르면
			이름을 입력하라는 메시지를 띄운다. 확인을 누르면 입력란에 커서를 위치한다.
		3. 주민등록번호의 길이가 13이 아닌 경우 오류메시지를 출력한다.
		3-1. 메시지 확인 후 주민등록번호를 지우고 앞자리 입력란에 커서를 위치한다.
		4. 폼의 입력된 데이터를 전송한다.
	 -->
	 
	 <script type="text/javascript">
	 	
	 	function btSubmit(form){
	 		var strNm = form.nm.value;
	 		var strId = form.id.value;
	 		var jumin = parseInt(form.jumin1.value.length) + parseInt(form.jumin2.value.length);
	 		
	 		if(!form.findRd[0].checked && !form.findRd[1].checked){
	 			alert("찾을 서비스를 선택하세요.");
	 			form.findRd[0].checked = true;
	 			return;
	 		}
	 		else if(form.findRd[0].checked && strNm == ""){
	 			alert("ID 찾기를 선택하시면 이름을 입력해야합니다.");
	 			form.nm.focus();		// 왜 안되지????
	 			return;
	 		}
	 		else if(form.findRd[1].checked && strId == ""){
	 			alert("비밀번호 찾기를 선택하시면 사용자ID를 입력해야합니다.");
	 			form.nm.focus();		// 왜 안되지????
	 			return;
	 		}
	 		else if(jumin != 13){
	 			alert("주민번호가 잘못되었습니다.");
	 			form.jumin1.value = "";
	 			form.jumin2.value = "";
	 			form.jumin1.focus();		// 포커스
	 			return;
	 		}else{
	 			form.submit();	// 이렇게 직접 submit을 코딩해준다.
	 		}
	 		
	 	}
	 </script>
</head>
<body>
	<center>
		<h1><ins>ID 및 비밀번호 찾기</ins></h1>
		<form name="frm1">
			<table width=400 border=1 cellspacing=1>
				<tr>
					<td align="center">선 택</td>
					<td>
						&nbsp;<input type="radio" name="findRd" value="id_find" id="id_find"/><label for="id_find">ID 찾기</label>
						&nbsp;<input type="radio" name="findRd" value="pw_find" id="pw_find"/><label for="pw_find">비밀번호 찾기</label>
					</td>
				</tr>
				<tr>
					<td align="center">이름</td>
					<td>
						&nbsp;<input type="text" name="nm" size=10/>
					</td>
				</tr>
				<tr>
					<td align="center">사용자ID</td>
					<td>
						&nbsp;<input type="text" name="id" size=10/>
					</td>
				</tr>
				<tr>
					<td align="center">비밀번호</td>
					<td>
						&nbsp;<input type="password" name="pw" size=10/>
					</td>
				</tr>
				<tr>
					<td align="center">주민번호</td>
					<td>
						&nbsp;<input type="text" name="jumin1" size=8/>
						&nbsp;-&nbsp;
						<input type="text" name="jumin2" size=8/>
					</td>
				</tr>
			</table>
			
			<p><p>
			ID와 비밀번호를 모르는 경우는 이름과 주민번호를 입력하세요.
			<p><p>
			<!-- valid 과정을 거쳐야하기때문에 submit버튼을 사용하지않고 직접 코딩해준다. -->
			<input type="button" value="찾기" onClick="btSubmit(frm1)"/>&nbsp;&nbsp;
			<input type="reset" value="지우기"/>
		</form>
		
	</center>
</body>
</html>
