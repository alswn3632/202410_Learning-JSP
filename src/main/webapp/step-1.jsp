<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 라이브러리 가져오는 방법 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Step-1.jsp의 화면 입니다.</h1>
	<!-- 쿼리스트링 queryString에서 보낸 데이터 받기 param.key -->
	<!-- EL 방식으로 받기 -->
	<h3>index.jsp에서 보낸 데이터 출력하기</h3>
	<h3>이름: ${param.name }</h3>
	<h3>나이: ${param.age }</h3>
	<!-- 빨간 밑줄은 EL 방식을 인지하지 못하거나 진짜 에러이거나 둘 중 하나! -->
	
	<!-- [문제] queryString으로 name=귤&addr=제주를 step-2.jsp로 보내고 -->
	<!-- step-1.jsp 생성 후 상품명: 귤, 원산지: 제주로 출력하기 -->
	<a href="step-2.jsp?name=귤&addr=제주">step-2.jsp로 이동</a>
	
	<!-- c:if : if명령어 JSTL명령어 (-> 별도의 라이브러리를 생성해야 함) -->
	<!-- test="조건식" eq ne" name eq(ne) 홍길동 -->
	<!-- eq == ne != : 비교표현식 -->
	<c:if test="${param.age <= 18 }">
		<h3>${param.name }은 미성년자입니다.</h3>
	</c:if>
	
	
</body>
</html>