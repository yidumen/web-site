<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>${video.title} – 杨宁佛学视频 – 易度门</title>
    <meta name="keywords" content="${video.title},杨宁视频,佛学视频,杨宁老师,易度门">
    <meta name="description" content="${video.title},杨宁老师佛学视频 在线观看 – 易度门">
    <%@include file="/WEB-INF/jspf/header.jspf" %>
    <link rel="stylesheet" href="/resources/web/js/video-js/video-js.min.css">
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
               poster="http://yimg.yidumen.com/yidumen/web/images/bg_video.png"
               src="http://v3.yidumen.com/video/480/${video.file}_480.mp4"
               data-setup='{ "controls": true, "autoplay": true, "width":"100%", "height":"100%" }'>
            您正在使用的浏览器无法播放本视频，请您升级浏览器后，继续访问网站。
        </video>
    </div>
    <h5 id="video_large_title" class="video_large_title">${video.title}</h5>

    <div id="General_left">
        <dl id="video_list_area">
            <dt>所有视频列表</dt>
            <dd>
                <ul>
                    <c:forEach var="item" items="${recommend}">
                        <li>${item.file} <a href="/video/${item.file}">${item.title}</a><span
                                style="background:#dcfe7f;font-size:10px;color:#454545;border-radius:5px;">${item.sort}</span><span
                                class="video_choice">&nbsp;</span></li>
                    </c:forEach>
                    <c:forEach var="item" items="${videos}">
                        <li>${item.file} <a href="/video/${item.file}">${item.title}</a><span
                                style="background:#dcfe7f;font-size:10px;color:#454545;border-radius:5px;">${item.sort}</span>
                        </li>
                    </c:forEach>
                </ul>
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
        <%@include file="/WEB-INF/jspf/weibo.jspf" %>
        <%@include file="/WEB-INF/jspf/exchange.jspf" %>
    </div>
</div>
<!-- -->
<!--web footer width:100% -->
<%@include file="/WEB-INF/jspf/footer.jspf" %>
<script type="text/javascript" src="/resources/video-js/video.js"></script>
<script type="text/javascript" src="/resources/video-js/lang/zh.js"></script>
</body>
</html>
