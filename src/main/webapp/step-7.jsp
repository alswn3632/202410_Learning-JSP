<%@page import="jstl_study.Student"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
	<%
		// int num, String name, String phone, String addr, int age
		ArrayList<Student> list2 = new ArrayList<>();
		list2.add(new Student(1, "신짱구", "010-1234-5678", "인천 미추홀구", 5));
		list2.add(new Student(2, "한유리", "010-1111-2222", "인천 남동구", 5));
		list2.add(new Student(3, "김철수", "010-3333-4444", "인천 서구", 5));
		list2.add(new Student(4, "맹구", "010-5555-6666", "인천 연수구", 5));
		list2.add(new Student(5, "이훈이", "010-7777-8888", "인천 서구", 5));
		request.setAttribute("list2", list2);
	%>
	<h1>학생명단</h1>
	<table class="table table-striped">
		<thead>
			<tr>
				<th>학번</th>
				<th>이름</th>
				<th>번호</th>
				<th>주소</th>
				<th>나이</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list2 }" var="l">
				<tr>
					<td>${l.num }</td>
					<td>${l.name }</td>
					<td>${l.phone }</td>
					<td>${l.addr }</td>
					<td>${l.age }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>