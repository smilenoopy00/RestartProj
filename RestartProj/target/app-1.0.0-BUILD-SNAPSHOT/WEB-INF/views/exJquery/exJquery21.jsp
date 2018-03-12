<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>jQuery 이벤트 - form event</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<!-- <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script> -->
	<script type="text/javascript">
		/*
		
			- Form 필드에서만 작동하는 이벤트 들이다!!!!
			
			
			# .blur()
			
			- 선택된 폼이 포커스를 잃을 때 발생한다.
			- Trigger 시키는 경우 : $(selector).blur()
			  Trigger 시 실행될 함수 추가하는 경우 : $(selector).blur(function)
			
			
			# .change()
			
			- 선택된 폼의 값이 변경될 때 발생한다.
			- <select>태그에서는 <option>태그의 선택이 변경되었을 때 발생한다.
			- 포커스가 해당 폼에서 벗어나는 순간 체크한다.
			- Trigger 시키는 경우 : $(selector).change()
			  Trigger 시 실행될 함수 추가하는 경우 : $(selector).change(function)
			
					
			# .focus()
			
			- 마우스 클릭이나 tab-navigating에 의해 선택된 element가 포커스를 얻었을 때 발생한다.
			- Trigger 시키는 경우 : $(selector).focus()
			  Trigger 시 실행될 함수 추가하는 경우 : $(selector).focus(function)
			
			  
			# .select()
			
			- <input type=text/>나 <textarea> 태그의 내용을 드레그하여 블럭되었을 때 발생한다.
			- Trigger 시키는 경우 : $(selector).select()
			  Trigger 시 실행될 함수 추가하는 경우 : $(selector).select(function)
			  
				
			# .submit()
			
			- form이 전송될 때 발생한다.
			- <form> 태그에 대해서만 사용될 수 있다.
			- Trigger 시키는 경우 : $(selector).select()
			  Trigger 시 실행될 함수 추가하는 경우 : $(selector).select(function)
				
		*/
		
		jQuery(document).ready(function(){
			// 예제 1
			$("input.ex1").blur(function(){
				alert("포커스를 잃었어요");
			});
			
			// 예제 2
			$("input.ex2").change(function(){
				alert("값이 변경되었습니다.");
			});
			
			// 예제 3
			$("input.ex3").focus(function(){
				$("span").css("display","inline").fadeOut(2000);
			});
			
			// 예제 4
			$(".bt").click(function(){ 
				document.frm.submit();	// 바로 name명을 적고싶으면 document를 붙여야한다.
			});	// 함수를 직접 호출할 경우에는 이벤트가 발생한 것이 아니므로 아래 코드가 실행되지않는다.
			$("form").submit(function(){
				alert("전송되었습니다.");
			});
			
		});	
	</script>
</head>
<body bgcolor="#feffb8">
	<h1> Welcome to jQuery World!!!</h1>
	<h2>지금부터 연습문제 시작합니다.</h2>
	
	<hr>
	
	<form name="frm">
		이름 : <input type="text" class="ex1"/>
		주소 : <input type="text" class="ex2"/><p>
		
		<input type="text" class="ex3"/>&nbsp;<span>text box를 클릭하세요</span><p>
	
		<input type="submit" value="전송"/>	
		<input type="button" class="bt" value="전송기능있는 버튼"/>	
	</form>
	
</body>
</html>
