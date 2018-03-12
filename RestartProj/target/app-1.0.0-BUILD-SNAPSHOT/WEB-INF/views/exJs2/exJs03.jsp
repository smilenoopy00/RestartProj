<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>history, location 객체</title>
	<script type="text/javascript">
		/*
			# history 객체
			
			- 브라우저 기록에 대한 정보를 가지고있다
			- 브라우저 메뉴에 있는 앞으로, 뒤로 버튼에 해당하는 속성 등 편리한 기능을 가지고있다.
			
			- 멤버변수
			length : 히스토리에 있는 url 개수
			
			- 메소드
			back() : 히스토리 리스트에서 한단계 앞으로 이동
			forward() : 히스토리 리스트에서 한단계 뒤로 이동
			go(n) : 히스토리 리스트에서 현재를 기준으로 n만큼 원하는 위치로 이동
			
			
			# location 객체
			
			- 현재 문서에 대한 정보를 가지고있다.
			- 정보 : 프로토콜의 종류, 호스트이름, 포트번호, 디렉토리 위치, 파일이름 등
			
			- 멤버변수
			href : 페이지의 url주소
			host : url주소의 호스트이름과 포트번호
			hostname : url주소의 호스트이름
			protocol, pathname : 프로토콜과 경로
			port : 포트번호
			hash : 레이블이름
			search : 호출시 사용하는 형식
			
			- 메소드
			reload() : 현재 페이지를 다시 읽음
			replace() : 현재 페이지를 원하는 페이지로 바꿈. 히스토리 기록도 바뀐 페이지로 됨.
		*/
		
		function do_replace(){
			//location.replace("http://www.naver.com");	// 바뀐 페이지가 히스토리 기록으로 덮힘.
			location.href("http://www.naver.com");	// 히스토리 기록이 추가됨.
		}
	</script>
</head>
<body>
	<form>
		<input type="button" value="현재 페이지 바꾸기" onClick="do_replace()"/>
	</form>
</body>
</html>
