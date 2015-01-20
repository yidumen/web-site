<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>易度门-${title}</title>
        <meta name="keywords" content="修证佛法,学习佛法,了解佛法,佛学基础,杨宁,易度门" />
        <meta name="description" content="修证佛法、学习佛法、了解佛法 - 易度门" />
        <meta charset="utf-8">
        <%@include file="/WEB-INF/jspf/header.jspf" %>
        <link rel="stylesheet" href="/resources/web/js/video-js/video-js.min.css">
        <link rel="stylesheet" href="/resources/web/js/video-js/yidumen-player.css">
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
                       poster="http://yimg.yidumen.com/yidumen/web/images/bg_video.png"
                       >您正在使用的浏览器无法播放本视频，请您升级浏览器后，继续访问网站。</video>
                <ul id="listbar" style="width: 200px; float: right"></ul>
            </div>


            <div id="General_left">
                <h1>${title}目录</h1>
                <div id="list_box">
                    <c:forEach var="buddhism" items="${buddhisms}">
                        <c:choose>
                            <c:when test="${buddhism.content != null}">
                                <p><a href="/buddhism/${path}/${buddhism.id}">${buddhism.partIdentifier} ${buddhism.title}</a></p>
                            </c:when>
                            <c:otherwise>
                                <p>${buddhism.partIdentifier} ${buddhism.title}</p>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                </div>
            </div>
            <div id="General_right">
                <dl class="r_download">
                    <dt>全文下载</dt>
                    <dd><a href="http://v3.yidumen.com/doc/${title}.pdf">PDF格式</a></dd>
                    <dd><a href="http://v3.yidumen.com/doc/${title}.rtf">RTF格式</a></dd>
                </dl>
                <%@include file="/WEB-INF/jspf/exchange.jspf" %>
            </div>
        </div>
        <!-- -->
        <!--web footer width:100% -->
        <%@include file="/WEB-INF/jspf/footer.jspf" %>
        <script type="text/javascript" src="/resources/web/js/video-js/video.js"></script>
        <script type="text/javascript" src="/resources/web/js/video-js/lang/zh.js"></script>
        <script type="text/javascript" src="/resources/web/js/video-js/yidumen-player.js"></script>
        <script>
            var playlist = [
            <c:forEach var="video" items="${videos}">
                {file: "${video.file}",
                    title: "${video.title}"
                },
            </c:forEach>
            ];
            var vjs = videojs("video-player", {
                "controls": true,
                "autoplay": true,
                "width": "759",
                "height": "100%",
                plugins: {
                    ydmPlayer: playlist
                }
            });
        </script>
    </body>
</html>
