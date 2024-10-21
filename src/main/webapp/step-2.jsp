<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Step-2.jsp의 화면 입니다.</h1>
	
	<!-- EL 방식으로 파라미터 받기 -->
	<h2>EL 방식으로 파라미터 받기</h2>
	<h3>상품명: ${param.name }</h3>
	<h3>원산지: ${param.addr }</h3>
	
	<!-- 스클립틀릿 방식으로 파라미터 받기 -->
	<h2>스클립틀릿 방식으로 파라미터 받기</h2>
	<h3>상품명: <%= request.getParameter("name") %></h3>
	<h3>원산지: <%= request.getParameter("addr") %></h3>
	
	<!-- form tag로 데이터 전송하기 -->
	<!-- queryString 방식은 get 방식으로 전송 -->
	<!-- form tag에서 데이터를 전송하는 방식은 get/post 방식 중 선택 가능하고 생략하면 get으로 인식 -->
	<form action="step-3.jsp">
		이름: <input type="text" name="name"> <br>
		나이: <input type="text" name="age"> <br>
		<button type="submit">step-3.jsp로 전송하기</button>		
	</form>
	
	
</body>
</html>