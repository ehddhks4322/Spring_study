<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script type="text/javascript">
			function send(f){
				f.action = "upload.do";
				f.submit();
			}
		</script>
	</head>
	<body>
		<form method="post" enctype="multipart/form-data">
			제목 : <input name="title"><br>
			사진 : <input type="file" name="photo"><br>
			<input type="button" value="전송" onclick="send(this.form)">
		</form>
	</body>
</html>