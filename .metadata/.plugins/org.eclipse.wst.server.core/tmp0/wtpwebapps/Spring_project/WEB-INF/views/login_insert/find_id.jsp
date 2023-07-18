<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>아이디 찾기</title>
		<script src="resources/js/httpRequest.js"></script>
		<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
		<script type="text/javascript">
			function find_id(f){
				var name = f.m_name.value;
				var tel_2 = f.tel_2.value;
				var tel_3 = f.tel_3.value;
				var tel = f.tel_1.value+f.tel_2.value+f.tel_3.value;
				var n_pt = /^([가-힣]{2,5})$/;
				var tel_2_pt = /^[0-9]{4}$/;
				var tel_3_pt = /^[0-9]{4}$/;
				
				if(name == ''){
	    			swal("회원가입 불가!!","이름을 입력해주세요!!","warning");
	    			return;
	    		}
	    		if(!n_pt.test(name)){
	    			swal("이름은 한글만!!","이름을 제대로 입력하세요!!","warning");
	    			return;
	    		}
	    		if(tel_2 == '' && tel_3 == ''){
	    			swal("회원가입 불가!!","전화번호를 입력해주세요!!","warning");
	    			return;
	    		}
	    		if(!tel_2_pt.test(tel_2)){
	    			swal("회원가입 불가!!","전화번호를 제대로 입력하세요!!","warning");
	    			return;
	    		}
	    		if(!tel_3_pt.test(tel_3)){
	    			swal("회원가입 불가!!","전화번호를 제대로 입력하세요!!","warning");
	    			return;
	    		}
	    		console.log(name);
	    		console.log(tel);
	    		var url = "result_id.do";
	    		var param = "name="+name+"&tel="+tel;
	    		sendRequest(url,param,resultId,"POST");
	    		
			}
			
			function resultId(){
				if(xhr.readyState == 4 && xhr.status == 200){
					var data = xhr.responseText;
					var json = (new Function('return'+data))();
					
					if(json[0].result == 'no'){
						swal("일치하는 가입 정보가 없습니다!","","warning");
						return;
					}
					if(json[0].result == 'yes'){
						swal({
						    title: "아이디: " + json[0].id + "입니다!",
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
						    location.href = "login_form.do";
						  });
					}
					
				}
			}
		</script>
	</head>
	<body>
		<form>
			<div>
				<input id="m_name" name="m_name">
			</div>
			<div>
			  <select id="tel_1" name="tel_1">
	            <option>010</option>
	            <option>011</option>
	            <option>016</option>
	            <option>070</option>
	          </select> -
	          <input class="main-form__input" type="text" id="tel_2" name="tel_2" maxlength="4" /> -
	          <input class="main-form__input" type="text" id="tel_3" name="tel_3" maxlength="4" />
			</div>
			<div>
				<input type="button" value="아이디 찾기" onclick="find_id(this.form)">
			</div>
		</form>
	</body>
</html>