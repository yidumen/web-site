/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


$(function () {
  $("#submit_img").click(function () {
    if ($("#name").val() == '') {
      $("#name").css("border", "solid 2px red");
    } else {
      $("#name").css("border", "");
    }
    if ($("#telphone").val() == '') {
      $("#telphone").css("border", "solid 2px red");
    } else {
      $("#telphone").css("border", "");
    }
    if ($("#address").val() == '') {
      $("#address").css("border", "solid 2px red");
    } else {
      $("#address").css("border", "");
    }
    if ($("#name").val() != '' && $("#telphone").val() != '' && $("#address").val() != '') {
//            if($("#name").val().length>15){
//                alert("收件人姓名长度过大！");
//                return;
//            }if($("#telphone").val().length>15){
//                alert("联系电话长度过大！");
//                return;
//            }if($("#address").val().length>150){
//                alert("收件地址长度过大！");
//                return;
//            }
      $("form[name='goodsfrm']").submit();
    }
  });
  $("#name").blur(function () {
    if ($("#name").val() == '') {
      $("#name").css("border", "solid 2px red");
    } else {
      $("#name").css("border", "");
    }
  });
  $("#address").blur(function () {
    if ($("#address").val() == '') {
      $("#address").css("border", "solid 2px red");
    } else {
      $("#address").css("border", "");
    }
  });
  $("#telphone").blur(function () {
    if ($("#telphone").val() == '') {
      $("#telphone").css("border", "solid 2px red");
    } else {
      $("#telphone").css("border", "");
    }
  })
})