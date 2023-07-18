<%@page import="vo.PersonVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	PersonVO p1 = new PersonVO();
	p1.setName("홍길동");
	p1.setTel("010-1111-1111");
	p1.setAge(30);
	
	PersonVO p2 = new PersonVO("이길동","010-2222-2222",40);
	
	request.setAttribute("p1", p1);
	request.setAttribute("p2", p2);
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		${p1.name} / ${p1.tel} / ${p1.age}<br>
		${p2.name} / ${p2.tel} / ${p2.age}<br>
	</body>
</html>