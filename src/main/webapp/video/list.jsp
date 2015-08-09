<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>聊天室 – 杨宁佛学视频 – 易度门</title>
    <meta name="description" content="杨宁老师佛学视频 在线观看 - 易度门">
    <%@include file="/WEB-INF/jspf/header.jspf" %>
    <link rel="stylesheet" href="/resources/video-js/video-js.min.css">
    <link rel="stylesheet" href="/resources/video-js/yidumen-player.css">
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
<script type="text/javascript" src="/resources/video-js/video.js"></script>
<script type="text/javascript" src="/resources/video-js/lang/zh.js"></script>
<script type="text/javascript" src="/resources/video-js/yidumen-player.js"></script>
<script src="/resources/js/normal.js"></script>
<script>
    app.chatroom();
</script>
</body>
</html>
