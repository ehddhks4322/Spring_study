/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.74
 * Generated at: 2023-06-17 07:20:24 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.login_005finsert;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class insert_005f2_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>회원가입</title>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"resources/css/insert_2.css\">\r\n");
      out.write("<script src=\"https://unpkg.com/sweetalert/dist/sweetalert.min.js\"></script>\r\n");
      out.write("<script src=\"resources/js/httpRequest.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("	var b_numCheck = false;\r\n");
      out.write("\r\n");
      out.write("	//타이머\r\n");
      out.write("	/* 		var time = 180;\r\n");
      out.write("	 var min = \"\"; //분\r\n");
      out.write("	 var sec = \"\"; //초\r\n");
      out.write("	\r\n");
      out.write("	 var timer = null;\r\n");
      out.write("	\r\n");
      out.write("	 function start_timer(){\r\n");
      out.write("	\r\n");
      out.write("	 timer = setInterval(function(){\r\n");
      out.write("	 //parseInt() : 정수를 반환\r\n");
      out.write("	 min = parseInt(time/60); //몫을 계산\r\n");
      out.write("	 sec = time%60; //나머지 계산\r\n");
      out.write("	\r\n");
      out.write("	 document.getElementById('time').innerHTML = min + \"분\" + sec + \"초\";\r\n");
      out.write("	 time --;\r\n");
      out.write("	\r\n");
      out.write("	 //타임아웃\r\n");
      out.write("	 if(time < 0){\r\n");
      out.write("	 clearInterval(timer);\r\n");
      out.write("	 //document.getElementById().innerHTML = \"시간초과\";\r\n");
      out.write("	 }\r\n");
      out.write("	 },1000)\r\n");
      out.write("	\r\n");
      out.write("	 }\r\n");
      out.write("	 */\r\n");
      out.write("\r\n");
      out.write("	var isSend = false;\r\n");
      out.write("\r\n");
      out.write("	//인증번호 전송    	\r\n");
      out.write("	function send(f) {\r\n");
      out.write("\r\n");
      out.write("		var tel_2 = f.tel_2.value;\r\n");
      out.write("		var tel_3 = f.tel_3.value;\r\n");
      out.write("		var tel = f.tel_1.value + f.tel_2.value + f.tel_3.value;\r\n");
      out.write("		var tel_2_pt = /^[0-9]{4}$/;\r\n");
      out.write("		var tel_3_pt = /^[0-9]{4}$/;\r\n");
      out.write("		if (tel_2 == '' && tel_3 == '') {\r\n");
      out.write("			swal(\"인증번호 전송 불가!\", \"전화번호를 입력해주세요!\", \"warning\");\r\n");
      out.write("			return;\r\n");
      out.write("		}\r\n");
      out.write("		if (!tel_2_pt.test(tel_2) && !tel_3_pt.test(tel_3)) {\r\n");
      out.write("			swal(\"전화번호를 제대로 입력하세요!\", \"숫자만 입력해주세요!\", \"warning\");\r\n");
      out.write("			return;\r\n");
      out.write("		}\r\n");
      out.write("\r\n");
      out.write("		var url = \"send_sms.do\"\r\n");
      out.write("		var param = \"tel=\" + encodeURIComponent(tel);\r\n");
      out.write("\r\n");
      out.write("		sendRequest(url, param, resultFn, \"POST\");\r\n");
      out.write("\r\n");
      out.write("		//타이머 시작\r\n");
      out.write("		//start_timer();\r\n");
      out.write("	}\r\n");
      out.write("\r\n");
      out.write("	function resultFn() {\r\n");
      out.write("		if (xhr.readyState == 4 && xhr.status == 200) {\r\n");
      out.write("			var data = xhr.responseText;\r\n");
      out.write("			var json = (new Function('return' + data))();\r\n");
      out.write("			var numValue = json[0].num;\r\n");
      out.write("\r\n");
      out.write("			if (json[0].result == 'yes') {\r\n");
      out.write("\r\n");
      out.write("				swal(\"인증번호가 발송되었습니다!\", \"메세지를 확인해주세요!\", \"success\");\r\n");
      out.write("\r\n");
      out.write("				isSend = true;\r\n");
      out.write("\r\n");
      out.write("				numMainValue = json[0].num; // 값을 numMainValue 변수에 설정\r\n");
      out.write("				var numMainInput = document.getElementById('num_main');\r\n");
      out.write("				numMainInput.value = numMainValue;\r\n");
      out.write("			} else {\r\n");
      out.write("				swal(\"인증번호 발송실패!\", \"오류가 계속 반복될경우 고객센터에 문의바랍니다.\", \"warning\");\r\n");
      out.write("				return;\r\n");
      out.write("			}\r\n");
      out.write("		}\r\n");
      out.write("\r\n");
      out.write("	}\r\n");
      out.write("\r\n");
      out.write("	//인증번호 확인\r\n");
      out.write("	function check_num() {\r\n");
      out.write("		var user_num = document.getElementById('authCode').value.trim();\r\n");
      out.write("\r\n");
      out.write("		if (!isSend) {\r\n");
      out.write("			swal(\"인증번호 전송 후 버튼을 눌러주세요!\", \"\", \"warning\");\r\n");
      out.write("			return;\r\n");
      out.write("\r\n");
      out.write("		}\r\n");
      out.write("\r\n");
      out.write("		if (user_num == numMainValue) {\r\n");
      out.write("			swal(\"인증 완료!\", \"인증 완료되었습니다.\", \"success\");\r\n");
      out.write("			//clearInterval(timer);\r\n");
      out.write("			b_numCheck = true;\r\n");
      out.write("			document.getElementById('send_button').disabled = true;\r\n");
      out.write("			document.getElementById('tel_1').readonly = true;\r\n");
      out.write("			document.getElementById('tel_2').readonly = true;\r\n");
      out.write("			document.getElementById('tel_3').readonly = true;\r\n");
      out.write("			document.getElementById('authCode').readonly = true;\r\n");
      out.write("			document.getElementById('check_n').readonly = true;\r\n");
      out.write("		} else if (time < 0) {\r\n");
      out.write("			document.getElementById('check_n').disabled = true;\r\n");
      out.write("			document.getElementById('authCode').value = \"\";\r\n");
      out.write("			document.getElementById('numValue').value = \"\";\r\n");
      out.write("			document.getElementById('time').innerHTML = \"시간초과!! 인증을 다시 하세요!!\";\r\n");
      out.write("		} else {\r\n");
      out.write("			swal(\"인증번호 불일치!\", \"다시 확인 후 입력해주세요!\", \"warning\");\r\n");
      out.write("			document.getElementById('check_n').disabled = true;\r\n");
      out.write("			return;\r\n");
      out.write("		}\r\n");
      out.write("	}\r\n");
      out.write("\r\n");
      out.write("	function register(f) {\r\n");
      out.write("\r\n");
      out.write("		//var n_pt = /^([가-힣]{2,5})$/;\r\n");
      out.write("		var tel_2_pt = /^[0-9]{4}$/;\r\n");
      out.write("		var tel_3_pt = /^[0-9]{4}$/;\r\n");
      out.write("		//var name = f.name.value;\r\n");
      out.write("		var tel_2 = f.tel_2.value;\r\n");
      out.write("		var tel_3 = f.tel_3.value;\r\n");
      out.write("		var tel = f.tel_1.value + tel_2 + f.tel_3.value;\r\n");
      out.write("		f.tel_main = tel;\r\n");
      out.write("		/* if(name == ''){\r\n");
      out.write("			swal(\"회원가입 불가!!\",\"이름을 입력해주세요!!\",\"warning\");\r\n");
      out.write("			return;\r\n");
      out.write("		}\r\n");
      out.write("		if(!n_pt.test(name)){\r\n");
      out.write("			swal(\"이름은 한글만!!\",\"이름을 제대로 입력하세요!!\",\"warning\");\r\n");
      out.write("			return;	\r\n");
      out.write("		} */\r\n");
      out.write("		if (tel_2 == '' && tel_3 == '') {\r\n");
      out.write("			swal(\"회원가입 불가!!\", \"전화번호를 입력해주세요!!\", \"warning\");\r\n");
      out.write("			return;\r\n");
      out.write("		}\r\n");
      out.write("		if (!tel_2_pt.test(tel_2)) {\r\n");
      out.write("			swal(\"회원가입 불가!!\", \"전화번호를 제대로 입력하세요!!\", \"warning\");\r\n");
      out.write("			return;\r\n");
      out.write("		}\r\n");
      out.write("		if (!tel_3_pt.test(tel_3)) {\r\n");
      out.write("			swal(\"회원가입 불가!!\", \"전화번호를 제대로 입력하세요!!\", \"warning\");\r\n");
      out.write("			return;\r\n");
      out.write("		}\r\n");
      out.write("		if (!b_numCheck) {\r\n");
      out.write("			swal(\"회원가입 불가!!\", \"휴대폰 인증확인을 하세요!!\", \"warning\");\r\n");
      out.write("			return;\r\n");
      out.write("		}\r\n");
      out.write("		//console.log(tel);\r\n");
      out.write("		var url = \"insert_start.do\";\r\n");
      out.write("		var param = \"tel=\" + tel;\r\n");
      out.write("		sendRequest(url, param, checkM, \"POST\");\r\n");
      out.write("\r\n");
      out.write("	}\r\n");
      out.write("\r\n");
      out.write("	function checkM() {\r\n");
      out.write("		if (xhr.readyState == 4 && xhr.status == 200) {\r\n");
      out.write("			var data = xhr.responseText;\r\n");
      out.write("			var json = (new Function('return' + data))();\r\n");
      out.write("\r\n");
      out.write("			if (json[0].result == 'yes') {\r\n");
      out.write("\r\n");
      out.write("				telMainValue = json[0].tel; // 값을 telMainValue 변수에 설정\r\n");
      out.write("				var telMainInput = document.getElementById('tel_main');\r\n");
      out.write("				telMainInput.value = telMainValue;\r\n");
      out.write("\r\n");
      out.write("				location.href = \"insert_form.do?tel=\" + telMainValue;\r\n");
      out.write("			}\r\n");
      out.write("			if (json[0].result == 'no') {\r\n");
      out.write("\r\n");
      out.write("				swal({\r\n");
      out.write("					title : \"계정이 이미 존재합니다!\",\r\n");
      out.write("					icon : \"warning\",\r\n");
      out.write("					buttons : {\r\n");
      out.write("						confirm : {\r\n");
      out.write("							text : \"확인\",\r\n");
      out.write("							value : true,\r\n");
      out.write("							visible : true,\r\n");
      out.write("							className : \"\",\r\n");
      out.write("							closeModal : true\r\n");
      out.write("						}\r\n");
      out.write("					}\r\n");
      out.write("				}).then(function() {\r\n");
      out.write("					location.href = \"login_form.do\";\r\n");
      out.write("				});\r\n");
      out.write("			}\r\n");
      out.write("		}\r\n");
      out.write("	}\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body\r\n");
      out.write("	style=\"background-image: url('resources/img/main_img1.png'); background-size: cover;\">\r\n");
      out.write("	<form class=\"main-form first\">\r\n");
      out.write("		<input type=\"hidden\" id=\"num_main\"> <input type=\"hidden\"\r\n");
      out.write("			id=\"tel_main\">\r\n");
      out.write("		<div class=\"container\">\r\n");
      out.write("			<div class=\"xbtn\" onclick=\"location.href='start.do'\"\r\n");
      out.write("				style=\"cursor: pointer;\"></div>\r\n");
      out.write("			<h1\r\n");
      out.write("				style=\"text-align: center; margin-top: 0; font-weight: 600; font-family: 'Montserrat', sans-serif;\">Sign\r\n");
      out.write("				Up</h1>\r\n");
      out.write("			<!-- <div class=\"input-row\">\r\n");
      out.write("	        <input class=\"main-form__input\" id=\"name_1\" type=\"text\" placeholder=\"이름\" name=\"name\" />\r\n");
      out.write("	      </div> -->\r\n");
      out.write("			<div class=\"input-row\">\r\n");
      out.write("				<div class=\"phone-input\">\r\n");
      out.write("					<select id=\"tel_1\" name=\"tel_1\">\r\n");
      out.write("						<option>010</option>\r\n");
      out.write("						<option>011</option>\r\n");
      out.write("						<option>016</option>\r\n");
      out.write("						<option>070</option>\r\n");
      out.write("					</select> - <input class=\"main-form__input\" type=\"text\" id=\"tel_2\"\r\n");
      out.write("						name=\"tel_2\" maxlength=\"4\" /> - <input class=\"main-form__input\"\r\n");
      out.write("						type=\"text\" id=\"tel_3\" name=\"tel_3\" maxlength=\"4\" /> <input\r\n");
      out.write("						type=\"button\" id=\"send_button\" value=\"전송\" class=\"send_button\"\r\n");
      out.write("						onclick=\"send(this.form)\">\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"input-row\">\r\n");
      out.write("				<input type=\"text\" id=\"authCode\" placeholder=\"인증번호\"\r\n");
      out.write("					class=\"main-form__input\" /> <input type=\"button\" id=\"check_n\"\r\n");
      out.write("					value=\"확인\" class=\"check_button\" onclick=\"check_num()\" />\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"input-row\">\r\n");
      out.write("				<input type=\"button\" id=\"reg_btn\" value=\"회원가입 하러가기\"\r\n");
      out.write("					onclick=\"register(this.form)\" />\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>\r\n");
      out.write("	</form>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
