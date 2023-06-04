function signChk() {
	var inputName = $("#userinputName");
	var inputId = $("#userinputId");
	var inputPw = $("#userinputPw");
	var inputPwChk = $("#userinputPwChk");
	var getName = RegExp(/^[가-힣]+$/);
	var getId = RegExp(/^[a-zA-Z0-9]{4,12}$/);
	var getPw = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
	var form = document.userInfo;

	if (!form.joinEmail.value) {
		alert("이메일을 입력하세요.");
		return false;
	}
	if (form.emailDuplication.value != "idCheck") {
		alert("아이디 중복체크를 해주세요.");
		return false;
	}
	if (!form.joinPw.value) {
		alert("비밀번호를 입력하세요.");
		return false;
	}
	if (!form.joinName.value) {
		alert("이름을 입력하세요.");
		return false;
	}
	if (!form.joinAddr.value) {
		alert("주소를 입력하세요.");
		return false;
	}



}

function openChkEmail() {
	window.name = "parentForm";
	window.open = ("emailCheckForm.jsp", "chkForm", "width:500, height=300, resizable=no");

}

function inputEmailChk() {
	document.userInfo.emailDuplication.value = "emailUncheck";
}

function pValue() {
	document.getElementById("userEmail").value = opener.document.userInfo.form1Example13.value;
}

function emailCheck() {
	var email = document.getElementById("userEmail").value;
	if (!email) {
		alert("이메일을 입력하지 않았습니다");
		return false;
	} else {
		var param = "email" + email;
		httpRequest = getXMLHttpRequest;
		httpRequest.onreadystatechange = callback;
		httpRequest.open("POST", "MemberEmailCheck", true);
		httpRequest.setRequestHeader('content-Type', 'application/x-www-form-urlencoded');
		httpRequest.send(param);
	}
}

function callback() {
	if (httpRequest.readyState == 4) {
		// 결과값을 가져온다.
		var resultText = httpRequest.responseText;
		if (resultText == 0) {
			alert("사용할수없는 아이디입니다.");
			document.getElementById("cancelBtn").style.visibility = 'visible';
			document.getElementById("useBtn").style.visibility = 'hidden';
			document.getElementById("msg").innerHTML = "";
		}
		else if (resultText == 1) {
			document.getElementById("cancelBtn").style.visibility = 'hidden';
			document.getElementById("useBtn").style.visibility = 'visible';
			document.getElementById("msg").innerHTML = "사용 가능한 아이디입니다.";
		}
	}
}

function sendCheckValue() {
	// 중복체크 결과인 idCheck 값을 전달한다.
	opener.document.userInfo.idDuplication.value = "emailCheck";
	// 회원가입 화면의 ID입력란에 값을 전달
	opener.document.userInfo.id.value = document.getElementById("joinEmail").value;

	if (opener != null) {
		opener.chkForm = null;
		self.close();
	}
}    
