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

var app = {
  lotusList: function () {
    'use strict';
    $.get('/ajax/video/lotus').done(function (data) {
      videojs("video-player", {
        "controls": true,
        "autoplay": true,
        "width": 784,
        "height": "100%",
        plugins: {
          ydmPlayer: {
            videos: data
          }
        }
      });
    });
  },
  videoList: function (play) {
    'use strict';
    var result = $.Deferred();
    var videos = [];
    const pageSize = 50;
    var currentIndex = 0;
    $.getJSON('/ajax/video/dhamma').done(function (data) {
      data.forEach(function (dhamma) {
        $('#dhama').append('<div class="list-item"><a href="/video/' + dhamma.file + '">' + dhamma.title + '</a></div>');
      });
      $('#dhama').append('<div class="clear"></div>');
    });
    $.getJSON('/ajax/video/recommend').done(function (data) {
      data.forEach(function (video) {
        $('#video-list').append('<li>' + video.file + ' <a href="/video/' + video.file + '">' + video.title + '</a><span style="background:#dcfe7f;font-size:10px;color:#454545;border-radius:5px;">' + video.sort + '</span><span class="video_choice" style="background:#FFB6C1;color:#fff;">荐</span></li>');
      });
      currentIndex = pageSize - data.length;
      $.getJSON('/ajax/video/chatroom/0-' + currentIndex).done(function (data) {
        videos = videos.concat(data);
        if (play) {
          $('#video-player').attr('src', 'http://v3.yidumen.com/video/360/' + data[0].file + '_360.mp4');
          $('#video-switcher').append('<li><a href="http://v3.yidumen.com/video/720/' + data[0].file + '_720.mp4">超清</a></li>')
            .append('<li><a href="http://v3.yidumen.com/video/480/' + data[0].file + '_720.mp4">高清</a></li>')
            .append('<li id="active"><a href="http://v3.yidumen.com/video/360/' + data[0].file + '_360.mp4">标清</a></li>')
            .append('<li><a href="http://v3.yidumen.com/video/180/' + data[0].file + '_180.mp4">流畅</a></li>')
        }
        data.forEach(function (video) {
          $('#video-list').append('<li>' + video.file + ' <a href="/video/' + video.file + '">' + video.title + '</a><span style="background:#dcfe7f;font-size:10px;color:#454545;border-radius:5px;">' + video.sort + '</span></li>');
        });
        currentIndex = data.length;
      });
    });
    var scrollListen = function () {
      if ($(window).scrollTop() + $(window).height() == $(document).height()) {
        $(window).off('scroll');
        $('#main_container').append('<div class="loadmore"><img src="/resources/web/images/loadmore.gif">正在加载...</div>');
        $.get('/ajax/video/chatroom/' + currentIndex + '-50', function (data) {
          if (data.length === 0) {
            $('.loadmore').html('已全部加载完毕');
            return;
          }
          data.forEach(function (video) {
            $('#video-list').append('<li>' + video.file + ' <a href="/video/' + video.file + '">' + video.title + '</a><span style="background:#dcfe7f;font-size:10px;color:#454545;border-radius:5px;">' + video.sort + '</span></li>');
          });
          currentIndex += data.length;
          $('.loadmore').remove();
          $(window).scroll(scrollListen);
        });
      }
    };
    $(window).scroll(scrollListen);
    result.resolve(videos);
  },
  chatroom: function () {
    this.videoList(true);
  },
  pathValue: function () {
    var result = window.location.href.split('/');
    return result[result.length - 1];
  },
  videoView: function () {
    $.getJSON('/ajax/video/' + this.pathValue()).done(function (data) {
      var videos = [];
      videos.push(data);
      videojs("video-player", {
        "controls": true,
        "autoplay": true,
        "width": "100%",
        "height": "100%",
        plugins: {
          ydmPlayer: {
            videos: videos
          }
        }
      });
    });
    this.videoList(false);
  },
  diamondList: function () {
    $.get('/ajax/video/diamond').done(function (data) {
      videojs("video-player", {
        "controls": true,
        "autoplay": true,
        "width": "759",
        "height": "100%",
        plugins: {
          ydmPlayer: {
            videos: data
          }
        }
      });
    });
  },
  weiboList: function () {
    $.get('/ajax/video/weibo').done(function (data) {
      videojs("video-player", {
        "controls": true,
        "autoplay": true,
        "width": "784",
        "height": "100%",
        plugins: {
          ydmPlayer: {
            videos: data
          }
        }
      });
    })
  }
};