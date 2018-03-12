<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>Form 객체</title>
	<script type="text/javascript">
		/*
			# Form 객체
			
			- 클라이언트에서의 입력 데이터와 관련된 것들을 담당하며 하위 객체들도 마찬가지다.
			- <form> 태그에 해당한다.
			- 현재 브라우저에 존재하는 form들을 배열로 가지고 document.forms[i]로 표현한다.
			- form의 하위객체들(text, radio, submit ...)을 자바스크립트에서 접근하기위해서는 
			  document.form이름.하위객체name속성
			
			- <form> 태그의 형식
			<form action="" enctype="" method="" name="" target="">각종 input 태그들</form>
			action : 폼의 데이터를 처리하는 CGI프로그램의 url
			enctype : 폼의 데이터를 전송 시 암호화 방법 지정
			method : 폼의 데이터를 전송하는 방법 지정
			name : 폼의 이름. 중복가능하며 중복 시 그룹명으로도 사용. 서버에서 Vo 요소들과 매핑시킴
			target : CGI 프로그램에 의하여 전송되는 데이터를 출력할 윈도우 지정. frame 태그와 연관있음
			
			- 멤버변수
			name, action, enctype, method, target
			encoding : 암호화 방식
			length : 현재 페이지의 form의 개수
			elements : 해당 폼 안에있는 input 태그들을 요소로가지는 배열
						.value 로 해당 input태그의 value 값을 가져올수있다.
						
			document.폼이름.name명.속성명
		*/
		
		function info_form(){
			str = "name : " + document.form_1.name + "<br>";
			str += "action : " + document.form_1.action + "<br>";
			str += "target : " + document.form_1.target + "<br>";
			str += "method : " + document.form_1.method + "<br>";
			str += "encoding : " + document.form_1.encoding + "<br>";
			str += "length : " + document.form_1.length + "<br>";
			document.write(str);
		}
			
		
		function info(){
			var str;
			
			if(document.form_2.elements[0].value != ""){
				str = "전 화 : " + document.form_2.elements[0].value + "<br>";
			}else{
				str = "전 화 : 미입력<br>";
			}
			
			if(document.form_2.elements[1].value != ""){
				str += "주 소 : " + document.form_2.elements[1].value + "<br>";
			}else{
				str += "주 소 : 미입력<br>";
			}
			
			document.write(str);
		}
		
	</script>
</head>
<body>
	<!-- 예제 1 -->
	<form name="form_1" action="" method=get>	<!-- 여기서는 submit 버튼이나 함수가 없으므로 action의 주소로 데이터가 넘어갈일이 없다. -->
		<input type="button" value="폼 정보 보기" onClick="info_form()"/>
	</form>
	<hr>
	<!-- 예제 2 -->
	<form name="form_2">
		전 화 : <input type="text" name="tel" size=20/><p>
		주 소 : <input type="text" name="addr" size=50/><p>
		
		<input type="button" value="확 인" onClick="info()"/>
	</form>
	<hr>
	<!-- 예제 3 -->
	<form name="form_3">
		이 름 : <input type="text" name="name1" size=10/><p>
		전 화 : <input type="text" name="tel" size=20/><p>
		주 소 : <input type="text" name="addr" size=50/><p>
		핸드폰 : <input type="text" name="phone" size=20/><p>
	</form>
	
	<form name="form_4">
		<input type="reset" value="취소"/><p>
		<input type="submit" value="확인"/><p>
	</form>
	<hr>
	
	<script type="text/javascript">
		// 예제 3
		document.write("폼개수 : " + document.forms.length + "<br>");	// 예제 1,2 포함 총 4개
		document.write("form_3의 첫번째 요소의 name속성 : " + document.forms[2].elements[0].name + "<br>");
		document.write("form_4의 두번째 요소의 value속성 : " + document.forms[3].elements[1].value + "<br>");
	</script>
	
</body>
</html>
