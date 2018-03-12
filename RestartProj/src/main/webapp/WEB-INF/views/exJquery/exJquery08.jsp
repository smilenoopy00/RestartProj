<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>텍스트, Visibility 필터 선택자 - Content, Visibility filters</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<!-- <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script> -->
	<script type="text/javascript">
		/*
			1. :contains(string)
			- 텍스트에 해당 문자열을 포함하고 있는 태그를 선택한다.
			- 주로 element와 같이 쓰여서 해당 element의 텍스트에서 문자열을 검색한다.
			- 해당 element의 텍스트에서 찾을 수도 있고 자식 element안에서도 찾을 수 있다.
			- string은 대소문자를 구별한다.
			- 예) $("div:contains(good)")
			
			
			2. :empty
			- 하위 element를 가지지 않거나 텍스트를 가지지 않는 element들을 선택한다.
			- 예) $(":empty")
			
			
			3. :has()
			- 입력된 element를 자손으로 가진 element를 선택한다.
			- 복수의 element를 입력할때는 콤마로 구분한다.
			- 예) $("div:has(span)")
			
			
			4. :parent
			- 하위 element를 가지거나 텍스트를 가지는 element를 선택한다.
			- :empty와 반대개념
			- 예) $("td:parent")
			
			
			5. :hidden
			- 다음과 같은 hidden element를 선택한다.
				display:none 설정되어있는 것들
				form태그의 type 속성이 hidden으로 되어있는 것들
				너비와 높이가 0으로 설정된 것들
				부모 element의 속성이 hidden 인 것들
			- 예) $(":hidden").show();
			
			
			6. :visible
			- 현재 보여지는 모든 element를 선택한다.
			- :hidden과 반대개념. 즉, hidden이 아닌 element들을 선택한다.
			- 예) $("p:visible").hidden();
			

		*/
		
		jQuery(document).ready(function(){
			// 예제 1
			// $("h1:contains(jQuery)").css("background-color", "#bcfc82");
			
			// 예제 2
			// $("div:contains(영역)").css("background-color", "#bcfc82");
			// div태그의 텍스트는 없지만 하위 태그들의 텍스트 중 해당 문자열을 포함하는 태그가 있어서
			// div태그가 선택되었고 css적용도 
			// 하위에 해당 문자열이 있는 p태그가 아닌 div태그에 적용된다. 
			
			// 예제 3
			// $(":empty").css("background-color", "#a1e3f9");
			
			// 예제 4
			// $("p:has(span)").css("border", "double red");
			// $("tr:has(p)").css("background-color", "#a1e3f9");
			
			// 예제 5
			// $("td:parent").css("background-color", "#a1e3f9");
			
			// 예제 6
			// $(":hidden").show(3000);
			
			// 예제 6
			// $(":hidden").show(3000);
			
		});	
	</script>
</head>
<body>
	<h1> Welcome to jQuery World!!!</h1>
	<h2>지금부터 연습문제 시작합니다.</h2>
	<p class="aaa">안녕하세요!!!</p>
	당신의 관심사는 무엇입니까?
	<p id="bbb"><b>교육</b></p>
	<p id="ccc"><b>여행</b></p>
	<p id="ddd"><b>일</b></p>
	<hr>
	
	<div style="border:1px solid black; padding:10px">
		<p>여기는 div태그 안의 p태그 영역입니다.</p>
		<p><span>영역 1</span></p>
		<p>영역 2</p>
		<p>영역 3</p>
		<p>이것도 div태그 안의 p태그 영역입니다.</p>
	</div>
	
	<table border="1" bordercolor="green" width=500>
		<tr>
			<th>꽃이름</th>
			<th>꽃말</th>
		</tr>
		<tr>
			<td>국화</td>
			<td>성실, 정조, 고귀, 진실</td>
		</tr>
		<tr>
			<td>난초</td>
			<td>청초한 아름다움</td>
		</tr>
		<tr>
			<td></td>
			<td>나를 잊지 마세요</td>
		</tr>
		<tr>
			<td>은행나무</td>
			<td>장수, 정숙, 장엄, 진혼</td>
		</tr>
		<tr>
			<td>진달래</td>
			<td></td>
		</tr>
		<tr>
			<td colspan=2>
				<p class="cls">마지막 Row입니다.</p>
			</td>
		</tr>
	</table>
	<hr>
	<div>
		히든 테스트 영역입니다.
		 
		<!-- 너비, 높이 0으로 하는건 왜 안되지?????? -->
		<!-- <p style="width:0;height:0;">여기는 p 태그의 hidden 영역입니다.</p> -->
		<div style="display:none;">
			<span>여기는 div태그의 span 영역입니다.</span>
		</div>
		
		<div style="display:none;">여기는 div 태그의 hidden 영역입니다.</div>
	</div>
</body>
</html>
