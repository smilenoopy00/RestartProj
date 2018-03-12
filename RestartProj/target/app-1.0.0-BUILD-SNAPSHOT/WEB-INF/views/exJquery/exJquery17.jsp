<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>jQuery DOM 조작 2 - Add, Remove</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<!-- <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script> -->
	<script type="text/javascript">
		/*
			- HTML 태그도 포함하여 적용된다.
			
			
			# append()
			
			- 선택한 element 내부의 끝에 내용을 삽입한다.
			- 시작끝이 있는 태그라면 닫힘태그 바로 앞에 붙는다. 
				<Tag>기존내용 + 추가되는내용</Tag>
			- 여러개의 내용 추가 가능
				예) $(selector).append("text1", "text2", "text3", ...)
				
				
			# appendTo()
			
			- A.appendTo(B) : B 뒤에 A 가 붙는다.
			  A.append(B) : A 뒤에 B 가 붙는다.
			  
			
			# prepend()
			
			- 선택한 element 내부의 시작부분에 내용을 삽입한다.
			
			
			# before(), after()
			
			- 선택한 element의 외부의 시작부분과 끝부분에 내용을 삽입한다.
			
			
			# remove()
			
			- 선택된 element와 그 자손 element들을 삭제한다.
			- 삭제대상을 필터링 할 수 있다.
				예) $(selector).remove(selector)
			
			
			# empty()
			
			- 선택된 element의 자손 element들을 삭제한다.(자신은 제외)
			
		*/
		
		jQuery(document).ready(function(){
			// 예제 1
			$("button.bt1").click(function(){
				$(".p1").append("<b>추가된 Text</b>");
			});
			$("button.bt2").click(function(){
				$("ol").append("<li>추가된 리스트</li>");
			});
			
			// 예제 2
			$("button.bt3").click(function(){
				$(".p1").prepend("<b>추가된 Text</b>");
			});
			$("button.bt4").click(function(){
				$("ol").prepend("<li>추가된 리스트</li>");
			});
			
			// 예제 3 - HTML, jQuery, DOM으로 태그 만들기
			$(".bt5").click(function(){
				var txt1 = "<p>HTML 코드로 만든 텍스트</p>";
				var txt2 = $("<p></p>").text("jQuery로 만든 텍스트");	// 선택자로 태그를 입력해서 생성할 수도있구낭....
				var txt3 = document.createElement("p");
				txt3.innerHTML = "DOM으로 만든 텍스트";
				
				$("body").append(txt1, txt2, txt3);
			});
			
			// 예제 4
			$(".bt6").click(function(){
				$("img").before("<font color='blue'><b>앞쪽</b></font>");
			});
			$(".bt7").click(function(){
				$("img").after("<font color='blue'><b>뒤쪽</b></font>");
			});
			
			// 예제 5
			$(".bt8").click(function(){
				var txt1 = "<b>향긋한</b>";
				var txt2 = $("<i></i>").text("커피가");
				var txt3 = document.createElement("big");
				txt3.innerHTML = "좋아요!";
				$("img").after(txt1, txt2, txt3);
			});
			
			// 예제 6
			$("button.bt9").click(function(){
				$("#div1").remove();
			});
			
			// 예제 7
			$("button.bt10").click(function(){
				$("#div1").empty();
			});
			
			// 예제 8
			$("button.bt11").click(function(){
				$("p").remove(".p2");
			});
		});	
	</script>
</head>
<body bgcolor="#feffb8">
	<h1> Welcome to jQuery World!!!</h1>
	<h2>지금부터 연습문제 시작합니다.</h2>
	
	<hr>
	<p class="p1">여기는 p태그 안쪽입니다.</p>
	<p class="p1">여기는 또다른 p태그 안쪽입니다.</p>
	
	<ol>
		<li>리스트 1</li>
		<li>리스트 2</li>
		<li>리스트 3</li>
	</ol>
	
	<img src="/resources/img/coffee.gif"/>
	
	<div id="div1" style="height:150px;width:300px;border:1px solid black;background-color:'#eef6a9';">
		<p>
			여기는 div태그 안쪽에 있는 p태그 안쪽입니다.<br>
			<span>여기는 div태그 안쪽에 있는 p태그 안의 span 태그 안쪽입니다.</span>
		</p>
		<p class="p2">여기는 div태그 안쪽에 있는 또다른 p태그 안쪽입니다.</p>
	</div>
	<hr>
	
	<button class="bt1">p태그 끝에 추가하기</button>&nbsp;
	<button class="bt2">ol태그 끝에 추가하기</button>&nbsp;
	<button class="bt3">p태그 앞에 추가하기</button>&nbsp;
	<button class="bt4">ol태그 앞에 추가하기</button><p>
	
	<button class="bt5">종류별로 텍스트 추가하기</button>&nbsp;
	<button class="bt6">이미지 앞에 추가하기</button>&nbsp;
	<button class="bt7">이미지 뒤에 추가하기</button><p>
	
	<button class="bt8">종류별로 텍스트 추가하기</button>&nbsp;
	<button class="bt9">div element 삭제하기</button>&nbsp;
	<button class="bt10">div element 자손 element 삭제하기</button><p>
	
	<button class="bt11">remove() 시 필터링해서 삭제하기</button>&nbsp;
</body>
</html>
