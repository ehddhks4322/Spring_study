<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			table{border-collapse: collapse; box-shadow: 3px 3px 3px 3px black, 5px 5px 5px 5px red;}
		</style>
		<script src="resources/js/httpRequest.js"></script>
		<script type="text/javascript">
			function del(){
				if(!confirm("삭제하시겠습니까?")){
					return;
				}
				
				var pwd = ${vo.pwd}; //원본 비밀번호
				var c_pwd = document.getElementById("c_pwd").value; //입력한 비밀번호
				
				if(pwd != c_pwd){
					alert("비밀번호 불일치");
					return;
				}
				
				var url = "del.do";
				var param = "idx=${vo.idx}";
				
				sendRequest(url,param,delCheck,"post");
			}
			
			function delCheck(){
				if(xhr.readyState == 4 && xhr.status == 200){
					var data = xhr.responseText;
					var json = (new Function('return'+data))();
					
					if(json[0].result == 'yes'){
						alert("삭제성공");
						location.href="board_list.do?page=${param.page}";
					} else{
						alert("삭제실패");
					}
				}
			}
			
			function reply(){
				location.href="reply_form.do?idx=${vo.idx}&page=${param.page}";
			}
		</script>
	</head>
	<body>
		<table border="1" align="center">
			<caption>:::게시글 상세보기:::</caption>
			<tr>
				<th>제목</th>
				<td>${vo.subject}</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>${vo.name}</td>
			</tr>
			<tr>
				<th>작성일</th>
				<td>${vo.regdate}</td>
			</tr>
			<tr>
				<th>내용</th>
				<td width="500px" height="200px"><pre>${vo.content}</pre></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" id="c_pwd"></td>
			</tr>
			<tr>
				<td colspan="2">
					<!-- 목록보기 -->
					<img src="resources/img/btn_list.gif" onclick="location.href='board_list.do'" style="cursor:pointer;">
					
					<!-- 답글달기(depth가 1보다 크면 답글을 못달게 만들기) -->
					<c:if test="${vo.depth lt 1}">
						<img src="resources/img/btn_reply.gif" onclick="reply()" style="cursor:pointer;">
					</c:if>
					
					<!-- 삭제 -->
					<img src="resources/img/btn_delete.gif" onclick="del()" style="cursor:pointer;">
				</td>
			</tr>
		</table>
	</body>
</html>