function getCookie(objName) {//获取指定名称的cookie的值

  var arrStr = document.cookie.split("; ");

  for (var i = 0; i < arrStr.length; i++) {

    var temp = arrStr[i].split("=");

    if (temp[0] == objName)
      return unescape(temp[1]);

  }

}

function SetCookie(name, value) {//两个参数，一个是cookie的名子，一个是值
  var Days = 30; //此 cookie 将被保存 30 天

  var exp = new Date();    //new Date("December 31, 9998");

  exp.setTime(exp.getTime() + Days * 24 * 60 * 60 * 1000);

  document.cookie = name + "=" + escape(value) + ";expires=" + exp.toGMTString();

}

function delCookie(name) {//删除cookie
  document.cookie = name + "=;expires=" + (new Date(0)).toGMTString();
}
