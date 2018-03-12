<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>입찰가 현재가 비교하기 예제</title>
	<!-- 
		<예제의 전체적인 조건> 
		1. 전체 내용이 화면 중앙에 위치
		2. 제목 글자 크기는 <h2>크기
		3. 이미지 위치는 html문서와 같은 위치
		4. "시장가" 가격은 파란색
		5. 현재가 입력란은 입력할 수 없도록한다.
		6. [입찰] 버튼 클릭 시 현재가보다 입찰가가 낮으면 오류메시지 출력
	 -->
	 
	 <script type="text/javascript">
	 	function tender(form){
	 		// 콤마가 포함된 문자열의 경우 Number를 사용하면 NaN을 리턴하고
	 		// parseInt를 사용하면 콤마이전의 문자열까지만 반환한다.
	 		// 실무에서는 좀더 세밀한 작업을 해줘야하지만 여기서는 value에서 콤마를 빼버렸다.
	 		if(parseInt(form.finalCost.value) < parseInt(form.curCost.value)){
	 			alert("현재가보다 낮은 금액을 입력하셨습니다.");
	 			form.finalCost.focus();
	 			return;
	 		}else{
	 			form.submit();
	 		}
	 	}
	 	function reset(){
	 		frm1.finalCost.value = "";
	 	}
	 </script>
</head>
<body>
	<center>
		<h2><ins>상품 경매</ins></h2>
		
		<table width=550 border=1 cellspacing=1 cellpadding=5>
			<tr>
				<td align="center" valign="bottom">
					<img src="/resources/img/monitor.jpg" border=1 width=250 height=250/>
				</td>
				<td valign="bottom">
					<b>[상품명] TFT-LCD 모니터</b><br>
					<b>[시장가] <font color="blue">600,000 원</font></b><p>
					<form name="frm1">
						<b>[현재가]</b><input type="text" name="curCost" size=8 readonly value="500000"/><br>
						<b>[입찰가]</b><input type="text" name="finalCost" size=8/>&nbsp;&nbsp;
						<input type="button" value="입찰" onClick="tender(frm1)"/>&nbsp;
						<input type="button" value="취소" onClick="javascript:reset()"/>	<!-- javacript: 이거는 왜쓰는거임? -->
					</form>
					<p>
				</td>
			</tr>
		</table>
		
	</center>
</body>
</html>
