<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>기본 필터 선택자 - basic filters</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<!-- <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script> -->
	<script type="text/javascript">
		/*
			# 만약 기본필터 선택자에 의해 적용되는 element가 중복될 경우 가장 마지막에 적용된 효과가 우선적으로 적용된다.

			
			1. :animated
			- 현재 애니메이션의 모든 요소를 선택한다.
			- 예) $(":animated")
			
			
			2. :eq()
			- body영역 전체에서 입력된 인덱스번호에 해당하는 element를 선택한다.
			- 주로 그룹의 특정 인덱스 요소를 선택하기위해 다른 선택자와 함께 사용한다.
			- 예) $(":eq(index)"), $("div:eq(3)")
			
			
			3. :even
			- body영역 전체에서 짝수 인덱스번호에 해당하는 element를 선택한다.
			- 주로 그룹의 특정 인덱스 요소를 선택하기위해 다른 선택자와 함께 사용한다.
			- 예) $("tr:even")
			
			
			4. :odd
			- body영역 전체에서 홀수 인덱스번호에 해당하는 element를 선택한다.
			- 주로 그룹의 특정 인덱스 요소를 선택하기위해 다른 선택자와 함께 사용한다.
			- 예) $("tr:odd")
			
			
			5. :gt()
			- 주어진 인덱스보다 큰 인덱스의 element를 선택한다.
			- 예) $("div:gt(3)")
			
			
			6. :header
			- 문서내의 모든 h태그를 선택한다.
			- 즉, <h1> ~ <h6> 태그를 선택한다.
			- 예) $(":header")
			
			
			7. :first
			- 첫번째 인덱스 element를 선택한다.
			- 주로 그룹의 특정 인덱스 요소를 선택하기위해 다른 선택자와 함께 사용한다.
			- 예) $("p:first")   ==   $("p:eq(0)")
			
			
			7-1. :first-child
			- 해당 element가 어떤 부모태그의 첫번째 자식인 경우 선택한다.
			- 주로 그룹의 특정 인덱스 요소를 선택하기위해 다른 선택자와 함께 사용한다.
			- 예) $("p:first-child")
			
			
			8. :last
			- 마지막 요소를 선택한다.
			- 주로 그룹의 특정 인덱스 요소를 선택하기위해 다른 선택자와 함께 사용한다.
			- 예) $("p:last")
			
			8-1. :last-child
			- 해당 element가 어떤 부모태그의 마지막 자식인 경우 선택한다.
			- 주로 그룹의 특정 인덱스 요소를 선택하기위해 다른 선택자와 함께 사용한다.
			- 예) $("p:last-child")
			
			
			9. :lt()
			- 주어진 인덱스보다 작은 인덱스의 element를 선택한다.
			- 예) $("tr:gt(3)")

			
			10. :not()
			- 해당 조건의 element를 제외한 element를 선택한다.
			- 예) $("div:not(.abc)") : div태그이면서 클래스명 abc인 것 제외 
				  $("div:not(#abc)") : div태그이면서 아이디명 abc인 것 제외
			
		*/
		
		jQuery(document).ready(function(){
			// 예제 1
			// $("p:eq(4)").css("background-color", "#f78fbe");
			
			// 예제 2
			/*
			function fnAni(){
				$("p:eq(6)").animate({width:"10%"},"slow");
				$("p:eq(6)").animate({width:"100%"},"slow", fnAni);	// 콜백함수 fnAni. 괄호 없이 이름만 적어준다.
			}
			fnAni();
			*/
			
			// 예제 3
			/*
			$("tr:even").css("background-color", "#cff78f");
			$("tr:odd").css("background-color", "#fbdaf5");
			*/
			
			// 예제 4
			// $("tr:gt(3)").css("background-color", "#c2f893");
			
			// 예제 5
			// $(":header").css("background-color", "#f7f893");
			
			// 예제 6
			// $("p:first").css("background-color", "#fbb1fa");
			
			// 예제 7
			// $("p:first-child").css("background-color", "#fbb1fa");
			
			// 예제 8
			// $("p:last").css("background-color", "#fbb1fa");
			
			// 예제 9
			// $("p:last-child").css("background-color", "#fbb1fa");
			
			// 예제 10
			// $("tr:lt(2)").css("background-color", "#c21893");
			
			// 예제 11
			/*
			$("p:not(.cls)").css("background-color", "#f7f893");
			$("p:not(.cls)").css("color", "#fb05f2");
			$("p:not(.cls)").css("font-size", "20pt");
			*/
			$("p:not(#bbb)").css("background-color", "#f7f893");
			$("p:not(#bbb)").css("color", "#fb05f2");
			$("p:not(#bbb)").css("font-size", "20pt");
			
		});	
	</script>
</head>
<body>
	<h1>Welcome jQuery world!!!</h1>
	<h2>지금부터 연습문제 시작합니다.</h2>
	<p class="aaa">안녕하세요!!!</p>
	당신의 관심사는 무엇입니까?
	<hr>
	<p id="bbb" class="cls"><b>교육</b></p>
	<p id="ccc" class="cls"><b>여행</b></p>
	<p id="ddd" class="cls"><b>일</b></p>
	<div style="border:1px solid black; padding:10px">
		<p>여기는 div태그 안의 p태그 영역입니다.</p>
		<p style="background:pink;">영역 1</p>
		<p style="background:violet;">영역 2</p>
		<p style="background:gold;">영역 3</p>
		<p>이것도 div태그 안의 p태그 영역입니다.</p>
	</div>
	<h3>꽃 테이블</h3>
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
			<td>물망초</td>
			<td>나를 잊지 마세요</td>
		</tr>
		<tr>
			<td>은행나무</td>
			<td>장수, 정숙, 장엄, 진혼</td>
		</tr>
		<tr>
			<td>진달래</td>
			<td>절제, 청렴, 사랑의 즐거움</td>
		</tr>
		<tr>
			<td colspan=2>
				<p class="cls">마지막 Row입니다.</p>
			</td>
		</tr>
	</table>

</body>
</html>
