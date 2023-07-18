<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
	<head>
		<title>Home</title>
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link rel="stylesheet" href="resources/css/StartScreen.css">
		<link
			href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,400;0,500;0,600;1,800&display=swap"
			rel="stylesheet">
			
	</head>
	<body style="background-image: url('resources/img/main_img.png');">
		<div class="main_text">
			<div class="logo">
				<h1>
					GET&nbsp;<span style="color: #D7E6FF;">IT</span>
				</h1>
			</div>
	
			<div class="slogan">
				<h1>
					가장 확실한 <span style="color: #D7E6FF;">IT 중고거래</span>, GET IT
				</h1>
			</div>
	
			<input class="start_btn" type="button" value="시작하기"
				onclick="location.href='main.do'">
		</div>
	
	
	
		<div class="member_btn">
			<input class="log_in" type="button" value="로그인"
				onclick="location.href='login_form.do'"> / <input
				class="sign_up" type="button" value="회원가입"
				onclick="location.href='insert_first.do'">
		</div>
	</body>
</html>
