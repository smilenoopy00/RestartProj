<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>Window 객체 - open() 메소드</title>
	<script type="text/javascript">
		/*
			# Window 객체 :  내장객체
			
			- 사용방법
			객체명을 static으로 사용하지만 생략해서 사용가능.
			
			- 멤버변수, 메소드, 이벤트핸들러
			그림 참조
		*/
		
		function init(){	// OnLoad 이벤트에 의해 호출됨
				// defaultStatus : Window객체의 멤버변수 
				defaultStatus = "자바스크립트의 윈도우 객체 배우기";
		}
	
		function win_open(){
			// open([URL], [name], [option], [replace])
			// URL : restFul을 이용하여 RequestMapping 주소를 입력하거나
			//		 ----> "/exHtmlCss" : 원하는 페이지로가려면 컨트롤러를 추가해줘야함.
			//		 DisparcherServlet에 의해 걸러지지않도록 주소를 명시해야함(servlet-context.xml에 명시해줘야함)
			//		 ----> "/jsp/exJsJquery/sampleHtml.html"
			// name : 새 창의 이름(변수명으로사용)을 입력하거나 target 속성을 명시할 수 있음
			//		  _blank : 기본값. 새창으로 뜬다.
			//		  _parent
			//		  _self
			//		  _top
			// option : 새 창에 대한 특성 지정, 여러개인 경우 콤마로 구분함
			// 			channelmode, directories, fullscreen, location(주소창),
			//			resizable(창 사이즈 조절 가능 여부),
			//			menubar, scrollbars, status, titlebar, toolbar
			//		    =yes|no|1|0
			//			height, left, top, width
			//			=pixels
			// replace : 히스토리 리스트에 현재 문서로 바꿀 것인가(true) 아니면 새로운 문서로 만들 것이냐(false) 유무
			window.open("/jsp/exJsJquery/sampleHtml.html","open_win1", "toolbar=yes, status=yes, resizable=yes");	// window. 생략가능
		}
	</script>
</head>
<body OnLoad="init()">	<!-- OnLoad : Window객체의 이벤트 핸들러 -->

	<form>
		<input type="button" value="새창열기" onClick="win_open()"/>	<!-- onClick : Window객체의 이벤트 핸들러 -->
	</form>
	
</body>
</html>
