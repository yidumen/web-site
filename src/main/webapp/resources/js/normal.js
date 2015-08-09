//footer在页面高度不够时浮动到底部
$(document).ready(function () {
  var windowheight = $(window).height(); //浏览器时下窗口可视区域高度
  var bodyheight = $(document.body).height();//浏览器时下窗口文档body的高度
  if (bodyheight < windowheight) {
    $("#footer").css({"position": "absolute", "bottom": "0px", "width": "100%"});
  }
});
videojs.options.flash.swf = "/resources/video-js/video-js.swf";
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
    $.get('/ajax/video/recommend', function (data) {
      data.forEach(function (video) {
        $('#video-list').append('<li>' + video.file + ' <a href="/video/' + video.file + '">' + video.title + '</a><span class="video_sort">' + video.sort + '</span><span class="video_choice">&nbsp;</span></li>');
      });
      currentIndex = pageSize - data.length;
      $.get('/ajax/video/chatroom/0-' + currentIndex, function (data) {
        videos = videos.concat(data);
        if (play) {
          videojs("video-player", {
            "controls": true,
            "autoplay": true,
            "width": "100%",
            "height": "100%",
            plugins: {
              ydmPlayer: {
                videos: videos,
                random: true
              }
            }
          });
        }
        data.forEach(function (video) {
          $('#video-list').append('<li>' + video.file + ' <a href="/video/' + video.file + '">' + video.title + '</a><span class="video_sort">' + video.sort + '</span></li>');
        });
        currentIndex = data.length;
      });
    });
    $.get('/ajax/video/dhamma', function (data) {
      data.forEach(function (dhamma) {
        $('.r_quotes_collection').append('<dd><a href="/video/' + dhamma.file + '">' + dhamma.title + '</a></dd>');
      });
    });
    var scrollListen = function () {
      if ($(window).scrollTop() + $(window).height() == $(document).height()) {
        $(window).off('scroll');
        $('#General_left').append('<div class="loadmore"><img src="/resources/web/images/loadmore.gif">正在加载...</div>');
        $.get('/ajax/video/chatroom/' + currentIndex + '-50', function (data) {
          if (data.length === 0) {
            $('.loadmore').html('已全部加载完毕');
            return;
          }
          data.forEach(function (video) {
            $('#video-list').append('<li>' + video.file + ' <a href="/video/' + video.file + '">' + video.title + '</a><span class="video_sort">' + video.sort + '</span></li>');
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