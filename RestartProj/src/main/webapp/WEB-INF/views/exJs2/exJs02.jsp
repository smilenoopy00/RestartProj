<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>image 객체</title>
	<script type="text/javascript">
		/*
			# image 객체
			
			- image에 관한 정보를 가지고있는 객체
			- <image src=""> 태그에 해당되고 태그의 속성들이 멤버변수와 같다.
			
			- 멤버변수(인스턴스로부터 접근시)
			name : image객체의 이름, document객체로 부를수있음
			src : 이미지파일의 url 주소
			width, height : 이미지의 가로세로 크기
			hspace : 이미지의 가로 여백
			vspace : 이미지의 세로 여백
			border : 이미지의 테두리 굵기
			align : 텍스트와 이미지가 섞여 있는 경우 정렬 방법
			alt : 이미지 설명
			
			- 멤버변수(static으로 접근시)
			images : 속성으로 length를 가지며 현재 document에 있는 image 개체수를 가져온다.
			
		*/
		
		/* Html 태그중 window 하위객체로 존재하는 태그의 경우 html로 작성된 경우에도 해당 window 하위객체로 인식한다. */
		
	</script>
</head>
<body>
	<!-- src에 적힌 주소는 servlet-conext.xml에 설정해둔대로 jsp/~를 사용하여 호출한다. -->
	<img name="img_1" src="jsp/exHtml5/img/coffee.gif" border=5 align=bottom alt="커피"/>
	
	<img name="img_2" src="jsp/exHtml5/img/sky.jpg" border=2 align=bottom alt="하늘"/>
	
	<br><hr>
	
	<script type="text/javascript">
	
	// 예제 1
	document.write("이미지 주소 : " + document.img_1.src + "<br>");
	document.write("이미지 이름 : " + document.img_1.name + "<br>");
	document.write("이미지 가로길이 : " + document.img_1.width + "<br>");
	document.write("이미지 세로길이 : " + document.img_1.height + "<br>");
	document.write("이미지 가로여백 : " + document.img_1.hspace + "<br>");
	document.write("이미지 세로여백 : " + document.img_1.vspace + "<br>");
	document.write("이미지 테두리 굵기 : " + document.img_1.border + "<br>");
	document.write("이미지 정렬방법 : " + document.img_1.align + "<br>");
	document.write("이미지 설명 : " + document.img_1.alt + "<p>");
	
	// 예제 2
	document.write("현재 페이지의 이미지 개수 : " + document.images.length + "<p>");
	
	</script>
</body>
</html>
