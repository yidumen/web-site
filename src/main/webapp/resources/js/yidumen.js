//textarea效果
var agt = navigator.userAgent.toLowerCase();
var is_op = (agt.indexOf("opera") != -1);
var is_ie = (agt.indexOf("msie") != -1) && document.all && !is_op;
function ResizeTextarea() {
  obj = document.getElementById('textarea');
  var row = 8;
  if (!obj) {
    return true;
  }
  var str = obj.value.split("\n");
  var str_height = is_ie ? 1 : 0;
  str_height += str.length;
  var cols = obj.cols;
  if (cols <= 20) {
    cols = 40
  }
  for (var i = 0; i < str.length; i++) {
    if (str[i].length >= cols) {
      str_height += Math.ceil(str[i].length / cols)
    }
  }
  str_height = Math.max(str_height, row);
  if (str_height != obj.rows) {
    obj.rows = str_height;
  }
}
window.onload = function () {
  ResizeTextarea();
};




  
  
  
