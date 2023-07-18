<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="resources/css/insert_2.css">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="resources/js/httpRequest.js"></script>
<script type="text/javascript">
	var b_numCheck = false;

	//타이머
	/* 		var time = 180;
	 var min = ""; //분
	 var sec = ""; //초
	
	 var timer = null;
	
	 function start_timer(){
	
	 timer = setInterval(function(){
	 //parseInt() : 정수를 반환
	 min = parseInt(time/60); //몫을 계산
	 sec = time%60; //나머지 계산
	
	 document.getElementById('time').innerHTML = min + "분" + sec + "초";
	 time --;
	
	 //타임아웃
	 if(time < 0){
	 clearInterval(timer);
	 //document.getElementById().innerHTML = "시간초과";
	 }
	 },1000)
	
	 }
	 */

	var isSend = false;

	//인증번호 전송    	
	function send(f) {

		var tel_2 = f.tel_2.value;
		var tel_3 = f.tel_3.value;
		var tel = f.tel_1.value + f.tel_2.value + f.tel_3.value;
		var tel_2_pt = /^[0-9]{4}$/;
		var tel_3_pt = /^[0-9]{4}$/;
		if (tel_2 == '' && tel_3 == '') {
			swal("인증번호 전송 불가!", "전화번호를 입력해주세요!", "warning");
			return;
		}
		if (!tel_2_pt.test(tel_2) && !tel_3_pt.test(tel_3)) {
			swal("전화번호를 제대로 입력하세요!", "숫자만 입력해주세요!", "warning");
			return;
		}

		var url = "send_sms.do"
		var param = "tel=" + encodeURIComponent(tel);

		sendRequest(url, param, resultFn, "POST");

		//타이머 시작
		//start_timer();
	}

	function resultFn() {
		if (xhr.readyState == 4 && xhr.status == 200) {
			var data = xhr.responseText;
			var json = (new Function('return' + data))();
			var numValue = json[0].num;

			if (json[0].result == 'yes') {

				swal("인증번호가 발송되었습니다!", "메세지를 확인해주세요!", "success");

				isSend = true;

				numMainValue = json[0].num; // 값을 numMainValue 변수에 설정
				var numMainInput = document.getElementById('num_main');
				numMainInput.value = numMainValue;
			} else {
				swal("인증번호 발송실패!", "오류가 계속 반복될경우 고객센터에 문의바랍니다.", "warning");
				return;
			}
		}

	}

	//인증번호 확인
	function check_num() {
		var user_num = document.getElementById('authCode').value.trim();

		if (!isSend) {
			swal("인증번호 전송 후 버튼을 눌러주세요!", "", "warning");
			return;

		}

		if (user_num == numMainValue) {
			swal("인증 완료!", "인증 완료되었습니다.", "success");
			//clearInterval(timer);
			b_numCheck = true;
			document.getElementById('send_button').disabled = true;
			document.getElementById('tel_1').readonly = true;
			document.getElementById('tel_2').readonly = true;
			document.getElementById('tel_3').readonly = true;
			document.getElementById('authCode').readonly = true;
			document.getElementById('check_n').readonly = true;
		} else if (time < 0) {
			document.getElementById('check_n').disabled = true;
			document.getElementById('authCode').value = "";
			document.getElementById('numValue').value = "";
			document.getElementById('time').innerHTML = "시간초과!! 인증을 다시 하세요!!";
		} else {
			swal("인증번호 불일치!", "다시 확인 후 입력해주세요!", "warning");
			document.getElementById('check_n').disabled = true;
			return;
		}
	}

	function register(f) {

		//var n_pt = /^([가-힣]{2,5})$/;
		var tel_2_pt = /^[0-9]{4}$/;
		var tel_3_pt = /^[0-9]{4}$/;
		//var name = f.name.value;
		var tel_2 = f.tel_2.value;
		var tel_3 = f.tel_3.value;
		var tel = f.tel_1.value + tel_2 + f.tel_3.value;
		f.tel_main = tel;
		/* if(name == ''){
			swal("회원가입 불가!!","이름을 입력해주세요!!","warning");
			return;
		}
		if(!n_pt.test(name)){
			swal("이름은 한글만!!","이름을 제대로 입력하세요!!","warning");
			return;	
		} */
		if (tel_2 == '' && tel_3 == '') {
			swal("회원가입 불가!!", "전화번호를 입력해주세요!!", "warning");
			return;
		}
		if (!tel_2_pt.test(tel_2)) {
			swal("회원가입 불가!!", "전화번호를 제대로 입력하세요!!", "warning");
			return;
		}
		if (!tel_3_pt.test(tel_3)) {
			swal("회원가입 불가!!", "전화번호를 제대로 입력하세요!!", "warning");
			return;
		}
		if (!b_numCheck) {
			swal("회원가입 불가!!", "휴대폰 인증확인을 하세요!!", "warning");
			return;
		}
		//console.log(tel);
		var url = "insert_start.do";
		var param = "tel=" + tel;
		sendRequest(url, param, checkM, "POST");

	}

	function checkM() {
		if (xhr.readyState == 4 && xhr.status == 200) {
			var data = xhr.responseText;
			var json = (new Function('return' + data))();

			if (json[0].result == 'yes') {

				telMainValue = json[0].tel; // 값을 telMainValue 변수에 설정
				var telMainInput = document.getElementById('tel_main');
				telMainInput.value = telMainValue;

				location.href = "insert_form.do?tel=" + telMainValue;
			}
			if (json[0].result == 'no') {

				swal({
					title : "계정이 이미 존재합니다!",
					icon : "warning",
					buttons : {
						confirm : {
							text : "확인",
							value : true,
							visible : true,
							className : "",
							closeModal : true
						}
					}
				}).then(function() {
					location.href = "login_form.do";
				});
			}
		}
	}
</script>
</head>
<body
	style="background-image: url('resources/img/main_img1.png'); background-size: cover;">
	<form class="main-form first">
		<input type="hidden" id="num_main"> <input type="hidden"
			id="tel_main">
		<div class="container">
			<div class="xbtn" onclick="location.href='start.do'"
				style="cursor: pointer;"></div>
			<h1
				style="text-align: center; margin-top: 0; font-weight: 600; font-family: 'Montserrat', sans-serif;">Sign
				Up</h1>
			<!-- <div class="input-row">
	        <input class="main-form__input" id="name_1" type="text" placeholder="이름" name="name" />
	      </div> -->
			<div class="input-row">
				<div class="phone-input">
					<select id="tel_1" name="tel_1">
						<option>010</option>
						<option>011</option>
						<option>016</option>
						<option>070</option>
					</select> - <input class="main-form__input" type="text" id="tel_2"
						name="tel_2" maxlength="4" /> - <input class="main-form__input"
						type="text" id="tel_3" name="tel_3" maxlength="4" /> <input
						type="button" id="send_button" value="전송" class="send_button"
						onclick="send(this.form)">
				</div>
			</div>
			<div class="input-row">
				<input type="text" id="authCode" placeholder="인증번호"
					class="main-form__input" /> <input type="button" id="check_n"
					value="확인" class="check_button" onclick="check_num()" />
			</div>
			<div class="input-row">
				<input type="button" id="reg_btn" value="회원가입 하러가기"
					onclick="register(this.form)" />
			</div>
		</div>
	</form>
</body>

</html>