<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>쇼핑몰 상세 페이지 만들기 예제</title>
	<!-- 
		<예제의 전체적인 조건> 
		1. 제목 글자 크기는 <h2> 크기
		2. 이미지는 셀 가운데 위치
		3. 이미지를 150*150으로 표시
		4. 가격은 파란색으로 표시
		5. 라디오버튼을 클릭하면 주문금액에 금액이 입력되도록 하라.
	 -->
	 
	 <script type="text/javascript">
	 	
	 	function selectRd(form){
	 		if(form.rd[0].checked){
	 			form.cost.value = "500,000";
	 		}
	 		else {
	 			form.cost.value = "700,000";
	 		}
	 	}
	 	
	 </script>
</head>
<body>
	<center>
		<h2><ins>상품 선택</ins></h2>
		<form name="frm1">
			<table width=500 border=1 cellspacing=1>
				<tr>
					<td align="center"><img src="/resources/img/monitor.jpg" width=150 height=150/></td>
					<td align="center"><img src="/resources/img/camcoder.jpg" width=150 height=150/></td>
				</tr>
				<tr>
					<td align="center">LCD모니터<br><font color="blue">500,000 원</font></td>
					<td align="center">캠코더<br><font color="blue">700,000 원</font></td>
				</tr>
				<tr>
					<td align="center">
						<label for="rd_1">[선택]</label><input type="radio" name="rd" id="rd_1" value="monitor" onClick="selectRd(this.form)"/>
					</td>
					<td align="center">
						<label for="rd_2">[선택]</label><input type="radio" name="rd" id="rd_2" value="camcoder" onClick="selectRd(this.form)"/>
					</td>
				</tr>
				<tr>
					<td align="center" colspan=2>
						<b>[주문금액]</b><input type="text" name="cost" align="right"/><b> 원</b>
					</td>
					
				</tr>
			</table>
		</form>
		
	</center>
</body>
</html>
