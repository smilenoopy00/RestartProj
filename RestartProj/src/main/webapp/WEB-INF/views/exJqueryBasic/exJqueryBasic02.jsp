<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>jQuery 없이 DOM 작업하기 2</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<style type="text/css">
		/*
		div::after {
			content:"번";
		}
		*/
	</style>
</head>
<body>
	<section>
		<div>1</div><div>2</div><div>3</div><div>4</div><div>5</div>
		<div>6</div><div>7</div><div>8</div><div>9</div><div>10</div>
		<div>11</div><div>12</div><div>13</div><div>14</div><div>15</div>
		<div>16</div><div>17</div><div>18</div><div>19</div><div>20</div>
	</section>
</body>
	<script type="text/javascript">
		// 위 css 작업을 js로 하기
		/*
		var divElements = window.document.getElementsByTagName("div");
	
		for(var i = 0; i < divElements.length; i++){
			divElements[i].innerHTML += "번";
		}
		*/
		
		jQuery(document).ready(function(){
			$("div").append("번");
		});
		
	</script>
</html>