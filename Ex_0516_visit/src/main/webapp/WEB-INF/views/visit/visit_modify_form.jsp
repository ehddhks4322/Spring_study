<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script type="text/javascript">
			function send(f){
				var content = f.content.value;
				var pwd = f.pwd.value;
				
				if(content == ""){
					alert("내용을 입력해주세요");
					return;
				}
				
				if(pwd == ""){
					alert("비밀번호를 입력해주세요");
					return;
				}
				
				f.action = "update.do";
				f.method = "post";
				f.submit();
			}
		</script>
	</head>
	<body>
		<form>
			<!-- 수정할 때 어떤 방명록 글에 할건지에 대한 식별자 -->
			<input type="hidden" name="idx" value="${vo.idx}">
			<table border="1" align="center">
				<caption>:::방명록 수정하기:::</caption>
				<tr>
					<th>작성자</th>
					<td>${vo.name}</td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea rows="10" cols="40" name="content" style="resize:none;" wrap="on">${vo.content}</textarea></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="pwd" value="${vo.pwd}"></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="button" value="수정" onclick="send(this.form)">
						<input type="button" value="삭제" onclick="location.href='visit_list.do'">
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>