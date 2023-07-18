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
	function update(f) {
		var p_name = f.p_name.value;
		var p_price = f.p_price.value;
		var p_text = f.p_text.value;
		var p_idx = f.p_idx.value;
		
		var url = "product_update.do";
		var param = "p_name="+p_name+"&p_price="+p_price+"&p_text="+p_text+"&p_idx="+p_idx;
		
		sendRequest(url,param,updateCheck,"post");
	}
	
	function updateCheck(){
		if(xhr.readyState == 4 && xhr.status == 200){
			 var data = xhr.responseText;
			 
			 var json = (new Function('return'+data))();
			 
			 if(json[0].result == 'yes'){
				 alert("수정 성공");
				 location.href="product_view.do?p_idx=${vo.p_idx}";
			 } else {
				 alert("수정 실패");
			 }
		}
	}
	
</script>
</head>
<body>

	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

	<div class="container">
		<form>
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
					style="font-size: 18px; color: black; padding-left: 15px; display: inline-block;">${vo.m_id}</p>
				<p
					style="color: #808080; font-size: 14px; display: inline-block; padding-left: 200px;">test_member/board_inside.do?p_idx=${vo.p_idx}</p>
			</div>
			<div>
				<h1
					style="text-align: left; margin-top: -20px; color: black; font-weight: 600; line-height: 1.5; letter-spacing: -0.6px;">
					<select style="height: 30px; border-radius: 5px; font-size: 17px;">
						<option value="0">판매중</option>
						<option value="1">거래중</option>
						<option value="2">판매완료</option>
					</select> <input name="p_name" type="text" value="${vo.p_name}"
						style="font-size: 20px; font-weight: 600; border: none;">
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
			<input type="hidden" value="${vo.p_idx}" name="p_idx">
			<input
				name="p_price" style="padding-top: 10px; font-size: 18px; font-weight: bold; color: black; text-align: left; border: none;"
				value="${vo.p_price}"> <input name="p_text" value="${vo.p_text}"
				style="font-size: 17px; margin: 16px 0; width: 600px; border: none;">

			<div
				style="display: flex; align-items: center; height: 30px; width: 600px; padding-bottom: 20px; border-bottom: 1.5px solid #ccc;">
				<p style="color: #868e96; font-size: 13px; display: inline-block;">찜
					${p_hit} ∙</p>
				<p style="color: #868e96; font-size: 13px; display: inline-block;">&nbsp;채팅
					10</p>
			</div>
			<div style="position: fixed; top: 90%; left: 67%;">
				<input type="button" value="상품 등록"
					onclick="update(this.form);" class="insert_btn"
					style="text-align: center; width: 100px; height: 40px; padding: 8px; margin-bottom: 3px; font-size: 18px; border: 1px solid #ccc; border-radius: 3px; box-sizing: border-box; background-color: #2775DF; color: white; cursor: pointer; box-shadow: rgba(99, 99, 99, 0.1) 0px 2px 8px 0px;">
			</div>
		</form>

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