<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>객체정의 및 사용</title>
	<script type="text/javascript">
		/*
			- 객체지향언어는 아니지만 객체를 사용하기때문에 객체기반언어이다.
			- js로 객체를 정의할 수 있지만 주로 기존객체를 가져와 사용하는 것이 많다.
			- 객체는 속성(property)와 methods를 가진다.
			- 자바스크립트 객체 형태
				function 객체명(인스턴스 생성 시 초기화 값을 가진 파라미터들){
					this.멤버변수1 = 가져온 파라미터 변수1;
					this.멤버변수2 = 가져온 파라미터 변수2;
					...
				}
		
			- new를 이용하여 인스턴스 생성. 이때 인스턴스를 담을 변수명은 var로 선언해주지않아도된다.
				객체변수명 = new 객체명(값1, "값2", 값3...);
			
			- 호출 방법
				객체변수명.멤버변수명;
		*/
	
		function jumsu(p_name, p_kor, p_eng, p_mat){
			this.name = p_name;
			this.kor = p_kor;
			this.eng = p_eng;
			this.mat = p_mat;
		}
		
		
		function Print(){	// 임의의 객체에서 호출될 경우 this를 사용함으로써 호출한 인스턴스가 가지고있는 값을 사용한다.
			document.write("제조사 : " + this.brand + ", ");
			document.write("제품명 : " + this.name + ", ");
			document.write("가격 : " + this.price + "<p>");
		}
		
		function TV(p_brand, p_name, p_price){
			this.brand = p_brand;
			this.name = p_name;
			this.price = p_price;
			this.Print = Print;		// 객체의 멤버 함수로써 이미 생성된 함수를 넣을 수 있다. 함수명을 넣어주는것이므로 괄호없음.
		}
		
		
		// 이렇게 간단하게 객체 생성도 가능함.
		var personObj = new	Object();
		personObj.firstname = "John";
		personObj.lastname = "Kim";
		personObj.age = 50;
		personObj.eyecolor = "blue";
	</script>
</head>
<body>
	<script type="text/javascript">
	hong = new jumsu("홍길동", 90, 99, 87);
	kim = new jumsu("김희선", 100, 92, 88);
	
	document.write("<h3>");
	document.write("이름 : " + hong.name + "<br>");
	document.write("국어 : " + hong.kor + "<br>");
	document.write("영어 : " + hong.eng + "<br>");
	document.write("수학 : " + hong.mat + "<p>");
	document.write("이름 : " + kim.name + "<br>");
	document.write("국어 : " + kim.kor + "<br>");
	document.write("영어 : " + kim.eng + "<br>");
	document.write("수학 : " + kim.mat + "<p>");
	document.write("</h3>");
	
	
	TV1 = new TV("삼성", "PAVV", "99만원");
	TV2 = new TV("LG", "엑스캔버스", "102만원");
	
	document.write("<h2>TV1</h2><p>");
	TV1.Print();
	document.write("<h2>TV2</h2><p>");
	TV2.Print();
	</script>
</body>
</html>
