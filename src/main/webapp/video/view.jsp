<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>杨宁佛学视频 – 易度门</title>
    <%@include file="/WEB-INF/jspf/header.jspf" %>
    <link rel="stylesheet" href="/resources/video-js/video-js.min.css">
</head>

<body>
<!--web head width:990px -->
<%@include file="/WEB-INF/jspf/nav.jspf" %>
<!--/web head -->

<!--web container width:990px-->
<div id="container">
    <div id="video_box_large">
        <video id="video-player"
               class="video-js vjs-default-skin vjs-big-play-centered"
               poster="/resources/web/images/bg_video.png">

        </video>
    </div>
    <h5 id="video_large_title" class="video_large_title"></h5>

    <div id="General_left">
        <dl id="video_list_area">
            <dt>所有视频列表</dt>
            <dd>
                <ul id="video-list"></ul>
            </dd>
        </dl>
    </div>


    <div id="General_right">
        <dl class="r_download">
            <dt>视频下载</dt>
            <dd>
                <a href="javascript:document.location.href='http://v3.yidumen.com/video_dl/720/${video.file}_${video.title}_720.mp4';">MP4
                    格式</a></dd>
        </dl>
        <dl class="r_quotes_collection">
            <dt>开示摘录</dt>
        </dl>
        <%@include file="/WEB-INF/jspf/weibo.jspf" %>
        <%@include file="/WEB-INF/jspf/exchange.jspf" %>
    </div>
</div>
<!-- -->
<!--web footer width:100% -->
<%@include file="/WEB-INF/jspf/footer.jspf" %>
<script src="/resources/video-js/video.js"></script>
<script src="/resources/video-js/lang/zh.js"></script>
<script src="/resources/video-js/yidumen-player.js"></script>
<script src="/resources/js/normal.js"></script>
<script>app.videoView()</script>
</body>
</html>
