<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>Form 객체 - Text, Password, Textarea, Hidden 객체</title>
	<script type="text/javascript">
		/*
			# Text 객체
			
			- <input type="text"> 태그에 해당
			
			- 멤버변수 : 모두 html태그에서 속성에 해당함
			name, value, defaultvalue 등
			type : text값을 가진다.
			size : 상자의 크기
			maxlength : 입력값 길이
			
			- 메소드
			focus(), blur(), select()
				
			- 이벤트 핸들러
			onFocus : 해당 text 상자가 포커스된 경우
			onBlur : 해당 text 상자에서 포커스가 다른 곳으로 이동한 경우
			onSelect : 
			onChange : value값이 변경되 었을 경우
			
			
			# Password 객체
			
			- 텍스트 객체와 비슷하지만 입력되는 데이터가 * 또는 점으로 보여진다.
			
			- 멤버변수
			name, value, defaultvalue 등
			type : password 값을 가진다.
			
			- 메소드
			focus(), blur(), select() 등
			
			
			# Textarea 객체
			
			- 여러줄 입력가능
			- <textarea></textarea>태그에 해당
			
			- 멤버변수
			name, value, defaultvalue, type 등
			cols, rows : 사이즈
			
			- 메소드
			focus(), blur(), select() 등
			
			- 이벤트 핸들러
			onFocus, onBlur, onSelect, onChange, onKeyDown, onKeyPress, onKeyUp
			
			
			
			# Hidden 객체
			
			- 숨겨진 입력양식을 위한 것
			- 서버에서 데이터처리를 위해 필요하지만 사용자에게는 안보이게한다.
			
			- 멤버변수
			name, value, defaultvalue 등
			type : hidden 값을 가진다.
			
		*/
		
		function ok(){
			if(document.frm2.id1.value != ""){	// document.폼이름.name명.value
				alert("입력되었습니다.");
			}
			else{
				alert("입력되지않았습니다.");
			}
		}
		
	</script>
</head>
<body>
	<form name="frm1">
	주 소 : <input type="text" size=30 name="addr" maxlength=5/>
	전화번호 : <input type="text" size=10 name="phone"/>
	</form>
	<hr>
	
	<form name="frm2">
	id1 : <input type="text" size=30 name="id1"/>
	id2 : <input type="text" size=10 name="id2"/>
	<input type="button" value="확인" onClick="ok()"/>
	</form>
	<hr>
	<form name="frm3">
	사용자 ID : <input type="text" size=10 name="id"/>
	비밀번호 : <input type="password" size=10 name="pw"/>
	</form>
	
	<hr>
	<form name="frm4">
	제 목 : <input type="text" size=30 name="title"/><p>
	<textarea name="content" cols=40 rows=5>
이 곳은 textarea 내용을 입력하는 곳입니다.	
	</textarea>
	</form>
	
	<hr>
	<form name="frm5">
	사용자 ID : <input type="text" size=10 name="id"/>
	비밀번호 : <input type="password" size=10 name="pw"/><p>
	Hidden 값 : <input type="hidden" name="hd" value="히든값"/>
	</form>
</body>
</html>
