<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>로그인</title>
	<link rel="stylesheet" href="resources/css/login_form.css">
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="resources/js/httpRequest.js"></script>
	<script type="text/javascript">
		function login(f){  
			var id = f.m_id.value;
			var pw = f.m_pw.value;
			
			 
			if(id == ''){
				swal("로그인 불가!!","아이디를 입력해주세요!!","warning");                     
				
				return;
			}
			if(pw == ''){
				swal("로그인 불가!!","비밀번호를 입력해주세요!!","warning");
		
				return;
			}
			
			var url = "login.do";
			var param = "id="+id+"&pw="+pw;
			
			sendRequest(url,param,m_check,"POST");
		
		}
		
		function m_check(){
			if(xhr.readyState == 4 && xhr.status == 200){
				var data = xhr.responseText;
				var json = (new Function('return'+data))();
				
				if(json[0].result == 'no_id'){
					swal("아이디가 존재하지 않습니다!","다시 확인 후 로그인 하세요!","warning");
				} else if(json[0].result == 'no_pw'){
					swal("비밀번호가 일치하지 않습니다!","다시 확인 후 로그인 하세요!","warning");
				} else {
					swal({
					    title: "로그인 성공!",
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
		<div class="container"
			style="background-image: url('resources/img/main_img1.png'); background-size: cover;">
			<div class="inside">
				<div class="xbtn" onclick="location.href='start.do'"
					style="cursor: pointer;"></div>
				<h1>Login</h1>
				<form action="" method="post">
					<div class="login_form">
						 <input type="text" id="m_id" name="m_id" placeholder="아이디">
					</div>
					<div class="login_form">
						<input type="password" id="m_pw" name="m_pw" placeholder="비밀번호">
					</div>
					<div class="login_form">
						<input type="button" class="login_btn" value="로그인"
							onclick="login(this.form)"> <br> <input type="button"
							class="member_btn" value="회원가입"
							onclick="location.href='insert_first.do'">
					</div>
				</form>
			</div>
		</div>
	
	</body>
</html>