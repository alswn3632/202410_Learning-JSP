<%@page import="jstl_study.Student"%>
<%@page import="jstl_study.Car"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	// post 방식의 한글 인코딩 처리
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Step-6.jsp의 화면 입니다.</h1>
	<h2>${param.customer }님의 주문서</h2>
	<c:forEach items="${paramValues.menu }" var="m" varStatus="i">
		<h3>${i.count }. ${m }</h3>
	</c:forEach>
	<hr>
	
	<%
		Car car = new Car("2024","소나타",2000);
		request.setAttribute("car", car);
	%>
	<!-- car 객체를 출력해보기 / name : getName -->
	<h3>${requestScope.car.name }</h3>
	<h3>${car.num }</h3>
	<h3>${car.price }</h3>
	
	<%
		ArrayList<Car> list = new ArrayList<>();
		list.add(car);
		list.add(new Car("2025","모닝",1500));
		list.add(new Car("2026","그랜저",3500));
		list.add(new Car("2027","스파크",1500));
		// request.setAttribute("list", list);
		session.setAttribute("list", list);
		// session 객체는 다른 JSP에서도 사용이 가능함
	%>
	
	<c:forEach items="${list }" var="l" varStatus="i">
		<h3>${l.name }(${l.num })/${l.price }만원</h3>
		<h5>${l.toString() }</h5>
	</c:forEach>
	
	<a href="step-7.jsp">step-7.jsp로 이동하기</a>
	
</body>
</html>