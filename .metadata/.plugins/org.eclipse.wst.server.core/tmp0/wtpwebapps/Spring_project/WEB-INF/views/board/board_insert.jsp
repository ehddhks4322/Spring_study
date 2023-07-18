<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/board_insert.css">
<script type="text/javascript">
	function send_check(f) {

		var b_head = f.b_head.value.trim();
		var subject = f.subject.value;
		var content = f.content.value;
		var m_idx = f.m_idx.value;

		if (b_head == "0") {
			alert("카테고리를 선택해주세요.")
			return;
		}

		if (subject == '') {
			alert("제목을 작성해주세요.")
			return;
		}

		if (content == '') {
			alert("내용을 작성해주세요.")
			return;
		}

		f.method = "post";
		f.action = "board_insert.do";
		f.submit();
	}
</script>

</head>
<body>

	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>


	<div class="container">
		<form name="f">
			<input type="hidden" value="${id.m_idx}" name="m_idx">
			<table style="width: 1000px; height: 650px;">
				<h2 class="new_h1">새글 작성</h2>

				<div class="xbtn" onclick="location.href='board_list.do'"
					style="cursor: pointer;"></div>

				<div class="gray_box">
					<p>New Post</p>
				</div>
				<tr style="height: 100px;">
					<th>제목<span>*</span></th>
					<td><input name="subject" class="subject"></td>
				</tr>
				<tr style="height: 100px;">
					<th style="padding-left: 30px;">카테고리<span>*</span></th>
					<td><select name="b_head" class="dropdown">
							<option value="0">선택하세요.</option>
							<option value="1">질문</option>
							<option value="2">신고</option>
							<option value="3">자유</option>
					</select></td>
				</tr>
				<tr style="height: 350px;">
					<th>내용<span>*</span></th>
					<td><textarea name="content" rows="10" cols="50"
							style="resize: none;"></textarea></td>
				</tr>
			</table>
			<div class="btn_wrapper">
				<input type="button" value="등록" class="btn"
					onclick="send_check(this.form);"
					style="cursor: pointer; border: none; background-color: #2775DF;">
			</div>
		</form>
	</div>
</body>
</html>