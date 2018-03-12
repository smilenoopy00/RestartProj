<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head><!-- 시작 : https://codepen.io/jangka44/pen/yXomLG 
		   완성 : https://codepen.io/jangka44/pen/gRxVbG
	  -->
	<title>이미지 슬라이더만들기 2 - 개별 오토플레이</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<style type="text/css">
		@import url("https://sj.oa.gg/lib/ej.css");

		$slider-height:600px;
		
		$sm-max-width:700px;
		
		.top-slider {
		    position:relative;
		    
		    @media ( min-width:$sm-max-width + 1px ) {
		        height:$slider-height !important;
		        padding:0 !important;
		    }
		    
		    .slides {
		        & > div {
		            opacity:0;
		            position:absolute;
		            top:0;
		            left:0;
		            width:100%;
		            height:100%;
		            z-index:1;
		            background-repeat:no-repeat;
		            background-position: center;
		            background-size:cover;
		            transition:opacity 0.5s;
		            
		            &.active {
		                opacity:1;
		            }
		        }
		    }
		    
		    .side-bars {
		        & > div {
		            cursor:pointer;
		            position:absolute;
		            z-index:2;
		            top:0;
		            left:0;
		            width:30%;
		            height:100%;
		            
		            &:active > span {
		                top:52%;
		            }
		        }
		        
		        & > div.right {
		            left:auto;
		            right:0;
		        }
		        
		        & > div > span {
		            position:absolute;
		            top:50%;
		            left:10px;
		            transform:translatey(-50%);
		            background-color:black;
		            padding:0 30px 2px 20px;
		            border-radius:50%;
		            opacity:0.3;
		            
		            @media ( max-width:$sm-max-width) {
		                display:none;
		            }
		        }
		        
		        & > div.right > span {
		            left:auto;
		            right:10px;
		            padding:0 20px 2px 30px;
		        }
		    }
		    
		    .go-to-below-btn {
		        position:absolute;
		        bottom:10px;
		        left:50%;
		        transform:translateX(-50%);
		        padding:10px 20px 8px 20px;
		        border-radius:50%;
		        border:3px solid white;
		        opacity:0.8;
		        cursor:pointer;
		        z-index:2;
		        
		        @media ( max-width:$sm-max-width) {
		                display:none;
		        
		}
		    }
		}
	</style>
	<script type="text/javascript">
		jQuery(document).ready(function(){
			$(".top-slider .side-bars > div").click(function(){
				var $클릭된_버튼 = $(this);
				var $슬라이드 = $클릭된_버튼.closest(".top-slider");
				var $슬라이드들 = $슬라이드.find(".slides");
				var $현재_슬라이드 = $슬라이드들.find(".active");
				var $다음_슬라이드 = null;
				var $첫_슬라이드 = $슬라이드들.children().first();
				var $끝_슬라이드 = $슬라이드들.children().last();
				
				var 왼쪽이클릭됫나 = $클릭된_버튼.hasClass("left");
				
				if( 왼쪽이클릭됫나 ){
					$다음_슬라이드 = $현재_슬라이드.prev();
				}
				else if( !왼쪽이클릭됫나 ){
					$다음_슬라이드 = $현재_슬라이드.next();
				}
				
				if( $다음_슬라이드.length == 0 ){
					if( 왼쪽이클릭됫나 ){
						$다음_슬라이드 = $첫_슬라이드;
					}
					else if( !왼쪽이클릭됫나 ){
						$다음_슬라이드 = $끝_슬라이드;
					}
				}
				
				$현재_슬라이더.removeClass("active");
				$다음_슬라이더.addClass("active");
				
			});
			
			
			
		});
	</script>
</head>
<body>
	<div class="top-slider ej-ratio-100-100">
		<div class="side-bars">
			<div class="left">
				<span><i aria-hidden="true" class="fa fa-angle-left fa-inverse fa-5x"></i></span>
			</div>
			<div class="right">
				<span><i aria-hidden="true" class="fa fa-angle-left fa-inverse fa-5x"></i></span>
			</div>
		</div>
		
		<div class="slides">
			<div style="background-image:url(http://sj.oa.gg/lec_assets/2/9/img_slider/slide-item-1.jpg);"></div>
			<div class="active" style="background-image:url(https://sj.oa.gg/lec_assets/2/9/img_slider/slide-item-2.jpg);"></div>
		</div>
		
		<div class="go-to-below-btn">
			<span><i aria-hidden="true" class="fa fa-angle-down fa-inverse fa-3x"></i></span>
		</div>
	</div>
</body>
</html>