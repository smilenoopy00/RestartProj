<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>jQuery 기초 예제 5 - 게임 기초개념 (게임엔진) </title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<style type="text/css">
		section {
			border:10px solid red;
			position:relative;
		}
		div {
			border:10px solid blue;
			box-sizing:border-box;
			position:absolute;
		}
		
	</style>
	<script type="text/javascript">
		jQuery(document).ready(function(){
			var 게임정보 = {
				맵 : {
					너비: 400,
					높이:300
				},
				플레이어 : {
					너비: 100,
					높이: 100,
					속력: 5,
					x축속도:null,
					y축속도:null,
					x축좌표:0,
					y축좌표:0
				}
			}
			
			var 초기화 = function(){
				$("section").css("width", 게임정보.맵.너비);
				$("section").css("height", 게임정보.맵.높이);
				
				$("div").css("width", 게임정보.플레이어.너비);
				$("div").css("height", 게임정보.플레이어.높이);
				
				$("div").css("left", 게임정보.플레이어.x축좌표);
				$("div").css("top", 게임정보.플레이어.y축좌표);
				
				게임정보.플레이어.x축속도 = 게임정보.플레이어.속력;
				게임정보.플레이어.y축속도 = 게임정보.플레이어.속력;
			};
			
			var 플레이어_그리기 = function(){
				$("div").css("left",게임정보.플레이어.x축좌표)
						.css("top",게임정보.플레이어.y축좌표);
			};
			
			var 플레이어_이동 = function(){
				게임정보.플레이어.x축좌표 += 게임정보.플레이어.x축속도;
				게임정보.플레이어.y축좌표 += 게임정보.플레이어.y축속도;
			};
			
			var 플레이어_벽충돌_처리 = function(){
				var x축_이동가능거리 = 게임정보.맵.너비 - 게임정보.플레이어.너비;
				var y축_이동가능거리 = 게임정보.맵.높이 - 게임정보.플레이어.높이;
					
				if( 게임정보.플레이어.x축좌표 > x축_이동가능거리 ){
					게임정보.플레이어.x축속도 = 게임정보.플레이어.속력 * -1;
				}
				else if( 게임정보.플레이어.x축좌표 <= 0 ){
					게임정보.플레이어.x축속도 = 게임정보.플레이어.속력;
				}
				
				if( 게임정보.플레이어.y축좌표 > y축_이동가능거리 ){
					게임정보.플레이어.y축속도 = 게임정보.플레이어.속력 * -1;
				}
				else if( 게임정보.플레이어.y축좌표 <= 0 ){
					게임정보.플레이어.y축속도 = 게임정보.플레이어.속력;
				}
			}
			
			var 게임시작 = function(){
				setInterval(function(){
					플레이어_벽충돌_처리();
					플레이어_그리기();
					플레이어_이동();
				}, 100);
			};
			
			초기화();
			게임시작();
			
			$(window).keyup(function(){
				if( event.keyCode == 37 ){		// 좌
					게임정보.플레이어.x축속도 = 게임정보.플레이어.속력 * -1;	// 방향전환
				}
				else if( event.keyCode == 39 ){	// 우
					게임정보.플레이어.x축속도 = 게임정보.플레이어.속력;
				}
				else if( event.keyCode == 38 ){	// 상
					게임정보.플레이어.y축속도 = 게임정보.플레이어.속력 * -1;	// 방향전환
				}
				else if( event.keyCode == 40 ){	// 하
					게임정보.플레이어.y축속도 = 게임정보.플레이어.속력;
				}
			});
		});
	</script>
</head>
<body>
	<section>
		<div></div>
	</section>
</body>
</html>