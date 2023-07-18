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
				
				var name = f.name.value;
				var subject = f.subject.value;
				var content = f.content.value;
				var pwd = f.pwd.value;
				
				//유효성 검사
				if(subject == ""){
					alert("제목을 입력해주세요");
					return;
				}
				if(name == ""){
					alert("이름을 입력해주세요");
					return;
				}
				if(content == ""){
					alert("내용을 입력해주세요");
					return;
				}
				if(pwd == ""){
					alert("비밀번호를 입력해주세요");
					return;
				}
				
				f.method = "get";
				f.action = "insert.do";
				f.submit();
			}
		</script>
	</head>
	<body>
		<form name="f">
			<table border="1" align="center">
				<caption>:::새 글쓰기:::</caption>
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
					<td colspan="2" align="right">
						<img src="resources/img/btn_reg.gif" onclick="send_check()" style="cursor:pointer;">
						<img src="resources/img/btn_back.gif" onclick="location.href='board_list.do'" style="cursor:pointer;">
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>