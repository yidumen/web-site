function checkLength() {
  var input = document.getElementById('title').value;
  input = input.replace(" ", "");
  input = input.replace("如果您有任何的感受、想法，都欢迎与我们分享", "");
  if (input.length < 10) {
    alert("对不起，请输入完整的内容以方便我们能更好的了解您的信息！");
    return false;
  } else if (input.length > 1000) {
    alert("输入长度限制1000字！");
    return false;
  }
  document.getElementById('frmjiaoliu').submit();
}

$("#shareSubmit").click(function () {
  var input = document.getElementById('title').value;
  input = input.replace(" ", "");
  input = input.replace("如果您有任何的感受、想法，都欢迎与我们分享", "");
  if (input.length < 10) {
    alert("对不起，请输入完整的内容以方便我们能更好的了解您的信息！");
    return false;
  } else if (input.length > 1000) {
    alert("输入长度限制1000字！");
    return false;
  }
  document.getElementById('frmjiaoliu').submit();
});