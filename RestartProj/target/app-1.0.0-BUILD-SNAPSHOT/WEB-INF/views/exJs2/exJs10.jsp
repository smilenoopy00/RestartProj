<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>Form 객체 - Select 객체</title>
	<script type="text/javascript">
		/*
			# Select 객체
			
			- 리스트 상자(size속성 2이상)나 콤보 상자(size=1)에 사용된다.
			- <select></select> 태그에 해당. 하위태그로 <option></option>태그를 가진다.
			
			- 멤버변수
			그림참조
			
		*/
		
		function SelectTest(form){
			var str = "꽃다발 : ";
			for(var i = 0; i < form.choice.length; i++){
				if(form.choice.options[i].selected == true){
					str += form.choice.options[i].text + "\n";	// text 속성은 각 select 요소의 문자열
				}
			}
			alert(str);
		}
			
		function SelectTest2(selectTag){
			win = window.open("","");
			
			if(selectTag.options[0].selected){
				win.location.href = "http://www.naver.com";
			}
			else if(selectTag.options[1].selected){
				win.location.href = "http://www.daum.net";
			}
			else if(selectTag.options[2].selected){
				win.location.href = "http://www.google.com";
			}
		}
		
	</script>
</head>
<body>
	<form name="frm1">
		<select name="choice1" size=1>
			<option value="rose" selected>장미</option>
			<option value="lily">백합</option>
			<option value="daisy">국화</option>
			<option value="mint">박하</option>
			<option value="violet" selected>제비꽃</option>
			<option value="clover">토끼풀</option>
		</select>
		<p>
		<input type="button" value="선택하기" onClick="SelectTest(this.form)"/>
	</form>
	
	<form name="frm2">
		<select name="choice2" size=3>
			<option>네이버</option>
			<option>다음</option>
			<option>구글</option>
		</select>
		<p>
		<input type="button" value="선택한 사이트로 이동" onClick="SelectTest2(frm2.choice2)"/>	<!-- 핸들러내에서 직접 폼이름을 적어넘겨도됨. -->
	</form>
</body>
</html>
