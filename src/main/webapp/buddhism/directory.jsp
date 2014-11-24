<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="keywords" content="修证佛法,学习佛法,了解佛法,佛学基础,杨宁,易度门" />
        <meta name="description" content="修证佛法、学习佛法、了解佛法 - 易度门" />
        <%@include file="/WEB-INF/jspf/header.jspf" %>
        <title>易度门-${title}</title>
    </head>
    <body>
        <!--web head width:990px -->
        <%@include file="/WEB-INF/jspf/nav.jspf" %>
        <!--/web head -->
        <!--web container width:990px-->
        <div id="container">
            <div id="video_box_large" style="width:945px; height:440px;">
                <div id="Player_01">您正在使用的浏览器无法播放本视频，请您升级浏览器后，继续访问网站。</div>
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
        <script type="text/javascript" src="http://yjs.yidumen.com/yidumen/web/js/jwplayer/jwplayer.js"></script>
        <script type="text/javascript">jwplayer.key = "J43xbL7zqK42QQgUPzW++yE6Xme4o5wMjehIeQ==";</script>
        <script>
            jwplayer("Player_01").setup({
                width: "100%",
                height: "100%",
                autostart: false,
                ga: {
                    idstring: "${title}"
                },
                listbar: {
                    position: "right",
                    layout: "basic",
                    size: 200
                },
                abouttext: "Yidumen.com",
                aboutlink: "http:www.yidumen.com",
                playlist: [
            <c:forEach var="buddhism" items="${buddhisms}">
                <c:if test="${buddhism.video != null}">
                    {sources: [
                            {file: "http://v3.yidumen.com/video/360/${buddhism.video.file}_360.mp4", label: "360p"},
                            {file: "http://v3.yidumen.com/video/480/${buddhism.video.file}_480.mp4", label: "480p", "default": true},
                            {file: "http://v3.yidumen.com/video/720/${buddhism.video.file}_720.mp4", label: "720p"}],
                        image: "http://yimg.yidumen.com/yidumen/web/images/bg_video.png",
                        title: "${buddhism.title}",
                    },
                </c:if>
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
                        filename = ff[0] + "_" + title + "_" + ff[1];
                        filename = filename.replace("video", "video_dl");
                        window.location.href = filename;
                    },
                    "download"
                    );
        </script>
    </body>
</html>
