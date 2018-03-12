<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>jQuery DOM 조작 1 - get, set</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<!-- <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script> -->
	<script type="text/javascript">
		/*
		
			# Get, Set Content
			
			text() : HTML 태그의 텍스트 내용을 반환하거나 세팅한다.
			html() : HTML 태그를 포함한 텍스트 내용을 반환하거나 세팅한다.
			val() : form 태그 관련 태그들의 value 속성 값을 반환하거나 세팅한다.
			
				
			# Get, Set Attributes
			
			attr() : 선택된 태그의 속성 값을 반환하거나 세팅한다.
			- 반환할 경우 : attr("속성명");
			- 세팅할 경우 : attr("속성명", "속성값")
							attr({"속성명1" : "속성값1", "속성명2" : "속성값2", ...})
			
			# Callback 함수???????????????????????????
			
			- 2개의 매개변수 : 현재 element의 idex, 원래 값
			- 아래 세개의 함수에서도 callback 함수를 사용할 수 있다.
			text(), html(), val() 
			
			
		*/
		
		jQuery(document).ready(function(){
			// 예제 1
			$("button.bt1").click(function(){
				alert("텍스트 : " + $("#testId").text());
			});
			$("button.bt2").click(function(){
				alert("HTML 코드 : " + $("#testId").html());
			});
			
			// 예제 2
			$(".bt3").click(function(){
				alert("value 값 : " + $("#testId2").val());
			});
			
			
			// 예제 3
			$(".bt4").click(function(){
				$("#testId").text("안녕하세요?");
			});
			$(".bt5").click(function(){
				$("#testId").html("<b>jQuery 강의 시간입니다.</b>");
			});
			$(".bt6").click(function(){
				$("#testId2").val("김희선");
			});
			
			// 예제 4
			$(".bt7").click(function(){
				alert($("#abc").attr("href"));
			});
			$(".bt8").click(function(){
				$("#abc").attr("href", "http://www.google.com");
			});
			$(".bt9").click(function(){
				$("#abc").attr({"href" : "http://www.google.com", "title" : "구글"});
			});
			
			// 예제 5 ???????????????????????????????/
			$(".bt10").click(function(){
				$("#testId").text(function(i, origText){
					return "Old text : " + origText + " New text : Hello world! (index : " + i + ")";
				});
			});
			$(".bt11").click(function(){
				$("#testId").html(function(i, origHtml){
					return "Old html : " + origHtml + " New html : Hello world! (index : " + i + ")";
				});
			});
			
		});	
	</script>
</head>
<body bgcolor="#feffb8">
	<h1> Welcome to jQuery World!!!</h1>
	<h2>지금부터 연습문제 시작합니다.</h2>
	
	<hr>
	<p id="testId">여기는 <font color="red">빨간색</font> 글자를 가지고 있습니다.</p>
	
	<p>Name : <input type="text" id="testId2" value="홍길동"></p>
	
	<p><a href="http://www.naver.com" id="abc" title="네이버">네이버</a></p>
	
	<hr>
	
	<button class="bt1">p태그의 텍스트보기</button>&nbsp;
	<button class="bt2">p태그의 HTML 보기</button>&nbsp;
	<button class="bt3">input 태그의 value 값 보기</button><p>
	
	<button class="bt4">p태그의 텍스트 세팅하기</button>&nbsp;
	<button class="bt5">p태그의 HTML 세팅하기</button>&nbsp;
	<button class="bt6">input 태그의 value 값 세팅하기</button><p>
	
	<button class="bt7">href 속성 값 보기</button>&nbsp;
	<button class="bt8">href 속성 값 세팅하기</button>&nbsp;
	<button class="bt9">href 속성 값 두개 세팅하기</button><p>
	
	<button class="bt10">Old/New Text 보기</button>&nbsp;
	<button class="bt11">Old/New Html 보기</button><p>
</body>
</html>
