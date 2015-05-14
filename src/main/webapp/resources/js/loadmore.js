/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

var isload = true;
//$(document).ready(function() {
//        loadMore(url + pagenum);
//});

//$(window).scroll(function() {
//
//    // 当滚动到最底部以上100像素时， 加载新内容
//    if ($(document).height() - $(this).scrollTop() - $(this).height() < 100) {
//        if (isload) {
//            loadMore(url + pagenum);
//        }
//    }
//});
$("#loading_button1").click(function () {
  if (isload) {
    pagenum = pagenum + 1;
    id = id + 1;
    $("#pagenum").html('继续阅读(' + pagenum + '/' + pagecount + ')');
    loadMore(url + id);
  }
});
function loadMore(url) {
  $.ajax({
    type: "get",
    cache: false,
    url: url,
    data: "",
    dataType: "html",
    beforeSend: function () {
      $("#loadmore_img").html('<img src="http://yimg.yidumen.com/yidumen/web/images/loadmore.gif"  />');
    },
    success: function (data) {
      if (pagenum >= pagecount) {
        isload = false;
        $("#load_more").css("display", "none");
      }
      //$("#content_loadmore").html(data.info);//添加下拉框的option
      document.getElementById('article_box').innerHTML = document.getElementById('article_box').innerHTML + data;
    },
    complete: function () {
      $("#loadmore_img").html('');
    }
  })
}


