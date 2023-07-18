<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/board_list.css">
<script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
	var drop_val = 0;

	$(document).ready(function() {
		$(".default_option").click(function() {
			$(".dropdown ul").addClass("active");
		});

		$(".dropdown ul li").click(function() {
			var text = $(this).text();
			if ($('.dropdown ul').children().hasClass('selected')) {
				$('.dropdown ul').children().removeClass('selected');
				$(this).addClass('selected');
			} else {
				$(this).addClass('selected');
			}
			$(".default_option").text(text);
			$(".dropdown ul").removeClass("active");
		});
		$(".dropdown-menu").on("click", "li", function() {

			drop_val = $(this).attr('value');

		});
	});

	function send_check() {

		var selectOption = document.getElementById("b_head");
		selectOption = selectOption.options[selectOption.selectedIndex].value;

		var text = document.getElementById("text").value;

		if (b_head == 0) {
			alert("카테고리를 선택해주세요.")
			return;
		}

		if (text == "") {
			alert("내용을 입력해주세요.")
			return;
		}

		location.href = "board_search.do?selectOption=" + selectOption
				+ "&text=" + text;

	}
</script>
</head>
<body>

	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

	<div class="container">
		<div class="b_list">
			<!-- 드롭다운 & 검색버튼 -->

			<div class="wrapper">
				<div class="search_box">
					<div class="dropdown">
						<select name="b_head" class="dropdown" id="b_head">
							<option value=0>ALL</option>
							<option value=1>질문</option>
							<option value=2>신고</option>
							<option value=3>자유</option>
						</select>
					</div>
					<div class="search_field">
						<input type="text" class="input" id="text" name="text"
							placeholder="Search">
						<button style="cursor: pointer; border: none;"
							onclick="send_check();">
							<i class="fas fa-search"></i>
						</button>

					</div>
				</div>
			</div>
			<!-- wrapper -->



			<table width="1100">
				<tr>
					<th align="left">번호</th>
					<th align="left">말머리</th>
					<th align="left">제목</th>
					<th align="left">ID</th>
					<th align="left">조회수</th>
				</tr>
				<c:forEach var="vo" items="${list}">
					<tr>
						<td>${vo.b_idx}</td>
						<td><c:if test="${vo.b_head eq 1 }">
								질문
							</c:if> <c:if test="${vo.b_head eq 2 }">
								신고
							</c:if> <c:if test="${vo.b_head eq 3 }">
								자유
							</c:if></td>
						<td><a
							href="board_inside.do?b_idx=${vo.b_idx}&page=${param.page}"
							style="text-decoration: none; color: black;">${vo.subject}</a></td>
						<td>${vo.m_id}</td>
						<!-- 조인 후 id 변경 -->
						<td>${vo.readhit}</td>
					</tr>
				</c:forEach>
			</table>

			<div class="pageMenu">${pageMenu}</div>

			<div class="btn_wrapper">
				<input type="button" value="등록" class="btn"
					onclick="location.href='board_insert_form.do'"
					style="cursor: pointer; border: none; background-color: #2775DF;">
			</div>

			<a style="text-decoration: none; color: #ccc;"></a>

		</div>
	</div>

</body>
</html>