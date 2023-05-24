function signChk() {
  var inputName = $("#userinputName");
  var inputId = $("#userinputId");
  var inputPw = $("#userinputPw");
  var inputPwChk = $("#userinputPwChk");
  var getName = RegExp(/^[가-힣]+$/);
  var getId = RegExp(/^[a-zA-Z0-9]{4,12}$/);
  var getPw = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;

  if (inputName.val() == "") {
    alert("이름을 입력해주세요.");
    inputName.focus();
    return false;
  }

  if (!getName.test(inputName.val())) {
    alert("이름은 한글만 가능합니다!");
    inputName.focus();
    return false;
  }

  if (inputName.val().length > 5 && inputName.val().length < 2) {
    alert("이름을 정확히 입력해주세요.");
    inputName.focus();
    return false;
  }
}
