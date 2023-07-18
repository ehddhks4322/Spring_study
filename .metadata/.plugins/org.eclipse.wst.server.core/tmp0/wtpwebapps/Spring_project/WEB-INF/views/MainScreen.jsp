<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/MainScreen.css">
<script src="resources/js/httpRequest.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript">
function add_heart(m_idx, p_idx){
	
	var m_idx = m_idx;
	var p_idx = p_idx;
	var my_idx = document.getElementById("md_idx").value;
	
	var url = "add_heart.do";
	var param = "m_idx="+m_idx+"&p_idx="+p_idx+"&my_idx="+my_idx;
	sendRequest(url,param,resultHeart,"POST");
}

function resultHeart(){
	if(xhr.readyState == 4 && xhr.status == 200){
		var data = xhr.responseText;
		var json = (new Function('return'+data))();
		
		if(json[0].result == 'removed'){
			swal({
			    title: "찜 목록에서 삭제되었습니다.",
			    icon: "success",
			    buttons: {
			      confirm: {
			        text: "확인",
			        value: true,
			        visible: true,
			        className: "",
			        closeModal: true
			      }
			    }
			  }).then(function() {
			    location.href = "main.do";
			  });
		}
		
		if(json[0].result == 'failure'){
			swal({
			    title: "오류가 발생했습니다.",
			    icon: "success",
			    buttons: {
			      confirm: {
			        text: "확인",
			        value: true,
			        visible: true,
			        className: "",
			        closeModal: true
			      }
			    }
			  }).then(function() {
			    location.href = "main.do";
			  });
		}
		
		if(json[0].result == 'added'){
			swal({
			    title: "찜 목록에 추가되었습니다.",
			    icon: "success",
			    buttons: {
			      confirm: {
			        text: "확인",
			        value: true,
			        visible: true,
			        className: "",
			        closeModal: true
			      }
			    }
			  }).then(function() {
			    location.href = "main.do";
			  });
		}
		
		if(json[0].result == 'failure2'){
			swal({
			    title: "오류가 발생했습니다.",
			    icon: "success",
			    buttons: {
			      confirm: {
			        text: "확인",
			        value: true,
			        visible: true,
			        className: "",
			        closeModal: true
			      }
			    }
			  }).then(function() {
			    location.href = "main.do";
			  });
		}
	}
}
</script>
</head>
<body>

	<div id="header">
		<nav>
			<ul>
				<li>
					<div class="logo" onclick="location.href='main.do'">
						GET&nbsp;<span style="color: #275EDF;">IT</span>
					</div>
				</li>
				<li><a href="#">PC</a>
					<ul>
						<li><a href="#">데스크탑</a>
							<ul>
								<li value="101"
									onclick="location.href='main_code.do?p_code=101'"><a
									href="#">삼성전자</a></li>
								<li value="102"
									onclick="location.href='main_code.do?p_code=102'"><a
									href="#">LG전자</a></li>
								<li value="103"
									onclick="location.href='main_code.do?p_code=103'"><a
									href="#">HP</a></li>
								<li value="104"
									onclick="location.href='main_code.do?p_code=104'"><a
									href="#">ASUS</a></li>
								<li value="105"
									onclick="location.href='main_code.do?p_code=105'"><a
									href="#">MSI</a></li>
								<li value="106"
									onclick="location.href='main_code.do?p_code=106'"><a
									href="#">한성컴퓨터</a></li>
								<li value="107"
									onclick="location.href='main_code.do?p_code=107'"><a
									href="#">기타 브랜드</a></li>
							</ul></li>
						<li><a href="#">노트북</a>
							<ul>
								<li value="201"
									onclick="location.href='main_code.do?p_code=201'"><a
									href="#">삼성전자</a></li>
								<li value="202"
									onclick="location.href='main_code.do?p_code=202'"><a
									href="#">LG전자</a></li>
								<li value="203"
									onclick="location.href='main_code.do?p_code=203'"><a
									href="#">HP</a></li>
								<li value="204"
									onclick="location.href='main_code.do?p_code=204'"><a
									href="#">ASUS</a></li>
								<li value="205"
									onclick="location.href='main_code.do?p_code=205'"><a
									href="#">MSI</a></li>
								<li value="206"
									onclick="location.href='main_code.do?p_code=206'"><a
									href="#">한성컴퓨터</a></li>
								<li value="207"
									onclick="location.href='main_code.do?p_code=207'"><a
									href="#">기타 브랜드</a></li>
							</ul></li>
					</ul></li>
				<!-- PC -->
				<li><a href="#">모바일</a>
					<ul>
						<li><a href="#">태블릿</a>
							<ul>
								<li><a href="#">갤럭시</a>
									<ul>
										<li value="301"
											onclick="location.href='main_code.do?p_code=301'"><a
											href="#">10인치대</a></li>
										<li value="302"
											onclick="location.href='main_code.do?p_code=302'"><a
											href="#">11인치대</a></li>
										<li value="303"
											onclick="location.href='main_code.do?p_code=303'"><a
											href="#">12인치대</a></li>
										<li value="304"
											onclick="location.href='main_code.do?p_code=304'"><a
											href="#">13인치대</a></li>
									</ul></li>
								<li><a href="#">Apple</a>
									<ul>
										<li value="305"
											onclick="location.href='main_code.do?p_code=305'"><a
											href="#">10인치대</a></li>
										<li value="306"
											onclick="location.href='main_code.do?p_code=306'"><a
											href="#">11인치대</a></li>
										<li value="307"
											onclick="location.href='main_code.do?p_code=307'"><a
											href="#">12인치대</a></li>
										<li value="308"
											onclick="location.href='main_code.do?p_code=308'"><a
											href="#">13인치대</a></li>
									</ul></li>
								<li><a href="#">기타 브랜드</a>
									<ul>
										<li value="309"
											onclick="location.href='main_code.do?p_code=309'"><a
											href="#">10인치대</a></li>
										<li value="310"
											onclick="location.href='main_code.do?p_code=310'"><a
											href="#">11인치대</a></li>
										<li value="311"
											onclick="location.href='main_code.do?p_code=311'"><a
											href="#">12인치대</a></li>
										<li value="312"
											onclick="location.href='main_code.do?p_code=312'"><a
											href="#">13인치대</a></li>
									</ul></li>
							</ul></li>
						<li><a href="#">스마트폰</a>
							<ul>
								<li><a href="#">갤럭시</a>
									<ul>
										<li value="401"
											onclick="location.href='main_code.do?p_code=401'"><a
											href="#">32GB</a></li>
										<li value="402"
											onclick="location.href='main_code.do?p_code=402'"><a
											href="#">64GB</a></li>
										<li value="403"
											onclick="location.href='main_code.do?p_code=403'"><a
											href="#">128GB</a></li>
										<li value="404"
											onclick="location.href='main_code.do?p_code=404'"><a
											href="#">256GB</a></li>
										<li value="405"
											onclick="location.href='main_code.do?p_code=405'"><a
											href="#">512GB</a></li>
									</ul></li>
								<li><a href="#">Apple</a>
									<ul>
										<li value="406"
											onclick="location.href='main_code.do?p_code=406'"><a
											href="#">32GB</a></li>
										<li value="407"
											onclick="location.href='main_code.do?p_code=407'"><a
											href="#">64GB</a></li>
										<li value="408"
											onclick="location.href='main_code.do?p_code=408'"><a
											href="#">128GB</a></li>
										<li value="409"
											onclick="location.href='main_code.do?p_code=409'"><a
											href="#">256GB</a></li>
										<li value="410"
											onclick="location.href='main_code.do?p_code=410'"><a
											href="#">512GB</a></li>
									</ul></li>
								<li><a href="#">기타 브랜드</a>
									<ul>
										<li value="411"
											onclick="location.href='main_code.do?p_code=411'"><a
											href="#">32GB</a></li>
										<li value="412"
											onclick="location.href='main_code.do?p_code=412'"><a
											href="#">64GB</a></li>
										<li value="413"
											onclick="location.href='main_code.do?p_code=413'"><a
											href="#">128GB</a></li>
										<li value="414"
											onclick="location.href='main_code.do?p_code=414'"><a
											href="#">256GB</a></li>
										<li value="415"
											onclick="location.href='main_code.do?p_code=415'"><a
											href="#">512GB</a></li>
									</ul></li>
							</ul></li>
					</ul></li>
				<!-- 모바일 -->

				<li><a href="#">헤드셋/이어폰</a>
					<ul>
						<li><a href="#">헤드셋</a>
							<ul>
								<li><a href="#">삼성전자</a>
									<ul>
										<li><a href="#">유선</a>
											<ul>
												<li value="501"
													onclick="location.href='main_code.do?p_code=501'"><a
													href="#">커널형</a></li>
												<li value="502"
													onclick="location.href='main_code.do?p_code=502'"><a
													href="#">오픈형</a></li>
											</ul></li>
										<li><a href="#">무선</a>
											<ul>
												<li value="503"
													onclick="location.href='main_code.do?p_code=503'"><a
													href="#">커널형</a></li>
												<li value="504"
													onclick="location.href='main_code.do?p_code=504'"><a
													href="#">오픈형</a></li>
											</ul></li>
									</ul></li>
								<li><a href="#">Apple</a>
									<ul>
										<li><a href="#">유선</a>
											<ul>
												<li value="505"
													onclick="location.href='main_code.do?p_code=505'"><a
													href="#">커널형</a></li>
												<li value="506"
													onclick="location.href='main_code.do?p_code=506'"><a
													href="#">오픈형</a></li>
											</ul></li>
										<li><a href="#">무선</a>
											<ul>
												<li value="507"
													onclick="location.href='main_code.do?p_code=507'"><a
													href="#">커널형</a></li>
												<li value="508"
													onclick="location.href='main_code.do?p_code=508'"><a
													href="#">오픈형</a></li>
											</ul></li>
									</ul></li>
								<li><a href="#">젠하이저</a>
									<ul>
										<li><a href="#">유선</a>
											<ul>
												<li value="509"
													onclick="location.href='main_code.do?p_code=509'"><a
													href="#">커널형</a></li>
												<li value="510"
													onclick="location.href='main_code.do?p_code=510'"><a
													href="#">오픈형</a></li>
											</ul></li>
										<li><a href="#">무선</a>
											<ul>
												<li value="511"
													onclick="location.href='main_code.do?p_code=511'"><a
													href="#">커널형</a></li>
												<li value="512"
													onclick="location.href='main_code.do?p_code=512'"><a
													href="#">오픈형</a></li>
											</ul></li>
									</ul></li>
								<li><a href="#">JBL</a>
									<ul>
										<li><a href="#">유선</a>
											<ul>
												<li value="513"
													onclick="location.href='main_code.do?p_code=513'"><a
													href="#">커널형</a></li>
												<li value="514"
													onclick="location.href='main_code.do?p_code=514'"><a
													href="#">오픈형</a></li>
											</ul></li>
										<li><a href="#">무선</a>
											<ul>
												<li value="515"
													onclick="location.href='main_code.do?p_code=515'"><a
													href="#">커널형</a></li>
												<li value="516"
													onclick="location.href='main_code.do?p_code=516'"><a
													href="#">오픈형</a></li>
											</ul></li>
									</ul></li>
								<li><a href="#">QCY</a>
									<ul>
										<li><a href="#">유선</a>
											<ul>
												<li value="517"
													onclick="location.href='main_code.do?p_code=517'"><a
													href="#">커널형</a></li>
												<li value="518"
													onclick="location.href='main_code.do?p_code=518'"><a
													href="#">오픈형</a></li>
											</ul></li>
										<li><a href="#">무선</a>
											<ul>
												<li value="519"
													onclick="location.href='main_code.do?p_code=519'"><a
													href="#">커널형</a></li>
												<li value="520"
													onclick="location.href='main_code.do?p_code=520'"><a
													href="#">오픈형</a></li>
											</ul></li>
									</ul></li>
								<li><a href="#">기타 브랜드</a>
									<ul>
										<li><a href="#">유선</a>
											<ul>
												<li value="521"
													onclick="location.href='main_code.do?p_code=521'"><a
													href="#">커널형</a></li>
												<li value="522"
													onclick="location.href='main_code.do?p_code=522'"><a
													href="#">오픈형</a></li>
											</ul></li>
										<li><a href="#">무선</a>
											<ul>
												<li value="523"
													onclick="location.href='main_code.do?p_code=523'"><a
													href="#">커널형</a></li>
												<li value="524"
													onclick="location.href='main_code.do?p_code=524'"><a
													href="#">오픈형</a></li>
											</ul></li>
									</ul></li>
							</ul></li>
						<li><a href="#">이어폰</a>
							<ul>
								<li><a href="#">삼성전자</a>
									<ul>
										<li><a href="#">유선</a>
											<ul>
												<li value="601"
													onclick="location.href='main_code.do?p_code=601'"><a
													href="#">커널형</a></li>
												<li value="602"
													onclick="location.href='main_code.do?p_code=602'"><a
													href="#">오픈형</a></li>
											</ul></li>
										<li><a href="#">무선</a>
											<ul>
												<li value="603"
													onclick="location.href='main_code.do?p_code=603'"><a
													href="#">커널형</a></li>
												<li value="604"
													onclick="location.href='main_code.do?p_code=604'"><a
													href="#">오픈형</a></li>
											</ul></li>
									</ul></li>
								<li><a href="#">Apple</a>
									<ul>
										<li><a href="#">유선</a>
											<ul>
												<li value="605"
													onclick="location.href='main_code.do?p_code=605'"><a
													href="#">커널형</a></li>
												<li value="606"
													onclick="location.href='main_code.do?p_code=606'"><a
													href="#">오픈형</a></li>
											</ul></li>
										<li><a href="#">무선</a>
											<ul>
												<li value="607"
													onclick="location.href='main_code.do?p_code=607'"><a
													href="#">커널형</a></li>
												<li value="608"
													onclick="location.href='main_code.do?p_code=608'"><a
													href="#">오픈형</a></li>
											</ul></li>
									</ul></li>
								<li><a href="#">젠하이저</a>
									<ul>
										<li><a href="#">유선</a>
											<ul>
												<li value="609"
													onclick="location.href='main_code.do?p_code=609'"><a
													href="#">커널형</a></li>
												<li value="610"
													onclick="location.href='main_code.do?p_code=610'"><a
													href="#">오픈형</a></li>
											</ul></li>
										<li><a href="#">무선</a>
											<ul>
												<li value="611"
													onclick="location.href='main_code.do?p_code=611'"><a
													href="#">커널형</a></li>
												<li value="612"
													onclick="location.href='main_code.do?p_code=612'"><a
													href="#">오픈형</a></li>
											</ul></li>
									</ul></li>
								<li><a href="#">JBL</a>
									<ul>
										<li><a href="#">유선</a>
											<ul>
												<li value="613"
													onclick="location.href='main_code.do?p_code=613'"><a
													href="#">커널형</a></li>
												<li value="614"
													onclick="location.href='main_code.do?p_code=614'"><a
													href="#">오픈형</a></li>
											</ul></li>
										<li><a href="#">무선</a>
											<ul>
												<li value="615"
													onclick="location.href='main_code.do?p_code=615'"><a
													href="#">커널형</a></li>
												<li value="616"
													onclick="location.href='main_code.do?p_code=616'"><a
													href="#">오픈형</a></li>
											</ul></li>
									</ul></li>
								<li><a href="#">QCY</a>
									<ul>
										<li><a href="#">유선</a>
											<ul>
												<li value="617"
													onclick="location.href='main_code.do?p_code=617'"><a
													href="#">커널형</a></li>
												<li value="618"
													onclick="location.href='main_code.do?p_code=618'"><a
													href="#">오픈형</a></li>
											</ul></li>
										<li><a href="#">무선</a>
											<ul>
												<li value="619"
													onclick="location.href='main_code.do?p_code=619'"><a
													href="#">커널형</a></li>
												<li value="620"
													onclick="location.href='main_code.do?p_code=620'"><a
													href="#">오픈형</a></li>
											</ul></li>
									</ul></li>
								<li><a href="#">기타 브랜드</a>
									<ul>
										<li><a href="#">유선</a>
											<ul>
												<li value="621"
													onclick="location.href='main_code.do?p_code=621'"><a
													href="#">커널형</a></li>
												<li value="622"
													onclick="location.href='main_code.do?p_code=622'"><a
													href="#">오픈형</a></li>
											</ul></li>
										<li><a href="#">무선</a>
											<ul>
												<li value="623"
													onclick="location.href='main_code.do?p_code=623'"><a
													href="#">커널형</a></li>
												<li value="624"
													onclick="location.href='main_code.do?p_code=624'"><a
													href="#">오픈형</a></li>
											</ul></li>
									</ul></li>
							</ul></li>
					</ul></li>
				<!-- 헤드셋/이어폰 -->
				<li><input class="header_input" type="button" value="게시판"
					onclick="location.href='board_list.do'"></li>
				<li><a href="my_page.do">마이페이지</a>
					<ul>
						<li><a href="logout.do">로그아웃</a></li>
					</ul></li>
				<li><input class="header_search" type="text"
					placeholder="물품명을 검색해보세요"></li>
				<li><input class="header_input" type="button" value="채팅룸"></li>
			</ul>
		</nav>
	</div>
	<!-- header -->

	<div
		style="text-align: center; width: 100%; height: 604px; background-color: #D7E6FF; background-image: url('resources/img/pcpic.png'); background-size: cover;">
		<h2 style="padding-top: 50px; color: #1d1d1f; font-style: italic;">
			안전한 IT 직거래, GET <span style="color: #275EDF;">IT</span>에서.
		</h2>
	</div>

	<input type="hidden" value="${id.m_idx}" id="md_idx">
	<!-- grid main -->
	<section class="padding-section">
		<div translate="no">
			<div id="root">
				<div class="app">
					<h2 style="padding-left: 120px; color: #212121; font-size: 24px;">오늘의
						상품 추천</h2>
					<div class="grid">
						<div class="palettes">

							<c:forEach var="vo" items="${list}">
								<figure class="palette">
									<div class="aspect-ratio">
										<div class="see"></div>
									</div>
									<figcaption class="palette_caption">
										<img
											onclick="location.href='product_view.do?p_idx=${vo.p_idx}'"
											src="resources/img/main_img.png" width="294px;"
											height="294px"
											style="cursor: pointer; box-shadow: rgba(99, 99, 99, 0.1) 0px 2px 8px 0px; object-fit: cover; border-radius: 12px;">
										<div
											style="display: flex; width: 290px; justify-content: space-between;">
											<h4 style="font-size: 16px; font-weight: 500;">${vo.p_name}</h4>
											<input type="button" value="찜버튼" onclick="add_heart('${vo.m_idx}', '${vo.p_idx}')">
											<img src="resources/img/heart.png" width="20px" height="20px"
												style="padding-top: 5px;">
										</div>
										<p style="font-weight: bold; font-size: 15px;">${vo.p_price}원</p>
										<p style="font-weight: 300; font-size: 13px;">${vo.m_loc.substring(0, 10)}</p>
									</figcaption>
								</figure>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<div style="position: fixed;top: 90%;left: 90%;">
		<input type="button" value="상품 등록" onclick="location.href='product.do'"
		class="insert_btn">
	</div>


	<!-- footer -->
	<main>
		<ul class="footer-sns">
			<li><a target="_blank" title="애플"> <img
					src="https://kr.object.ncloudstorage.com/dev-open/design/sns/487030d2-fe7e-40ed-9be2-fc5f192ca61c.png"
					alt="애플">
			</a></li>
			<li><a target="_blank" title="구글플레이"> <img
					src="https://kr.object.ncloudstorage.com/dev-open/design/sns/13e0cfea-cf89-40c5-b887-3c986bcbc623.png"
					alt="구글플레이">
			</a></li>
			<li><a target="_blank" title="밴드"> <img
					src="https://kr.object.ncloudstorage.com/dev-open/design/sns/911f92fc-cd2c-41dc-9064-632e92ed3c7f.png"
					alt="밴드">
			</a></li>
			<li><a target="_blank" title="페이스북"> <img
					src="https://kr.object.ncloudstorage.com/dev-open/design/sns/1cf1b3ed-296f-47d4-a142-807a347f09b2.png"
					alt="페이스북">
			</a></li>
			<li><a target="_blank" title="인스타그램"> <img
					src="https://kr.object.ncloudstorage.com/dev-open/design/sns/d83cb015-2c22-42f0-a932-2ceff9f2cdc7.png"
					alt="인스타그램">
			</a></li>
			<li><a target="_blank" title="유튜브"> <img
					src="https://kr.object.ncloudstorage.com/prod-open/design/sns/5cc55db0-c642-4321-8436-d44afe904eb9.png"
					alt="유튜브">
			</a></li>
			<li><a target="_blank" title="카카오채널"> <img
					src="https://kr.object.ncloudstorage.com/dev-open/design/sns/393cbe3a-3ded-412e-b9da-42d6a351afd8.png"
					alt="카카오채널">
			</a></li>
			<li><a target="_blank" title="네이버블로그"> <img
					src="https://kr.object.ncloudstorage.com/dev-open/design/sns/244b495e-9df7-4444-8ed7-7a9403cac0a2.png"
					alt="네이버블로그">
			</a></li>
		</ul>
	</main>

	<footer>
		<div class="footer-bottom">
			<div class="container flex-center">
				<div class="footer-content">
					<div class="footerLogo">
						<a href="" title="중고거래"> <img
							src="https://i.pinimg.com/originals/97/9c/77/979c7792571e74cc72c64379b2f8a634.png"
							alt="중고거래">
						</a>
					</div>
					<div class="footerLeft">
						<div class="comp-info">
							<p>
								상호명 : <span>GET IT</span>
							</p>
							<p>
								대표 : <span>김이정</span> <span class="separation"></span> <span>인천광역시
									부평구 어디인지 알고싶지 맞춰봐 안알려주지</span>
							</p>

							<p>
								중고거래 판매 : <span>당근당근</span> <span class="separation"></span> 오늘의
								물품은 : <span>알고싶지만 알수없는 기분</span>
							</p>
							<p>
								Tel : <span>010) 1234-5678</span> <span class="separation"></span>
								Mail : <span>gonadala.examplecom (이메일입니당)</span> <span
									class="separation"></span> 개인정보 보호 : <span>중고거래</span>
							</p>
						</div>
						<div class="policy">
							<a href="">개인정보 처리방침</a> <a href="">이용약관</a> <a href="">안전구매
								서비스</a> <a href="">사업자 정보확인</a>
						</div>
						<ul class="award-list">
							<li>
								<p>
									코리아 it 아카데미<br>올해의 상 1위
								</p>
							</li>
							<li>
								<p>
									수강생들이 뽑은<br>프로젝트 1위
								</p>
							</li>
							<li>
								<p>
									2023<br>우리조가 짱이다
								</p>
							</li>
							<li class="display-none sm-display-flex">
								<p>
									코리아 it<br>아카데미
								</p>
							</li>
						</ul>
						<div class="copyright">KOREA IT ACADEMY</div>
					</div>
					<div class="footerRight">
						<h3 class="sm-display-none">GET IT</h3>
						<div class="center-info-wrap">
							<h3 class="display-none sm-display-inline-block">중고거래</h3>
							<div class="center-tell sm-display-inline-block">
								<p>1234-5678</p>
							</div>
							<div class="center-info">
								<p class="mb-3">평일 09:00 - 18:00 | 점심시간 12:00 - 13:00</p>
								<p>(토/일요일, 공휴일 휴무)</p>
							</div>
						</div>
						<div class="footer-btn">
							<ul>
								<li><a title="자주묻는질문"> 자주묻는질문 </a></li>
								<li><a title="1:1 문의"> 1:1 문의 </a></li>
								<li><a title="A/S 온라인접수"> A/S 온라인접수 </a></li>
								<li><a title="지점위치안내" href="loc_guide.do"> 지점위치안내 </a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>

</body>
</html>