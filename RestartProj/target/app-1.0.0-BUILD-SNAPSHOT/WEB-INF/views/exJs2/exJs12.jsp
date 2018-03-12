<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>Form 객체 - Frame 객체 2</title>
</head>

<frameset cols="50%,50%">
	<frame name="left" src="_blank"/>
	<frameset rows="50%,50%">
		<frame src="http://www.daum.net" name="up"/>
		<frame src="http://www.google.com" name="down"/>
	</frameset>
</frameset>

</html>
