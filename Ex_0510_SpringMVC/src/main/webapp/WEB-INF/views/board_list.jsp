<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<p>게시판 목록입니다.</p>
		<h1>과일목록</h1>
		<ul>
			<c:forEach var="vo" items="${list}">
				<li>${vo}</li>
			</c:forEach>
		</ul>
	</body>
</html>