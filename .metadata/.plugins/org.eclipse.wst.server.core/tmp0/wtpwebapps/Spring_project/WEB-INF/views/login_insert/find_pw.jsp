<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>비밀번호 찾기</title>
		<script src="resources/js/httpRequest.js"></script>
		<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
		<script type="text/javascript">
			function find_pw(f){
				var name = f.m_name.value;
				var id = f.m_id.value;
				var n_pt = /^([가-힣]{2,5})$/;
				var id_pt = /^([a-zA-Z|0-9]{2,12})$/;
				
				if(name == ''){
	    			swal("회원가입 불가!!","이름을 입력해주세요!!","warning");
	    			return;
	    		}
	    		if(!n_pt.test(name)){
	    			swal("이름은 한글만!!","이름을 제대로 입력하세요!!","warning");
	    			return;
	    		}
	    		if(m_id == ''){
	    			swal("회원가입 불가!!","아이디를 입력해주세요!!","warning");
	    			return;
	    		}
	    		if(!id_pt.test(id)){
	    			swal("아이디는 영문 2자리 이상 12자리이하!","아이디를 제대로 입력하세요!","warning");
	    			return;
	    		}
	    		var url = "result_pw.do";
	    		var param = "name="+name+"&id="+id;
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
						    title: "비밀번호: " + json[0].pw + "입니다!",
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
			  	<input id="m_id" name="m_id">
			</div>
			<div>
				<input type="button" value="비밀번호 찾기" onclick="find_pw(this.form)">
			</div>
		</form>
	</body>
</html>