String.prototype.Trim = function () {
  var m = this.match(/^\s*(\S+(\s+\S+)*)\s*/);
  return (m == null) ? "" : m[1];
}

String.prototype.isMobile = function () {
  if (this.length != 11) {
    return false;
  }
  return (/^(?:13\d|15[89])-?\d{5}(\d{3}|\*{3})/.test(this.Trim()));
}

String.prototype.isTel = function () {
  //"兼容格式: 国家代码(2到3位)-区号(2到3位)-电话号码(7到8位)-分机号(3位)"
  //return (/^(([0\+]\d{2,3}-)?(0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?/.test(this.Trim()));
  return (/^(([0\+]\d{2,3}-)?(0\d{2,3})-)(\d{7,8})(-(\d{3,}))?/.test(this.Trim()));
}

function chkMobile(mobile) {
  if (mobile.value.isMobile()) {
    mobile.value = mobile.value.Trim();
    //alert("您的电话/手机号码是:" + mobile.value);
    return true;
  } else {
    //alert("请输入正确的手机号码或电话号码\n\n例如:13888888888");
    mobile.focus();
    return false;
  }
}


function chkEmail(email) {
  var reg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
  if (reg.test(email.value)) {
    return true;
  } else {
    //alert("请输入正确的Email\n\n例如:xxxx@yyyy.zzz");
    return false;
  }

}

function chkEmailOrMobile() {
  var input = document.getElementById('email');
  var isemail = document.getElementById('isemail');
  if (chkEmail(input)) {
    isemail.value = 1;
    document.emailfrm.submit();
  } else {
    if (chkMobile(input)) {
      isemail.value = 2;
      document.emailfrm.submit();
    } else {
      isemail.value = 3;
    }
  }
  document.emailfrm.method = "post";
  document.emailfrm.action = "user.ydm";
  //document.emailfrm.errorcode.value=input.value;
  document.emailfrm.submit();
  return false;
}

function checkLength() {
  var input = document.getElementById('title').value;
  input = input.replace("请留下您对本课内容的问题或者想讨论的观点，我们将尽快与您回复", "");
  if (input.length < 10) {
    alert("对不起，请输入完整的内容以方便我们能更好的了解您的信息！");
    return false;
  } else if (input.length > 1000) {
    alert("输入长度限制1000字！");
    return false;
  }
  document.getElementById('frmjiaoliu').submit();
}