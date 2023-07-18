<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/product_view.css">
<script src="resources/js/httpRequest.js"></script>
<script type="text/javascript">
function del(){
	
	if(${id.m_idx} != ${vo.m_idx}){
		alert("글 작성자가 아닙니다.");
		return;
	}
	
	if(!confirm("삭제하시겠습니까?")){
		return;
	}
	
	var url = "product_delete.do";
	var param = "p_idx="+${vo.p_idx};
	
	sendRequest(url,param,delCheck,"get");
}

function delCheck(){
	if(xhr.readyState == 4 && xhr.status == 200){
		 var data = xhr.responseText;
		 
		 var json = (new Function('return'+data))();
		 
		 if(json[0].result == 'yes'){
			 alert("삭제 성공");
			 location.href="main.do";
		 } else {
			 alert("삭제 실패");
		 }
	}
}

function update_view() {
	if(${id.m_idx} != ${vo.m_idx}){
		alert("글 작성자가 아닙니다.");
		return;
	}
	
	location.href='product_update_view.do?p_idx=${vo.p_idx}'
	
}

</script>
</head>
<body>

	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

	<div class="container">
		<div class="CSSgal">

			<!-- Don't wrap targets in parent -->
			<s id="s1"></s> <s id="s2"></s> <s id="s3"></s>

			<div class="slider">
				<div style="background-image: url('resources/img/air_img1.jpg');">
					<h2>IMG 1</h2>
				</div>
				<div style="background-image: url('resources/img/air_img2.jpg');">
					<h2>IMG 2</h2>
				</div>
				<div style="background-image: url('resources/img/air_img3.jpg');">
					<h2>IMG 3</h2>
				</div>
			</div>

			<div class="prevNext">
				<div>
					<a href="#s3"></a><a href="#s2"></a>
				</div>
				<div>
					<a href="#s1"></a><a href="#s3"></a>
				</div>
				<div>
					<a href="#s2"></a><a href="#s1"></a>
				</div>
			</div>

			<div class="bullets">
				<a href="#s1"></a> <a href="#s2"></a> <a href="#s3"></a>
			</div>

		</div>
		<div
			style="display: flex; align-items: center; height: 30px; width: 600px; padding: 35px 0px; border-bottom: 1.5px solid #ccc;">
			<img
				style="width: 40px; height: 40px; -o-object-fit: cover; object-fit: cover; border-radius: 50%; -webkit-border-radius: 50%;"
				src="https://d1unjqcospf8gs.cloudfront.net/assets/users/default_profile_80-c649f052a34ebc4eee35048815d8e4f73061bf74552558bb70e07133f25524f9.png">
			<p
				style="font-size: 18px; color: black; padding-left: 15px; display: inline-block;"
				id="m_id_1">${vo.m_id}</p>
			<p
				style="color: #808080; font-size: 14px; display: inline-block; padding-left: 200px;">test_member/board_inside.do?p_idx=${vo.p_idx}</p>
		</div>
		<div>
			<h1
				style="text-align: left; margin-top: 30px; color: black; font-size: 20px; font-weight: 600; line-height: 1.5; letter-spacing: -0.6px;">
				<c:if test="${vo.p_state eq 0 }">
					<span style="color: #2775DF;">판매중</span>
				</c:if>
				<c:if test="${vo.p_state eq 1 }">
					<span style="color: #e83d1e;">거래중</span>
				</c:if>
				<c:if test="${vo.p_state eq 2 }">
					<span style="color: #a3a3a3;">판매완료</span>
				</c:if>

				${vo.p_name}
			</h1>
		</div>
		<div style="font-size: 13px; color: #a3a3a3; padding-top: 5px;">
			<c:if test="${vo.p_code gt 100 and vo.p_code lt 200}">
				<p style="display: inline-block;">데스크탑∙</p>
			</c:if>
			<c:if test="${vo.p_code gt 200 and vo.p_code lt 300}">
				<p style="display: inline-block;">노트북∙</p>
			</c:if>
			<c:if test="${vo.p_code gt 300 and vo.p_code lt 400}">
				<p style="display: inline-block;">태블릿∙</p>
			</c:if>
			<c:if test="${vo.p_code gt 400 and vo.p_code lt 500}">
				<p style="display: inline-block;">스마트폰∙</p>
			</c:if>
			<c:if test="${vo.p_code gt 500 and vo.p_code lt 600}">
				<p style="display: inline-block;">헤드셋∙</p>
			</c:if>
			<c:if test="${vo.p_code gt 600}">
				<p style="display: inline-block;">이어폰∙</p>
			</c:if>

			<p id="date" style="display: inline-block;"></p>
		</div>
		<h3
			style="padding-top: 10px; font-size: 18px; font-weight: bold; color: black; text-align: left;">${vo.p_price}원</h3>

		<p style="font-size: 17px; margin: 16px 0; width: 600px;">
			${vo.p_text}</p>

		<div
			style="display: flex; align-items: center; height: 30px; width: 600px; padding-bottom: 20px; border-bottom: 1.5px solid #ccc;">
			<p
				style="cursor: pointer; color: #868e96; font-size: 13px; display: inline-block;"
				onclick="update_view()">수정 ∙</p>
			<p
				style="cursor: pointer; color: #868e96; font-size: 13px; display: inline-block;"
				onclick="del();">&nbsp;삭제</p>
			<input type="hidden" value="${vo.p_idx}" id="p_idx">
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
	
	var regdate = timeForToday("${vo.p_date}");
	document.getElementById("date").innerHTML = regdate;
	
</script>
</html>