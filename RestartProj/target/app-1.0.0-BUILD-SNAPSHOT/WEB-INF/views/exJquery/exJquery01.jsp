<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>Jquery 개요</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<!-- <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script> -->
	<script type="text/javascript">
		/*
			- 크로스브라우징을 구현하기 위한 일종의 자바스크립트 라이브러리이다.
			- 2006년 1월 John Resig가 발표한 오픈소스 라이브러리
			- 현재는 웹상에서 플래시를 대체할 수 있는 RIA(Rich Inernet Application)을 구현해주는 기술로 각광받고있음
			- 적게 입력하고 최대의 효과를 보자는 목적을 가지고있다.
			  (wirte less, do more)
			- 사용법이 간단하고 코딩이 직관적이며 성능도 뛰어나다.
			- DOM과 관련된 처리, 일관된 이벤트 연결, 시각적 효과, Ajax Application 개발 등을 쉽게 할 수 있는 강력한 기능을 가지고있다.
			- jQuery를 위한 선행 학습 : Javascript, 문서객체모델(Document Object Model), HTML, CSS
			
			- JQuery 라이브러리가 포함하고 있는 것들
			HTML/DOM 기능
			CSS 기능
			HTML event 함수
			Effects 와 Animations
			Ajax
			Utilities
			
			- jQuery는 거의 모든 작업에 대한 플러그인을 가지고있다.
			
			- jQuery 설치방법
			1. "jQuery.js"를 직접 다운받아 사용하는 방법(www.jQuery.com)
		       <script type="text/javascript" src="jquery-버전.js">를 추가해줘야한다.
			2. jQuery를 가지고 있는 CDN(Content Delivery Network)호스트를 이용하는 방법
			   <script type="text/javascript" src="http://code.jquery.com/jquery-버전.js">를 추가해준다.
			   
			   - 여러곳에서 CDN호스트 주소를 제공해주고있다.(min이 붙은 것은 압축된 버전을 의미함)
			   Google Ajax API CDN : http://ajax.googleapis.com/ajax/libs/jquery/버전/jquery.min.js
			   						 (최신버전 확인은 여기서 : http://docs.jquery.com/Downloading_jQuery)
			   Microsoft CDN : http://ajax.aspnetcdn.com/ajax/jQuery/jquery-버전.js
				    		   http://ajax.aspnetcdn.com/ajax/jQuery/jquery-버전.min.js
				    		   http://ajax.aspnetcdn.com/ajax/jQuery/jquery-버전-vsdoc.js
				    		   http://ajax.aspnetcdn.com/ajax/jQuery/jquery-버전.min.map
			   jQuery CDN : http://code.jquery.com/jquery-버전.js
				   			http://code.jquery.com/jquery-버전.min.js
				   			
			
			- jQuery의 출발은 jQuery() 함수이다.
			- jQuery() 함수를 통해 모든 결과가 jQuery객체로 반환되며 jQuery의 모든 기능을 사용할 수 있게됨.
			
			- jQuery의 기능
			Core : jQuery() 함수가 핵심
			Selector : 조작을 원하는 HTML노드를 선택
			Attributes / CSS : 선택한 노드의 속성값을 가져오거나 변경
			Manipulation : DOM에 대해 다양한 조작(생성, 삭제, 갱신 등)
			Traversing : DOM에 접근하여 원하는 노드를 찾는 방법을 제공
			Events : 여러가지 이벤트에 의한 처리
			Effects : fadein, fadeout, slideup, slidedown 등의 특수효과
			Ajax : 서버와 비동기식으로 데이터를 교환하는 자바스크립트 프로그램 방식
				   (Javascript와 xml으로 이루어진 기술)
			
			- jQuery 함수의 사용법
			1. 매개변수로 selector(즉, 태그)가 들어감
				예) jQuery("Div")
			2. 매개변수로 HTML 문자열이 들어감
			3. 매개변수로 함수가 들어감
			
		
			- DOM이란 : 웹문서에서 HTML의 문서요소를 제어하기 위한 문법적인 구조
						또한 웹문서의 내용, 구조, 스타일을 변경하거나 접근하기 위한 구조
						W3C에서는 DOM의 표준 규격을 제시하고있음
			
		*/
	</script>
</head>
<body>
	
</body>
</html>
