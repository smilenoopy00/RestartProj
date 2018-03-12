<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>String 객체 2</title>
	<script type="text/javascript">
		/*
			# 내장객체인 String 객체
		*/
	
		function CheckSpace(str){
			while(true){
				index = str.indexOf(" ");
				
				if(index == -1) break;
				
				len = str.length;
				str = str.substring(0, index) + str.substring(index+1, len);
			}
			return str;
		}
		
		
	</script>
</head>
<body>
	<script type="text/javascript">
		
		// 예제 1
		document.write("Nice to meet you".toLowerCase() + "<br>");
		document.write("Nice to meet you".toUpperCase() + "<p>");
		
		// 예제 2
		document.write("Nice to meet you, Tom!".charAt(3) + "<br>");
		document.write("만나서 반가워요, 톰!".charAt(2) + "<br>");
		document.write("Nice to meet you, Tom!".substring(2,4) + "<br>");
		document.write("만나서 반가워요, 톰!".substring(2,4) + "<br>");
		document.write("Nice to meet you, Tom!".substring(2) + "<br>");
		document.write("Nice to meet you, Tom!".substring(4,2) + "<br>");	// 자동으로 substring(2,4)와 같은 결과값을 내줌
		document.write("Nice to meet you, Tom!".slice(2,4) + "<br>");
		document.write("만나서 반가워요, 톰!".slice(2,4) + "<p>");
		
		// 예제 3
		document.write("호랑나비 흰나비".indexOf("나") + "<br>");
		document.write("Nice to meet you, Tom!".indexOf("e") + "<br>");
		document.write("호랑나비 흰나비".lastIndexOf("나") + "<br>");
		document.write("Nice to meet you, Tom!".lastIndexOf("e") + "<p>");
		
		// 예제 4
		var str = "";
		str += CheckSpace("Nice To Meet You");
		
		document.write(str);
	</script>
</body>
</html>
