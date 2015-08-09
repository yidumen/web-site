<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>金刚经,金刚经全文 - 易度门</title>
    <meta name="keywords" content="金刚经,金刚经全文,金刚经白话释义, 法华经,杨宁,易度门">
    <meta name="description" content="金刚经,金刚经全文,杨宁解说金刚经 – 易度门">
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
    <div id="video_box_large" style="width:960px; height:428px;">
        <video id="video-player"
               class="video-js vjs-default-skin vjs-big-play-centered"
               poster="/resources/web/images/bg_video.png"
                >您正在使用的浏览器无法播放本视频，请您升级浏览器后，继续访问网站。
        </video>
        <ul id="listbar" style="width: 200px; float: right"></ul>
    </div>
    <div id="General_left">
        <div style="margin-top: 25px;margin-left: 10px">
            <dl style="font-size: 14px; color: #666">
                <dt>《金刚经》讲义</dt>
                <dd>
                    <ul>
                        <c:forEach var="item" items="${notes}">
                            <li style="margin-top: 25px; display: inline-block; min-width: 40%;padding-left: 10px"><a
                                    style="" href="/diamond/${item.id}">${item.title}</a></li>
                        </c:forEach>
                    </ul>
                </dd>
            </dl>
        </div>
        <div>
            <dl id="lotus_list_area">
                <dt>金刚经</dt>
                <dd>
                    <ul>
                        <c:forEach var="item" items="${diamonds}">
                            <li>${item.partIdentifier} <a href="/diamond/${item.originalId}">${item.title}</a></li>
                        </c:forEach>
                    </ul>
                </dd>
            </dl>
        </div>
    </div>
    <div id="General_right">
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
    app.diamondList();
</script>
<script type="text/javascript" src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js?appkey=914263201"
        charset="utf-8"></script>
</body>
</html>
