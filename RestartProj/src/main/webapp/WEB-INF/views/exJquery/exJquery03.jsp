<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>jQuery 상세개요</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
	<!-- <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script> -->
	<script type="text/javascript">
		/*
			# core - jQuery() 함수
			
			- jQuery의 핵심 개념은 jQuery() 함수이다.
			- 매개변수로는 세가지 정도로 나뉜다.
				1. jQuery( selector )
				예) jQuery('div') : 모든 div 노드를 선택하여 jQuery객체로 만들어준다.
					jQuery('div p') : div다음에 나오는 모든 p 노드를 선택하여 jQuery객체로 만들어준다.
				2. jQuery( HTML코드 )
				예) jQuery('<div align=center>내용</div>').appendTo('body'); : body태그에 div태그를 추가해준다.
				3. jQuery( 다른 함수 )
				예) jQuery( function(){ confirm("진행하시겠습니까?"); } );
					: 해당 함수를 실행한다.
				
					
			# jQuery(document).ready()
			
			- jQuery를 사용하는 웹페이지라면 사용해야만하는 기본코드이다.
			예) <script>
				jQuery(document).ready( function(){
					실행코드...
				});
				< /script>
				
				이것은 아래와 같은 기능을 한다.
				
				<script>
				window.onload = function(){
					실행코드...
				};
				< /script>
			
			- 축약형으로 아래 두가지방법으로도 표현가능하다
			   jQuery( function(){ 실행코드... } );
			   $( function(){ 실행코드... } );
			
			
			
			# jQuery의 기능 범주
			
			1. Core : jQuery() 함수가 핵심
			- jQuery Object : jQuery(), jQuery.noConflict(), jQuery.sub(), jQuery.when()
			- DOM Element Methods : .get(), .index(), .size(), .toArray()
			- Internals : .jquery, .context, jQuery.error, .length, .pushStack(), .selector
			- Deferred Object
			- Callbacks Object : 자바스크립트 문장은 라인 바이 라인으로 실행되지만 
								 효과에 있어서는 이전 효과가 끝나지 않았음에도 다음 코드가 실행될 수 있다.
								 이런 에러를 방지하기 위해 callback함수를 사용하여 현재 효과가 끝난 다음 실행될 함수를 기재해준다.
								 예) $(selector).hide(speed, callback);
								 
			2. Selector(선택자) : 조작을 원하는 HTML노드를 선택
			- Basics : 기본 선택자
			- Hierarchy : 계층 선택자
			- Basic Filters : 기본 필터 선택자
			- Content Filters : 내용 필터 선택자
			- Visibility Filters : 
			- Attribute : 속성 선택자
			- Child Filters : 자손 필터 선택자
			- Forms : 폼 선택자
			
			3. Attributes / CSS : 선택한 노드의 속성값을 가져오거나 변경
			- Attributes : .attr(), .prop(), .removeAttr(), .removeProp(), .val()
			- CSS : .addClass(), .css(), .hasClass(), .removeClass(), .toggleClass()
			- Dimensions(2차원) : .height(), .innerHeight(), .innerWidth(), .outerHeight(), .outerWidth(), .width()
			- Offset(거리) : .offset(), .offsetParent(), .position(), .scrollLeft(), .scrollTop()
			- Data : jQuery.data(), .data(), jQuery.hasData(), jQuery.removeData(), .removeData()
			
			4. Manipulation : DOM에 대해 다양한 조작(생성, 삭제, 갱신 등)
			- Copying : 복사
			- DOM Insertion, Around : DOM 삽입 
			- DOM Insertion, Inside : DOM 삽입
			- DOM Insertion, Outside : DOM 삽입
			- DOM Removal : 삭제
			- DOM Replacement : 재배치
			
			5. Traversing(탐색) : DOM에 접근하여 원하는 노드를 찾는 방법을 제공
			- Filtering : .eq(), .filter(), .first(), .has(), .is(), .last(), .map(), .not(), .slice()
			- Miscellaneous Traversing(간단한 탐색) : .add(), .andSelf(), .contents(), .end()
			- Tree Traversal : .children(), .closest(), .find(), .next(), .nextAll(), .nextUntil(), .parent(),
							   .parents(), .parentsUntil(), .prev(), .prevAll(), .prevUntil(), .siblings() 
			
			6. Events : 여러가지 이벤트에 의한 처리
			- Browser Events
			- Document Loading
			- Event Handler Attachment
			- Form Events
			- Keyboard Events
			- Mouse Events
			- Event Object
			
			7. Effects : 특수효과
			- Basics : .hide(), .show(), .toggle()
			- Custom : .animate(), .clearQueue(), .delay(), .dequeue(), jQuery.dequeue(), jQuery.fx.interval, jQuery.fx.off, .queue(), jQuery.queue(), .stop()
			- Fading : .fadeIn(), fadeOut(), fadeTo(), .fadeToggle()
			- Sliding : .slideUp(), .slideDown(), .slideToggle()
			
			8. Ajax : 서버와 비동기식으로 데이터를 교환하는 자바스크립트 프로그램 방식
				   (Javascript와 xml으로 이루어진 기술)
			
		*/
		
		jQuery(document).ready(function(){
			// 예제 1
			/*
			$("button").click(function(){
				$("div").animate({left:'500px'});
			});
			*/
			// 예제 2
			$("button").click(function(){
				$("p").hide("slow", function(){
					alert("section태그 문장이 숨겨졌습니다.");
				});
			});
			
		});	
	</script>
</head>
<body>
	<!-- 예제 1
	<button> Animation을 시작합니다. </button><br><br><br>
	<div style="background:#98bf21; height:100px; width:100px; position:absolute;">
	</div>
	-->
	<button> 숨기기 </button><br><br><br>
	<h3><p>p태그 안쪽의 텍스트입니다.</p></h3>
</body>
</html>
