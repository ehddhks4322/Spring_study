<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			table{border-collapse: collapse; box-shadow: 3px 3px 3px 3px black, 5px 5px 5px 5px red;}
		</style>
		<script type="text/javascript">
			function send_check(){
				var f = document.f;
				var subject = f.subject.value;
				var name = f.name.value;
				var content = f.content.value;
				var pwd = f.pwd.value;
				
				if(subject == ""){
					alert("제목을 입력해주세요.");
					return;
				}
				if(name == ""){
					alert("이름을 입력해주세요.");
					return;
				}
				if(content == ""){
					alert("내용을 입력해주세요.");
					return;
				}
				if(pwd == ""){
					alert("비밀번호를 입력해주세요.");
					return;
				}
				
				f.submit();
			}
		</script>
	</head>
	<body>
		<!-- 이미지 태그이기 때문에 form태그에 name을 주지않으면 정보를 넘길수없다. -->
		<form name="f" method="post" action="reply.do">
			<input type="hidden" name="idx" value="${param.idx}">
			<input type="hidden" name="page" value="${param.page}">
			<table border="1" align="center">
				<tr>
					<th>제목</th>
					<td><input name="subject"></td>
				</tr>
				<tr>
					<th>작성자</th>
					<td><input name="name"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea rows="10" cols="50" name="content" style="resize:none;"></textarea></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input name="pwd" type="password"></td>
				</tr>
				<tr>
					<td>
						<img src="resources/img/btn_reg.gif" onclick="send_check()" style="cursor:pointer;">
						<img src="resources/img/btn_back.gif" onclick="location.href='board_list.do?page=${param.page}'" style="cursor:pointer;">
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>