<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>DOM(문서 객체 모델) 개요</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<!-- <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script> -->
	<script type="text/javascript">
		/*
			# DOM의 정의
			
			- Document Object Model의 약자
			- 웹문서의 내용, 구조, 스타일을 변경하거나 접근하기 위한 구조
			- W3C에서는 DOM의 표준 규격을 제시하고있음
			
			
			# DOM의 특징
			
			- Document(문서) : HTML을 의미한다.
			- Object(객체) : 자바스크립트에서 HTML문서 전체에 존재하는 요소들을 객체로 인식한다는 의미
							 이 객체는 DOM형식에 있어 노드라는 개념으로 전환되며 element, text, attribute 등이 존재한다.
							 DOM tree를 구성한다.
							 
							1. Element node
							- HTML문서 내의 태그들을 의미한다.
							2. Text node
							- HTML문서 내의 실제 내용을 의미한다.(꾸밈없이 브라우저상에 보여지는 text들)
							- Text node는 반드시 element node 안에 포함되어 있어야한다.
							- 그러나 Text node가 element node를 포함하거나 attribute node를 소유할 수는 없다.
							3. Attribute node
							- 모든 Attribute node는 html태그 내에 포함된다.
							- (속성, 값)의 한쌍으로 표현된다.
							- Element node안에 포함되며, Element node를 포함 시킬 수 없다. 
			
			- DOM tree의 속성
			parentNone : 바로 상위에 있는 노드(요소)
			firstChild : 바로 하위에 있는 노드 중 가장 왼쪽 노드
			lastChild : 바로 하위에 있는 노드 중 가장 오른쪽 노드
			previousSibling : 자신을 기준으로 왼쪽에 있는 노드(형제노드 중 이전 노드)
			nextSibling : 자신을 기준으로 오른쪽에 있는 노드(형제노드 중 다음 노드)
			
			- DOM tree의 메소드
			createElement : 새로운 노드를 생성한다.
			getElementById : 특정 아이디를 가지고 있는 태그를 리턴한다.
			getElementByTagName : 태그 이름으로 해당 태그를 리턴한다.
			getAttribute : 원하는 태그의 속성을 리턴한다.
			setAttribute : 원하는 태그의 속성 값을 세팅한다.
			
			=> 위의 속성과 메소드는 document객체로 접근가능하다.
				예) document.getElementByTagName("div");
			
			
			# DOM에 접근 방법
			
			1. Javascript
			위의 DOM tree 메소드를 사용하여 접근한다.
			예1) document.getElementByTagName("div");
			
			2. jQuery
			아래와 같이 간단히 한줄로 표현가능하다.
			예1) jQuery("div");
			예2) $("div").CSS("background-color","#000000");
			
		*/
	</script>
</head>
<body>
	
</body>
</html>
