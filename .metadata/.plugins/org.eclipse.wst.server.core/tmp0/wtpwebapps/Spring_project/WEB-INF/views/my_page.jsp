<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="resources/css/my_page.css">
		<script type="text/javascript">
			 function showProfile() {
		            document.getElementById('profile').style.display = 'block';
		            document.getElementById('wishlist').style.display = 'none';
		            document.getElementById('postlist').style.display = 'none';
		        }
	
		        function showWishlist() {
		            document.getElementById('profile').style.display = 'none';
		            document.getElementById('wishlist').style.display = 'block';
		            document.getElementById('postlist').style.display = 'none';
		        }
	
		        function showPostlist() {
		            document.getElementById('profile').style.display = 'none';
		            document.getElementById('wishlist').style.display = 'none';
		            document.getElementById('postlist').style.display = 'block';
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
								<li><a href="#">삼성전자</a></li>
								<li><a href="#">LG전자</a></li>
								<li><a href="#">HP</a></li>
								<li><a href="#">ASUS</a></li>
								<li><a href="#">MSI</a></li>
								<li><a href="#">한성컴퓨터</a></li>
								<li><a href="#">기타 브랜드</a></li>
							</ul></li>
						<li><a href="#">노트북</a>
							<ul>
								<li><a href="#">삼성전자</a></li>
								<li><a href="#">LG전자</a></li>
								<li><a href="#">HP</a></li>
								<li><a href="#">ASUS</a></li>
								<li><a href="#">MSI</a></li>
								<li><a href="#">한성컴퓨터</a></li>
								<li><a href="#">기타 브랜드</a></li>
							</ul></li>
					</ul></li>
				<!-- PC -->
				<li><a href="#">모바일</a>
					<ul>
						<li><a href="#">태블릿</a>
							<ul>
								<li><a href="#">갤럭시</a>
									<ul>
										<li><a href="#">10인치대</a></li>
										<li><a href="#">11인치대</a></li>
										<li><a href="#">12인치대</a></li>
										<li><a href="#">13인치대</a></li>
									</ul></li>
								<li><a href="#">Apple</a>
									<ul>
										<li><a href="#">10인치대</a></li>
										<li><a href="#">11인치대</a></li>
										<li><a href="#">12인치대</a></li>
										<li><a href="#">13인치대</a></li>
									</ul></li>
								<li><a href="#">기타 브랜드</a>
									<ul>
										<li><a href="#">10인치대</a></li>
										<li><a href="#">11인치대</a></li>
										<li><a href="#">12인치대</a></li>
										<li><a href="#">13인치대</a></li>
									</ul></li>
							</ul></li>
						<li><a href="#">스마트폰</a>
							<ul>
								<li><a href="#">갤럭시</a>
									<ul>
										<li><a href="#">32GB</a></li>
										<li><a href="#">64GB</a></li>
										<li><a href="#">128GB</a></li>
										<li><a href="#">256GB</a></li>
										<li><a href="#">512GB</a></li>
									</ul></li>
								<li><a href="#">Apple</a>
									<ul>
										<li><a href="#">32GB</a></li>
										<li><a href="#">64GB</a></li>
										<li><a href="#">128GB</a></li>
										<li><a href="#">256GB</a></li>
										<li><a href="#">512GB</a></li>
									</ul></li>
								<li><a href="#">기타 브랜드</a>
									<ul>
										<li><a href="#">32GB</a></li>
										<li><a href="#">64GB</a></li>
										<li><a href="#">128GB</a></li>
										<li><a href="#">256GB</a></li>
										<li><a href="#">512GB</a></li>
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
												<li><a href="#">커널형</a></li>
												<li><a href="#">오픈형</a></li>
											</ul></li>
										<li><a href="#">무선</a>
											<ul>
												<li><a href="#">커널형</a></li>
												<li><a href="#">오픈형</a></li>
											</ul></li>
									</ul></li>
								<li><a href="#">Apple</a>
									<ul>
										<li><a href="#">유선</a>
											<ul>
												<li><a href="#">커널형</a></li>
												<li><a href="#">오픈형</a></li>
											</ul></li>
										<li><a href="#">무선</a>
											<ul>
												<li><a href="#">커널형</a></li>
												<li><a href="#">오픈형</a></li>
											</ul></li>
									</ul></li>
								<li><a href="#">젠하이저</a>
									<ul>
										<li><a href="#">유선</a>
											<ul>
												<li><a href="#">커널형</a></li>
												<li><a href="#">오픈형</a></li>
											</ul></li>
										<li><a href="#">무선</a>
											<ul>
												<li><a href="#">커널형</a></li>
												<li><a href="#">오픈형</a></li>
											</ul></li>
									</ul></li>
								<li><a href="#">JBL</a>
									<ul>
										<li><a href="#">유선</a>
											<ul>
												<li><a href="#">커널형</a></li>
												<li><a href="#">오픈형</a></li>
											</ul></li>
										<li><a href="#">무선</a>
											<ul>
												<li><a href="#">커널형</a></li>
												<li><a href="#">오픈형</a></li>
											</ul></li>
									</ul></li>
								<li><a href="#">QCY</a>
									<ul>
										<li><a href="#">유선</a>
											<ul>
												<li><a href="#">커널형</a></li>
												<li><a href="#">오픈형</a></li>
											</ul></li>
										<li><a href="#">무선</a>
											<ul>
												<li><a href="#">커널형</a></li>
												<li><a href="#">오픈형</a></li>
											</ul></li>
									</ul></li>
								<li><a href="#">기타 브랜드</a>
									<ul>
										<li><a href="#">유선</a>
											<ul>
												<li><a href="#">커널형</a></li>
												<li><a href="#">오픈형</a></li>
											</ul></li>
										<li><a href="#">무선</a>
											<ul>
												<li><a href="#">커널형</a></li>
												<li><a href="#">오픈형</a></li>
											</ul></li>
									</ul></li>
							</ul></li>
						<li><a href="#">이어폰</a>
							<ul>
								<li><a href="#">삼성전자</a>
									<ul>
										<li><a href="#">유선</a>
											<ul>
												<li><a href="#">커널형</a></li>
												<li><a href="#">오픈형</a></li>
											</ul></li>
										<li><a href="#">무선</a>
											<ul>
												<li><a href="#">커널형</a></li>
												<li><a href="#">오픈형</a></li>
											</ul></li>
									</ul></li>
								<li><a href="#">Apple</a>
									<ul>
										<li><a href="#">유선</a>
											<ul>
												<li><a href="#">커널형</a></li>
												<li><a href="#">오픈형</a></li>
											</ul></li>
										<li><a href="#">무선</a>
											<ul>
												<li><a href="#">커널형</a></li>
												<li><a href="#">오픈형</a></li>
											</ul></li>
									</ul></li>
								<li><a href="#">소니</a>
									<ul>
										<li><a href="#">유선</a>
											<ul>
												<li><a href="#">커널형</a></li>
												<li><a href="#">오픈형</a></li>
											</ul></li>
										<li><a href="#">무선</a>
											<ul>
												<li><a href="#">커널형</a></li>
												<li><a href="#">오픈형</a></li>
											</ul></li>
									</ul></li>
								<li><a href="#">젠하이저</a>
									<ul>
										<li><a href="#">유선</a>
											<ul>
												<li><a href="#">커널형</a></li>
												<li><a href="#">오픈형</a></li>
											</ul></li>
										<li><a href="#">무선</a>
											<ul>
												<li><a href="#">커널형</a></li>
												<li><a href="#">오픈형</a></li>
											</ul></li>
									</ul></li>
								<li><a href="#">JBL</a>
									<ul>
										<li><a href="#">유선</a>
											<ul>
												<li><a href="#">커널형</a></li>
												<li><a href="#">오픈형</a></li>
											</ul></li>
										<li><a href="#">무선</a>
											<ul>
												<li><a href="#">커널형</a></li>
												<li><a href="#">오픈형</a></li>
											</ul></li>
									</ul></li>
								<li><a href="#">QCY</a>
									<ul>
										<li><a href="#">유선</a>
											<ul>
												<li><a href="#">커널형</a></li>
												<li><a href="#">오픈형</a></li>
											</ul></li>
										<li><a href="#">무선</a>
											<ul>
												<li><a href="#">커널형</a></li>
												<li><a href="#">오픈형</a></li>
											</ul></li>
									</ul></li>
								<li><a href="#">기타 브랜드</a>
									<ul>
										<li><a href="#">유선</a>
											<ul>
												<li><a href="#">커널형</a></li>
												<li><a href="#">오픈형</a></li>
											</ul></li>
										<li><a href="#">무선</a>
											<ul>
												<li><a href="#">커널형</a></li>
												<li><a href="#">오픈형</a></li>
											</ul></li>
									</ul></li>
							</ul></li>
					</ul></li>
				<!-- 헤드셋/이어폰 -->
				<li><input class="header_input" type="button" value="게시판"
					onclick="location.href='board_list.do'"></li>
				<li><a href="my_page.do">마이페이지</a>
					<ul><li><a href="logout.do">로그아웃</a></li></ul>
				</li>
				<li><input class="header_search" type="text"
					placeholder="물품명을 검색해보세요"></li>
				<li><input class="header_input" type="button" value="채팅룸"></li>
			</ul>
		</nav>
	</div>
		<div>
		 <ul class="menu">
		    <li><a href="#" onclick="showProfile()">회원정보</a></li>
		    <li><a href="#" onclick="showWishlist()">찜 목록</a></li>
		    <li><a href="#" onclick="showPostlist()">글 목록</a></li>
		  </ul>
	    </div>
		  
        <div class="profile" id="profile">
            <!-- 프로필 내용 -->
            <h1>회원 정보</h1><br>
            <p>이름 : ${id.m_name}</p>
            <p>아이디 : ${id.m_id}</p>
            <p>이메일 : ${id.m_email}</p>
            <p>전화번호 : ${id.m_tel}</p>
            <p>주소 : ${id.m_loc}</p>
        </div>
      
        <div id="wishlist" style="display: none;">
            <!-- 위시리스트 내용 -->
            <c:forEach var="md" items="${md_list}">
				<figure class="palette">
					<div class="aspect-ratio">
						<div class="see"></div>
					</div>
					<figcaption class="palette_caption">
						<img src="resources/upload/${md.p_img1}" width="294px;"
							height="294px"
							style="box-shadow: rgba(99, 99, 99, 0.1) 0px 2px 8px 0px; object-fit: cover; border-radius: 12px;">
						<div
							style="display: flex; width: 290px; justify-content: space-between;">
							<h4 style="font-size: 16px; font-weight: 500; color: black;">${md.p_name}</h4>
							<img src="resources/img/heart.png" width="20px" height="20px"
								style="padding-top: 5px;">
						</div>
						<p style="font-weight: bold; font-size: 15px; color: black;">${md.p_price}</p>
						<p style="font-weight: 300; font-size: 13px; color: black;">${md.m_loc.substring(0, 10)}</p>
					</figcaption>
				</figure>
			</c:forEach>
        </div>
        
        <div id="postlist" style="display: none;" align="center">
            <!-- 포스트 목록 내용 -->
            	<c:forEach var="vo" items="${list}">
				<figure class="palette">
					<div class="aspect-ratio">
						<div class="see"></div>
					</div>
					<figcaption class="palette_caption">
						<img src="resources/upload/${vo.p_img1}" width="294px;"
							height="294px"
							style="box-shadow: rgba(99, 99, 99, 0.1) 0px 2px 8px 0px; object-fit: cover; border-radius: 12px;">
						<div
							style="display: flex; width: 290px; justify-content: space-between;">
							<h4 style="font-size: 16px; font-weight: 500; color: black;">${vo.p_name}</h4>
							<img src="resources/img/heart.png" width="20px" height="20px"
								style="padding-top: 5px;">
						</div>
						<p style="font-weight: bold; font-size: 15px; color: black;">${vo.p_price}</p>
						<p style="font-weight: 300; font-size: 13px; color: black;">${vo.m_loc.substring(0, 10)}</p>
					</figcaption>
				</figure>
			</c:forEach>
        </div>
      
		
	</body>
</html>