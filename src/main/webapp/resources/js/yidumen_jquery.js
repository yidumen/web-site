//计算翻篇的宽度
$(document).ready(function () {
  var next = $(".next").width();
  var prev = $(".prev").width();
  var nextprev = next + prev + 84;
  $("#next_prev").width(nextprev);
  $("#next_prev").css("margin", "auto")
});

//footer在页面高度不够时浮动到底部
$(document).ready(function () {
  var windowheight = $(window).height(); //浏览器时下窗口可视区域高度
  var bodyheight = $(document.body).height();//浏览器时下窗口文档body的高度
  if (bodyheight < windowheight) {
    $("#footer").css({"position": "absolute", "bottom": "0px", "width": "100%"});
  }
});