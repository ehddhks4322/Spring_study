<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/board_inside.css">
<script src="resources/js/httpRequest.js"></script>
<script type="text/javascript">
function send_check(f) {
	
	var bd_content = f.bd_content.value;
	var b_idx = f.b_idx.value;
	var m_idx = f.m_idx.value;
	
	if (bd_content == "") {
		alert("내용을 입력해주세요.")
		return;
	}
	
	var url = "bd_insert.do";
	var param = "bd_content="+bd_content+"&b_idx="+b_idx+"&m_idx="+m_idx
	
	sendRequest(url,param,sendCheck,"post")

}

function sendCheck(){
	if(xhr.readyState == 4 && xhr.status == 200){
		 var data = xhr.responseText;
		 
		 var json = (new Function('return'+data))();
		 
		 if(json[0].result == 'yes'){
			 alert("등록 성공");
			 location.href="board_inside.do?b_idx=${vo.b_idx}&page=${param.page}";
		 } else {
			 alert("등록 실패");
		 }
	}
}

function del(){
	if(!confirm("삭제하시겠습니까?")){
		return;
	}
	
	var m_idx = ${id.m_idx}; //원본 아이디
	var m_idx_1 = document.getElementById("m_idx_1").value;
	var bd_idx = document.getElementById("bd_idx").value;
	
	if( m_idx != m_idx_1){
		alert("댓글 작성자가 아닙니다.");
		return;
	}
	
	var url = "bd_del.do";
	var param = "bd_idx="+bd_idx
	
	sendRequest(url,param,delCheck,"get")
}

function b_del() {
	if(!confirm("삭제하시겠습니까?")){
		return;
	}
	
	if( ${id.m_idx} != ${vo.m_idx}){
		alert("글 작성자가 아닙니다.");
		return;
	}
	
	var url = "b_del.do";
	var param = "b_idx="+${vo.b_idx};
	
	sendRequest(url,param,b_delCheck,"get")
}

function delCheck(){
	if(xhr.readyState == 4 && xhr.status == 200){
		 var data = xhr.responseText;
		 
		 var json = (new Function('return'+data))();
		 
		 if(json[0].result == 'yes'){
			 alert("삭제 성공");
			 location.href="board_inside.do?b_idx=${vo.b_idx}&page=${param.page}";
		 } else {
			 alert("삭제 실패");
		 }
	}
}

function b_delCheck(){
	if(xhr.readyState == 4 && xhr.status == 200){
		 var data = xhr.responseText;
		 
		 var json = (new Function('return'+data))();
		 
		 if(json[0].result == 'yes'){
			 alert("삭제 성공");
			 location.href="board_list.do?page=${param.page}";
		 } else {
			 alert("삭제 실패");
		 }
	}
}

/* 답글 달기 */
function bd_send(f) {
	
	var bd_content = f.bd_content.value;
	var b_idx = f.b_idx.value;
	var m_idx = f.m_idx.value;
	
	if (bd_content == "") {
		alert("내용을 입력해주세요.")
		return;
	}
	
	var url = "bd_insert2.do";
	var param = "bd_content="+bd_content+"&b_idx="+b_idx+"&m_idx="+m_idx
	
	sendRequest(url,param,sendCheck,"post")
}

/* div */
var bDisplay = true; 
function doDisplay(){ 	
    var con = document.getElementById("myDIV"); 	
    if(con.style.display=='none'){ 		
        con.style.display = 'block'; 	
    }else{ 		
        con.style.display = 'none'; 	
    } 
}
</script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>


	<div class="container">
		<div class="xbtn" onclick="location.href='board_list.do'"
			style="cursor: pointer;"></div>
		<div class="wrapper"
			style="width: 700px; min-height: 650px; padding: 0 50px; margin-bottom: 20px;">
			<div>
				<h4>
					<span style="font-weight: normal; border-right: 2px solid #dde2f1;">
						<c:if test="${vo.b_head eq 1 }">
							질문
						</c:if> <c:if test="${vo.b_head eq 2 }">
							신고
						</c:if> <c:if test="${vo.b_head eq 3 }">
							자유
						</c:if> &nbsp;
					</span>&nbsp;&nbsp;&nbsp;${vo.subject}
				</h4>
			</div>

			<div
				style="height: 30px; width: 700px; padding-top: 5px; background-color: #eee;">
				<p style="padding-left: 15px; display: inline-block;">${vo.m_id}</p>
				<p
					style="color: #808080; font-size: 14px; display: inline-block; padding-left: 310px;">test_member/board_inside.do?b_idx=${vo.b_idx}</p>
			</div>

			<div style="width: 700px; padding-top: 30px;">
				<p style="padding-left: 5px;">${vo.content}</p>
			</div>

			<div
				style="font-size: 13px; color: #a3a3a3; padding-left: 5px; padding-top: 20px;">
				<p id="date" style="display: inline-block;"></p>
				<p style="display: inline-block;">&nbsp;조회${vo.readhit}</p>
				<p onclick="b_del()" style="display: inline-block; cursor: pointer;">&nbsp;삭제</p>
			</div>


			<div
				style="width: 700px; padding-left: 5px; margin: 20px 0; border-bottom: 1px solid #ddd;"></div>

			<div style="padding-left: 5px;">
				<h3
					style="font-size: 17px; color: black; font-weight: normal; text-align: left;">댓글&nbsp;${comment}개</h3>
			</div>

			<form name="f">
				<input type="hidden" name="b_idx" value="${vo.b_idx}"> <input
					type="hidden" name="m_idx" value="${id.m_idx}">
				<div style="width: 700px; display: flex; margin: 10px 0;">
					<input type="text" class="text" name="bd_content"
						placeholder="댓글을 입력해주세요."
						style="display: inline-block; height: 40px; font-size: 16px;">
					<div class="btn_wrapper" style="width: 80px;">
						<input type="button" value="등록" class="btn"
							onclick="send_check(this.form);"
							style="display: inline-block; cursor: pointer; border: none; background-color: #2775DF;">
					</div>
				</div>
			</form>


			<form name="f2">
				<input type="hidden" name="b_idx" value="${vo.b_idx}"> <input
					type="hidden" name="m_idx" value="${id.m_idx}">
				<div>
					<c:forEach var="vo" items="${list}" varStatus="status">
						<input type="hidden" value="${vo.bd_idx}" name="bd_idx"
							id="bd_idx">
						<input type="hidden" value="${vo.m_idx}" id="m_idx_1">
						<c:if test="${vo.depth ne 1 }">
							<div class="comment_div" style="margin-left: 30px;" width="300">
								<p style="padding-top: 5px;">ㄴ&nbsp;${vo.m_id}</p>
								<p style="margin-left: 20px; padding: 5px 0;">${vo.bd_content}</p>
								<div
									style="margin-left: 20px; padding-bottom: 5px; border-bottom: 1px solid #ddd;">
									<p class="date2${status.index }"
										style="display: inline-block; margin: 5px 0; font-size: 13px; color: #a3a3a3;">
										${vo.bd_regdate}</p>
									<p onclick="del()"
										style="display: inline-block; cursor: pointer; font-size: 13px; color: #a3a3a3;">&nbsp;&nbsp;삭제</p>
								</div>
							</div>
						</c:if>
						<c:if test="${vo.depth eq 1 }">
							<div class="comment_div" style="">
								<p style="padding-top: 5px;">${vo.m_id}</p>
								<p style="padding: 5px 0;">${vo.bd_content}</p>
								<div style="padding-bottom: 5px; border-bottom: 1px solid #ddd;">
									<p class="date2${status.index }"
										style="display: inline-block; margin: 5px 0; font-size: 13px; color: #a3a3a3;">
										${vo.bd_regdate}</p>
									<p onclick="del()"
										style="display: inline-block; cursor: pointer; font-size: 13px; color: #a3a3a3;">&nbsp;&nbsp;삭제</p>
									<p
										style="display: inline-block; cursor: pointer; font-size: 13px; color: #a3a3a3;"
										onclick="doDisplay();">&nbsp;&nbsp;답글 달기</p>
									<div id="myDIV" style="display: none;">
										<input name="bd_content" class="reply_btn" type="text"
											placeholder="${vo.m_id}에게 답글 달기"> <input
											class="reply_btn2" type="button" value="등록"
											onclick="bd_send(this.form)">
									</div>
								</div>
							</div>
						</c:if>

					</c:forEach>
				</div>
			</form>

		</div>
	</div>

</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	
	function timeForToday(value) {
	    const today = new Date();
	    const timeValue = new Date(value);
	
	    const betweenTime = Math.floor((today.getTime() - timeValue.getTime()) / 1000 / 60);
	    
	    if (betweenTime < 1) return '방금전';
	    if (betweenTime < 60) {
	        return betweenTime+'분전';
	    }
	
	    const betweenTimeHour = Math.floor(betweenTime / 60);
	    if (betweenTimeHour < 24) {
	        return betweenTimeHour+'시간전';
	    }
	
	    const betweenTimeDay = Math.floor(betweenTime / 60 / 24);
	    if (betweenTimeDay < 365) {
	        return betweenTimeDay+'일전';
	    }
	
	    return Math.floor(betweenTimeDay / 365)+'년전';
	};
	
	var regdate = timeForToday("${vo.regdate}");
	document.getElementById("date").innerHTML = regdate;

	let arr =[];
	var comment = parseInt("${comment}");
	for(var i=0; i<comment; i++) {
		console.log($('.date2'+i).text());
		arr.push($('.date2'+i).text());
	}
	
	for(var i=0; i<arr.length; i++){
		let regdate = timeForToday(arr[i]);
		$('.date2'+i).text(regdate);
	}
	

	
</script>
</html>