<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		제목 : ${vo.title}<br>
		<img src="${pageContext.request.contextPath}/resources/upload/${vo.filename}" width="200">
	</body>
</html>