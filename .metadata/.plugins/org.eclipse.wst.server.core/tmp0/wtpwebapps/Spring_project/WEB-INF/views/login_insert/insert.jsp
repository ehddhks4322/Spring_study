<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원가입</title>
<link rel="stylesheet" href="resources/css/insert.css">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="resources/js/httpRequest.js"></script>
<script type="text/javascript">
	var b_idCheck = false;
	var b_locCheck = false;

	function change_id(v) {
		var id_pt = /^([a-zA-Z|0-9]{2,12})$/;
		b_idCheck = false;
		if (!id_pt.test(v)) {
			$('#id_chk').css("visibility", "visible");
		} else {
			$('#id_chk').css("visibility", "hidden");
		}
	}

	// 아이디 중복체크
	function check_id() {
		var id = document.getElementById('m_id').value.trim();
		var id_pt = /^([a-zA-Z|0-9]{2,12})$/;

		if (id == '') {
			swal("중복체크 불가!!", "아이디를 입력해주세요!!", "warninig");
			return;
		}
		if (!id_pt.test(id)) {
			swal("아이디는 영어와 숫자만 가능!", "2자리 이상 12자리 이하로 입력해주세요!", "warning");
			return;
		}

		var url = "check_id.do";
		var param = "id=" + encodeURIComponent(id);

		sendRequest(url, param, idCheck, "POST");
	}

	function idCheck() {
		if (xhr.readyState == 4 && xhr.status == 200) {
			var data = xhr.responseText;
			var json = (new Function('return' + data))();

			if (json[0].result == 'yes') {
				swal("사용가능한 아이디 입니다!", "", "success");
				b_idCheck = true;
			} else {
				swal("이미 사용중인 아이디 입니다!", "", "warning");
				return;
			}

		}
	}

	//주소 검색
	function sample6_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var addr = ''; // 주소 변수
						var extraAddr = ''; // 참고항목 변수

						//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
							addr = data.roadAddress;
						} else { // 사용자가 지번 주소를 선택했을 경우(J)
							addr = data.jibunAddress;
						}

						// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
						if (data.userSelectedType === 'R') {
							// 법정동명이 있을 경우 추가한다. (법정리는 제외)
							// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
							if (data.bname !== ''
									&& /[동|로|가]$/g.test(data.bname)) {
								extraAddr += data.bname;
							}
							// 건물명이 있고, 공동주택일 경우 추가한다.
							if (data.buildingName !== ''
									&& data.apartment === 'Y') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
							if (extraAddr !== '') {
								extraAddr = ' (' + extraAddr + ')';
							}
							// 조합된 참고항목을 해당 필드에 넣는다.
							document.getElementById("sample6_extraAddress").value = extraAddr;

						} else {
							document.getElementById("sample6_extraAddress").value = '';
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample6_postcode').value = data.zonecode;
						document.getElementById("sample6_address").value = addr;

						// 커서를 상세주소 필드로 이동하고 상세주소를 제외한 곳은 수정불가로 만든다.
						document.getElementById("sample6_detailAddress")
								.focus();
						document.getElementById('sample6_postcode').disabled = true;
						document.getElementById('sample6_address').disabled = true;
						document.getElementById('sample6_extraAddress').disabled = true;
						b_locCheck = true;
					}
				}).open();
	}

	function change_pw(v) {
		var pw_pt = /^[A-Za-z0-9]{8,16}$/;
		if (!pw_pt.test(v)) {
			$('#pw_chk').css("visibility", "visible");
		} else {
			$('#pw_chk').css("visibility", "hidden");
		}

	}

	function ems() {
	    var selectBox = document.getElementById("m_email_3");
	    var inputBox = document.getElementById("m_email_2");

	    if (selectBox.value == "self") {
	        inputBox.disabled = false;
	      } else {
	        inputBox.disabled = true;
	        inputBox.value = selectBox.value;
	      } 
	}

	//회원가입 확인버튼
	function submitForm(f) {
		var m_name = f.m_name.value;
		var m_id = f.m_id.value;
		var m_pw = f.m_pw.value;
		var m_tel = document.getElementById('m_tel').value;
		f.m_tel.value = m_tel;
		var m_email = f.m_email_1.value + "@" + f.m_email_2.value;
		f.m_email.value = m_email
		var addr = document.getElementById('sample6_detailAddress').value;
		var m_loc = document.getElementById('sample6_address').value;
		f.m_loc.value = m_loc;
		var n_pt = /^([가-힣]{2,5})$/;
		var id_pt = /^([a-zA-Z|0-9]{2,12})$/;
		var pw_pt = /^[A-Za-z0-9]{8,16}$/;
		//var em_pt = /^([a-zA-Z0-9]+@[a-zA-Z0-9]{5}.[a-z]{3})$/;
		//var addr_pt = /^([가-힣0-9])$/;

		if (m_name == '') {
			swal("회원가입 불가!!", "이름을 입력해주세요!!", "warning");
			return;
		}
		if (!n_pt.test(m_name)) {
			swal("이름은 한글만!!", "이름을 제대로 입력하세요!!", "warning");
			return;
		}
		if (m_id == '') {
			swal("회원가입 불가!!", "아이디를 입력해주세요!!", "warning");
			return;
		}
		if (!b_idCheck) {
			swal("회원가입 불가!!", "아이디 중복체크를 하세요!!", "warning");
			return;
		}
		if (m_pw == '') {
			swal("회원가입 불가!!", "비밀번호를 입력해주세요!!", "warning");
			return;
		}
		if (m_email == '') {
			swal("회원가입 불가!!", "이메일을 입력해주세요!!", "warning");
			return;
		}
		if (!b_locCheck) {
			swal("회원가입 불가!!", "주소검색 후 주소를 입력해주세요!!", "warning");
			return;
		}
		if (addr == '') {
			swal("회원가입 불가!!", "상세주소를 입력해주세요!!", "warning");
			return;
		}

		/* console.log(f.m_name.value);
		console.log(f.m_id.value);
		console.log(f.m_pw.value);
		console.log(f.m_loc.value);
		console.log(f.m_tel.value);
		console.log(f.m_email.value); */

		swal("회원가입 성공!", "로그인 페이지로 이동합니다!", "success");

		f.action = "insert.do";
		f.method = "post";
		f.submit();

	}
</script>
</head>
<body
	style="background-image: url('resources/img/main_img1.png'); background-size: cover;">
	<div class="container">
		<div class="xbtn" onclick="location.href='start.do'"
			style="cursor: pointer;"></div>
		<h1 style="margin-bottom: 5px;">Create Account</h1>
		<h3 style="margin: 0 0 40px 0; font-weight: normal; font-size: 17px;">회원이
			되어 안전한 직거래를 시작하세요!</h3>
		<form name="f">
			<input type="hidden" id="m_tel" name="m_tel" value="${param.tel}">
			<input type="hidden" id="m_loc" name="m_loc"> <input
				type="hidden" id="m_email" name="m_email">
			<div class="insert_form">
				<h5>
					아이디 <span>*중복체크 필수</span>
				</h5>
				<div class="id_div">
					<input id="m_id" name="m_id" placeholder="아이디"
						onchange="change_id()"> <input type="button" value="중복체크"
						class="check_button" onclick="check_id()">
				</div>
			</div>
			<div class="insert_form">
				<h5>
					비밀번호 <span>*</span>
				</h5>
				<input type="password" id="m_pw" name="m_pw"
					placeholder="비밀번호 입력(8~16자)" onchange="change_pw(this.value)">
			</div>
			<div style="margin-bottom: 10px;">
				<h5>
					이름 <span>*</span>
				</h5>
				<input id="m_name" name="m_name" placeholder="이름">
			</div>
			<div class="email_div" style="margin-bottom: 20px;">
				<h5>
					이메일 <span>*</span>
				</h5>
				<input id="m_email_1" name="m_email_1" placeholder="이메일"> @
				<input id="m_email_2" name="m_email_2"> <select
					id="m_email_3" name="m_email_3" onchange="ems()">
					<option selected value="self">직접 입력하세요</option>
					<option value="naver.com">naver.com</option>
					<option value="gamil.com">gmail.com</option>
					<option value="daum.net">daum.net</option>
					<option value="yahoo.com">yahoo.com</option>
				</select>
				
				<input type="button" value="가입하기" class="submit_button"
				onclick="submitForm(this.form)">
			</div>
		</form>
		<div class="add_div">
			<div class="insert_form">
				<h5>
					주소 <span>*</span>
				</h5>
				<input id="sample6_postcode" placeholder="우편번호" disabled> <input
					type="button" class="add_btn" onclick="sample6_execDaumPostcode()"
					value="우편번호 찾기">
			</div>
			<div class="insert_form">
				<input id="sample6_address" placeholder="주소" disabled>
			</div>
			<div class="insert_form">
				<input id="sample6_detailAddress" placeholder="상세주소">
			</div>
			<div>
				<input id="sample6_extraAddress" type="hidden">
			</div>
		</div>
	</div>


</body>
</html>