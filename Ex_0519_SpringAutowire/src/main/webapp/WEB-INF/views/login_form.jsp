<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script type="text/javascript">
			function send(f){
				f.action = "login";
				f.method = "post";
				f.submit();
			}
		</script>
	</head>
	<body>
		<form>
			아이디 : <input name="id" placeholder="아이디"><br>
			비밀번호 : <input type="password" name="pwd" placeholder="비밀번호"><br>
			<input type="button" name="id" value="로그인" onclick="send(this.form)"><br>
		</form>
	</body>
</html>