<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h1>Step-5.jsp의 화면 입니다.</h1>
		<!-- 메뉴판을 체크박스 형태로 만들어서 step-6.jsp로 전송 -->
		<!-- 주문자명: input -->
		<!-- post 방식으로 데이터 보내기 method="post" -->
		<form action="step-6.jsp" method="post">
			<h3>주문자명: <input type="text" name="customer"></h3>
			<input type="checkbox" name="menu" value="김치찌개"> 김치찌개 <br>
			<input type="checkbox" name="menu" value="된장찌개"> 된장찌개 <br>
			<input type="checkbox" name="menu" value="제육볶음"> 제육볶음 <br>
			<input type="checkbox" name="menu" value="부대찌개"> 부대찌개 <br>
			<input type="checkbox" name="menu" value="순두부찌개"> 순두부찌개 <br>
			<input type="checkbox" name="menu" value="고등어구이"> 고등어구이 <br>
			<button type="submit">step-6.jsp로 전송하기</button>
		</form>
		
		<!-- request 객체는 보내는 대상 JSP에서만 사용 가능하다 -->
		<c:forEach items="${list }" var="l" varStatus="i">
			<h3>${l.name }(${l.num })/${l.price }만원</h3>
			<h5>${l.toString() }</h5>
		</c:forEach>
</body>
</html>