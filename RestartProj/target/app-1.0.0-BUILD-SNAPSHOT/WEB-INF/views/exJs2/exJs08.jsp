<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>Form 객체 - Button, Submit, Reset, FileUpload 객체</title>
	<script type="text/javascript">
		/*
			# Button 객체
			
			- <input type="button"> 태그에 해당
			
			- 멤버변수
			name,
			value : 버튼위에 쓰여진 글자. 요즘엔 css 이미지로 작업함.
			type : button값을 가진다.
			
			- 메소드
			click()
				
			- 이벤트 핸들러
			onClick : 버튼을 클릭하는 순간 실행되는 핸들러
			onMouseDown : 마우스 버튼을 눌렀을 때 실행되는 핸들러
			onMouseUp : 마우스 버튼을 놓았을 때 실행되는 핸들러
			
			
			
			# Submit 객체
			
			- <input type="submit" > 에 해당됨. 태그로 추가하게되면 버튼으로 보임
			- 사용자의 입력을 서버로 전달해준다.
			
			- 멤버변수
			name, 
			type : submit 값을 가진다.
			value : submit 버튼 위에 쓰여진 글자
			
			- 메소드
			click()
			
			- 이벤트 핸들러
			onClick : 버튼을 클릭하는 순간 실행되는 핸들러
			
			
			
			# Reset 객체
			
			- 모든 입력값을 초기화
			- <input type="reset" > 에 해당. 버튼모양이다.
			
			- 멤버변수
			name,
			value : 버튼위에 쓰여진 글자.
			type : reset값을 가진다.
			
			- 메소드
			click()
			
			- 이벤트 핸들러
			onClick : 버튼을 클릭하는 순간 실행되는 핸들러
			
			
			
			# FileUpload 객체
			
			- 자신의 컴퓨터에 있는 파일을 업로드하고자 할 때
			
			- 멤버변수
			name, 
			type : file 값이 입력된다.
			value : 파일경로
			
			- 이벤트 핸들러
			onClick : 버튼을 클릭하는 순간 실행되는 핸들러
			
		*/
		
		function Test(value){
			document.write(value.value + "을 누르셨습니다.");
		}
			
		function fileUpload(form){
			alert("선택한 파일은 : " + form.f_name.value + "입니다.");
		}
		
	</script>
</head>
<body>
	<form name="frm1">
		<!-- this : 해당 태그의 객체를 의미함 -->
		<input type="button" value="버튼1" onClick="Test(this)"/><br>
		<input type="button" value="버튼2" onClick="Test(this)"/><br>
		<input type="button" value="버튼3" onClick="Test(this)"/><br>
	</form>
	<hr>
	<form name="frm2">
		주 소 : <input type="text" size=30 name="addr"/><p>
		전화번호 : <input type="text" size=10 name="phone"/><p>
		<input type="submit" value="전송"/>
		<input type="reset" value="초기화"/>
	</form>
	<hr>
	<hr>
	<form name="frm3">
		<!-- this.form : 현재 태그가 속한 form 객체를 리턴 -->
		<input type="file" name="f_name" onClick="fileUpload(this.form)"/>
	</form>
</body>
</html>
