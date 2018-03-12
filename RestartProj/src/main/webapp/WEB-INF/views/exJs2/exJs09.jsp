<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>Form 객체 - Radio, Checkbox 객체</title>
	<script type="text/javascript">
		/*
			# Radio 객체
			
			- 단일 선택을 위한 입력양식
			- <input type="radio"/> 태그에 해당
			- 뒤에 <label for="라디오태그id값"></label>태그를 추가하여 각 버튼의 캡션을 적어줄수있다. 
			
			- 멤버변수
			name : 라디오 그룹을 의미. 서버로는 Vo값으로 선택된 라디오 value값이 넘어간다.
			value : 각 버튼의 값
			type : radio값을 가진다.
			checked : 입력양식의 체크 여부
			
			- 메소드
			click()
			
			
			# Checkbox 객체
			
			- 다중 선택을 위한 입력양식
			- <input type="checkbox"/> 에 해당됨.
			- 뒤에 <label for="체크태그id값"></label>태그를 추가하여 각 버튼의 캡션을 적어줄수있다.
			
			- 멤버변수
			name : 첵크박스 그룹을 의미.
			type : checkbox 값을 가진다.
			value : 각 버튼의 값
			checked : 해당 버튼이 체크되었는지 여부
			defaultChecked : 디폴트 체크 여부
			
			- 메소드
			click()
			
		*/
		
		function RadioTest(form){
			for(var i = 0; i < form.drive.length; i++){	// form이름.태그name명.속성
				if(form.drive[i].checked == true){
					window.status = form.drive[i].value + " 드라이브가 선택되었습니다.";
					alert(form.drive[i].value + " 드라이브가 선택되었습니다.");
				}
			}		
		}
			
		function change(radioTag){
			document.bgColor = radioTag.value;
		}
		
		function CheckboxTest(tagNm){
			if(tagNm.checked == true){
				window.status = tagNm.value + " 드라이브가 선택되었습니다.";
			}
			else{
				window.status = tagNm.value + " 드라이브가 선택해제되었습니다.";
			}
		}
		
	</script>
</head>
<body>
	<form name="frm1">
		<input type="radio" name="driveRd" value="첫째" checked />A drive<br>
		<input type="radio" name="driveRd" value="둘째"/>B drive<br>
		<input type="radio" name="driveRd" value="셋째"/>C drive<br>
		<input type="radio" name="driveRd" value="넷째"/>D drive<br>
		<input type="radio" name="driveRd" value="다섯째"/>E drive<br>
		<input type="radio" name="driveRd" value="여섯째"/>F drive<p>
		<input type="button" value="확인" onClick="RadioTest(this.form)"/>
	</form>
	
	<form name="frm2">
		<input type="radio" name="color" value="lightblue" onClick="change(this)"/>하늘색<br>
		<input type="radio" name="color" value="pink" onClick="change(this)"/>분홍색<br>
		<input type="radio" name="color" value="yellow" onClick="change(this)"/>노란색<br>
	</form>
	
	<form name="frm3">
		<input type="checkbox" name="drivea" value="a" onClick="CheckboxTest(this)"/>A drive<br>
		<input type="checkbox" name="driveb" value="b" onClick="CheckboxTest(this)"/>B drive<br>
		<input type="checkbox" name="drivec" value="c" onClick="CheckboxTest(this)"/>C drive<br>
		<input type="checkbox" name="drived" value="d" onClick="CheckboxTest(this)"/>D drive<br>
		<input type="checkbox" name="drivee" value="e" onClick="CheckboxTest(this)"/>E drive<br>
		<input type="checkbox" name="drivef" value="f" onClick="CheckboxTest(this)"/>F drive<p>
	</form>
</body>
</html>
