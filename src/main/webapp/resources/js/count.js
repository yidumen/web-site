//认证页面倒计时
var second = document.getElementById('totalSecond').textContent;

if (navigator.appName.indexOf("Explorer") > -1) {
  second = document.getElementById('totalSecond').innerText;
} else {
  second = document.getElementById('totalSecond').textContent;
}


setInterval("redirect()", 1000);
function redirect() {
  if (second < 0) {
    location.href = reurl;
  } else {
    if (navigator.appName.indexOf("Explorer") > -1) {
      document.getElementById('totalSecond').innerText = second--;
    } else {
      document.getElementById('totalSecond').textContent = second--;
    }
  }
}