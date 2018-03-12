<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>jQuery 이벤트 - event handerler attachment 1</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<!-- <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script> -->
	<script type="text/javascript">
		/*
			
			# Events Handler Attachment
			
			1 .bind()
			
			- 선택된 element에 대해 하나이상의 이벤트 핸들러를 추가한다.
			- $(selector).bind(event, data, function, map)
			- 기본적인 event 핸들러와 다른 점은 여러개의 이벤트들을 연결해서 발생 시킬 수 있다는 점이다.
			- 예) $(selector).bind( { 
									  eventName1:function(){	실행할 코드		},
									  eventName2:function(){	실행할 코드		},
									  eventName3:function(){	실행할 코드		}
									})
			
			
			2 .delegate()	??????????
			
			- 선택된 element와 자식 element에 대해 하나 이상의 이벤트를 연결하고 이벤트 발생 시 실행할 함수를 지정한다.
			- 예) $(selector).delegate(childSelector, event, data, function)
			
			
			3 .die()
			
			- jQuery 1.9버전에서 삭제됨. 대신 .off()를 사용한다.
			- 선택된 element에 대해 하나이상의 이벤트를 제거한다.
			- 예) $(selector).die(event, function)
			
			
			4 .live()
			
			- jQuery 1.9버전에서 삭제됨. 대신 .on()를 사용한다.
			- 선택된 element에 대해 하나이상의 이벤트를 연결하고 발생할 때 실행될 함수를 지정한다.
			- 예) $(selector).live(event, function)
			
			
			5 .off()
			
			- .on() 메소드와 연결된 이벤트를 제거하는데 사용된다.
			- jQuery 코드를 단순화 시키고 api에 일관성을 제공한다.
			- 예) $(selector).off(event);
			
			
			6 .on()
			
			- 선택된 element와 자손 element에 대해 하나 이상의 이벤트를 연결한다.
			- bind(), live(), delegate() 함수들을 대체한다.
			- 일회성으로 실행하고 제거할 이벤트는 .one()을 사용한다.
			- 이벤트 함수 세팅 시 : $(selector).on("이벤트명1 이벤트명2 이벤트명3 ...", {받을변수명:넘길값}, 함수)
			
		*/
		
		jQuery(document).ready(function(){
			// 예제 1
			$("p.ex1").bind("click", function(){
				alert("클릭!");
			});
			
			// 예제 2
			$("div.ex2").delegate("p.ex2", "click", function(){
				$("p.ex2").css("background-color","pink");
			});
			
			// 예제 3
			$("p.ex3").on("click", function(){
				$(this).css("background-color","pink");
			});
			$(".bt1").click(function(){
				$("p.ex3").off("click");
			});
			
			// 예제 4
			$("p.ex4").on("click", function(){
				alert("클릭!!");
			});
			
		});	
	</script>
</head>
<body bgcolor="#feffb8">
	<h1> Welcome to jQuery World!!!</h1>
	<h2>지금부터 연습문제 시작합니다.</h2>
	
	<hr>
	<p class="ex1"><font color="blue" size=5>클릭하세요</font></p>
	
	<div class="ex2" style="background-color:yellow;">
		<p class="ex2">여기는 div 안에 있는 p태그 입니다.</p>
	</div>
	<p class="ex2">여기는 바깥에 있는 p태그 입니다.</p>
	
	<p class="ex3">이 글을 클릭하면 배경이 바껴요</p>
	
	<p class="ex4">클릭하세요</p>
	
	<hr>
	
	<button class="bt1">배경색바꾸기 event handler 삭제</button>&nbsp;
	
</body>
</html>
