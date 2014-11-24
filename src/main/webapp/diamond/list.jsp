<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>金刚经,金刚经全文 - 易度门</title>
        <meta name="keywords" content="金刚经,金刚经全文,金刚经白话释义, 法华经,杨宁,易度门">
        <meta name="description" content="金刚经,金刚经全文,杨宁解说金刚经 – 易度门">   
        <%@include file="/WEB-INF/jspf/header.jspf" %>
    </head>
    <body>
        <!--web head width:990px -->
        <%@include file="/WEB-INF/jspf/nav.jspf" %>
        <!--/web head -->
        <!--web container width:990px-->
        <div id="container">
            <div id="video_box_large" style="width:960px; height:428px;">
                <div id="Player_01">您正在使用的浏览器无法播放本视频，请您升级浏览器后，继续访问网站。</div>
            </div>
            <div id="General_left">
                <dl id="lotus_list_area">
                    <dt>原经文及现代白话释义（摘自中华书局出版的《白话佛教十三经》）</dt>
                    <dd>
                        <ul>
                            <c:forEach var="item" items="${diamonds}">
                                <li>${item.partIdentifier} <a href="/diamond/${item.originalId}">${item.title}</a>  <span><a href="/diamond/${item.vernacularId}">白话释义</a></span></li>
                                </c:forEach>
                        </ul>
                    </dd>
                </dl>
            </div>
            <div id="General_right">
                <%@include file="/WEB-INF/jspf/weibo.jspf" %>
                <%@include file="/WEB-INF/jspf/exchange.jspf" %>
            </div>
        </div>
        <!-- -->
        <!--web footer width:100% -->
        <%@include file="/WEB-INF/jspf/footer.jspf" %>
        <script type="text/javascript" src="http://yjs.yidumen.com/yidumen/web/js/jwplayer/jwplayer.js"></script>
        <script type="text/javascript">jwplayer.key = "J43xbL7zqK42QQgUPzW++yE6Xme4o5wMjehIeQ==";</script>
        <script type="text/javascript" src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js?appkey=914263201" charset="utf-8"></script>
        <script>
            jwplayer("Player_01").setup({
                width: "100%",
                height: "100%",
                autostart: false,
                ga: {
                    idstring: "金刚经"
                },
                listbar: {
                    position: "right",
                    layout: "basic",
                    size: 200
                },
                abouttext: "Yidumen.com",
                aboutlink: "http://www.yidumen.com",
                playlist: [
            <c:forEach items="${videos}" var="item">
                        {sources: [
                            {file: "http://v3.yidumen.com/video/180/${item.file}_180.mp4", label: "流畅"},
                            {file: "http://v3.yidumen.com/video/360/${item.file}_360.mp4", label: "标清"},
                            {file: "http://v3.yidumen.com/video/480/${item.file}_480.mp4", label: "高清", "default": true},
                            {file: "http://v3.yidumen.com/video/720/${item.file}_720.mp4", label: "超清"}
                        ],
                        image: "http://yimg.yidumen.com/yidumen/web/images/bg_video.png",
                        title: "${item.title.substring(8)}"
                    },
            </c:forEach>
                ]
            });

        </script>
        <script>
            jwplayer().addButton(
                    "http://yimg.yidumen.com/yidumen/web/images/dl_video.png",
                    "下载视频",
                    function () {
                        var cplay = jwplayer().getPlaylistIndex();
                        var filename = jwplayer().getPlaylist()[cplay].file;
                        var title = jwplayer().getPlaylist()[cplay].title;
                        var ff = new Array(); //定义一数组
                        ff = filename.split("_");
                        filename = ff[0] + "_《金刚经》讲义　" + title + "_" + ff[1];
                        filename = filename.replace("video", "video_dl");
                        window.location.href = filename;
                    },
                    "download"
                    );
        </script>
    </body>
</html>
