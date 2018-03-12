<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>주소선택 팝업 만들기 예제</title>
	<!-- 
		<예제의 조건>
		1. 제목은 <h2>크기와 밑줄
		2. 상품명, 고객, 주소, 전화번호는 오른쪽 정렬
		3. 주소찾기 버튼을 클릭하면 주소가 나열된 팝업창이 뜬다.
		4. 팝업에서 원하는 주소를 클릭하면 주소가 부모창으로 자동 입력된다.
		5. 취소 버튼을 누르면 내용이 초기화된다.
	 -->
	 
	 <!-- 
	 	opener 객체, parent 객체 무슨차이???????
	  -->
	 
	 <script type="text/javascript">
	 	function writeFn(form){
	 		
	 	}
	 
	 	function findAddr(){
	 		var win = window.open("", "addrPop", "width=300, height=200, scrollbars=yes");
	 		
	 		// a태그 주소로 opener 사용하여 이동하려면 앞에 javascript: 꼭 써줘야함
	 		win.document.writeln("<html><body><h4 align='center'>주소찾기</h4><hr>");
	 		win.document.writeln("<ul><li><a href=\"javascript:opener.document.frm1.addr.value='서울 영등포구 영등포동'; opener.window.focus();\">영등포동</a></li>");
	 		win.document.writeln("<li><a href=\"javascript:opener.document.frm1.addr.value='서울 송파구 잠실본동'; opener.window.focus();\">잠실본동</a></li></ul><hr>");
	 		win.document.writeln("<center><input type='button' value='닫기' onClick='opener.window.focus();window.close();'/></center>");
	 		win.document.writeln("</form></body></html>");
	 		win.document.close();
	 	}
	 </script>
</head>
<body>
	<h2 align="center"><ins>상품 주문</ins></h2>
	<form name="frm1">
		<table border=1 cellpadding=5 cellspacing=1>
			<tr>
				<td align="right">상품명</td>
				<td>
					<input type="text" name="goodsNm" size=20/>
				</td>
			</tr>
			<tr>
				<td align="right">고객명</td>
				<td>
					<input type="text" name="userNm" size=20/>
				</td>
			</tr>
			<tr>
				<td align="right">주 소</td>
				<td>
					<input type="text" name="addr" size=50/>&nbsp;
					<input type="button" value="주소찾기" onClick="findAddr()"/>
				</td>
			</tr>
			<tr>
				<td align="right">전화번호</td>
				<td>
					<input type="text" name="tel" size=15/>
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
</body>
</html>
