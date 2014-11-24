<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>易度门-${title}</title>
        <script type="text/javascript">
            var cjsscript = document.createElement('script');
            cjsscript.src = "http://yjs.yidumen.com/yidumen/web/js/control.js";
            var cjssib = document.getElementsByTagName('script')[0];
            cjssib.parentNode.insertBefore(cjsscript, cjssib);
        </script>
        <%@include file="/WEB-INF/jspf/header.jspf" %>
    </head>
    <body>
        <!--web head width:990px -->
        <%@include file="/WEB-INF/jspf/nav.jspf" %>
        <!--/web head -->
        <!--web container width:990px-->
        <div id="container">
            <div id="General_left">
                <h1><a href="../${path}">${title}</a></h1>
                <div id="content_box">
                    <h3><span>${buddhism.partIdentifier} &#8226;</span>${buddhism.title}</h3>
                    <c:if test="${buddhism.video != null}">
                        <div class="article_box" id="article_box">
                            <div class="video_box" style="width:640px;height:360px;border-radius:9px;background:#666">
                                <div id="Player_01">
                                    您正在使用的浏览器无法播放本视频，请您升级浏览器后，继续访问网站。
                                </div>
                            </div>
                            <!--ariticle text area  -->
                            ${buddhism.content}
                            <!--ariticle text area  -->
                        </div>
                    </c:if>
                    <!--load more -->
                    <c:if test="${pageCount > 1}">
                        <div id="load_more">
                            <div id="loadmore_img"></div>
                            <a href="javascript:void(0);" id="loading_button1" class="loadmore_button">
                                <div id="pagenum">继续阅读 (1/${pageCount})</div>
                            </a>
                        </div>
                        <script type="text/javascript" >
                            var id = ${buddhism.id};
                            var pagenum = 1;
                            var url = "/buddhism/loadmore/";
                            var pagecount = ${pageCount};
                        </script>
                    </c:if>

                    <!--/load more -->
                    <!--next/previous --> 
                    <dl id="next_prev">
                        <dd class="prev" ${prev == null ? 'style="visibility:hidden";' : ''}><a href="/buddhism/${path}/${prev.id}"><span>上一课</span><br />${prev.title}</a></dd>
                        <dt><a href="../${path}">返回目录</a></dt>
                        <dd class="next" ${next == null ? 'style="visibility:hidden";' : ''}><a href="/buddhism/${path}/${next.id}"><span>下一课</span><br />${next.title}</a></dd>
                    </dl>
                    <!--/next/previous -->
                </div>
            </div>
            <div id="General_right">
                <dl class="r_download">
                    <dt>全文下载</dt>
                    <dd><a href="http://v3.yidumen.com/doc/${title}.pdf">PDF格式</a></dd>
                    <dd><a href="http://v3.yidumen.com/doc/${title}.rtf">RTF格式</a></dd>
                </dl>
                <%@include file="/WEB-INF/jspf/weibo.jspf" %>
                <%@include file="/WEB-INF/jspf/exchange.jspf" %>
            </div>
        </div>
        <!-- -->
        <!--web footer width:100% -->
        <%@include file="/WEB-INF/jspf/footer.jspf" %>
        <script type="text/cjs" data-cjssrc="http://yjs.yidumen.com/yidumen/web/js/loadmore.js"></script>
        <c:if test="${buddhism.video != null}">
            <script type="text/javascript" src="http://yjs.yidumen.com/yidumen/web/js/jwplayer/jwplayer.js"></script>
            <script type="text/javascript">jwplayer.key = "J43xbL7zqK42QQgUPzW++yE6Xme4o5wMjehIeQ==";</script>
            <script>
                jwplayer("Player_01").setup({
                    width: "100%",
                    height: "100%",
                    autostart: false,
                    ga: {
                        idstring: "信仰佛教、学习佛法与修证佛法的区别"
                    },
                    abouttext: "Yidumen.com",
                    aboutlink: "http://www.yidumen.com",
                    playlist: [{
                            image: "http://yimg.yidumen.com/yidumen/web/images/bg_video.png",
                            title: "信仰佛教、学习佛法与修证佛法的区别",
                            sources: [{
                                    file: "http://v3.yidumen.com/video/720/${buddhism.video.file}_720.mp4",
                                    label: "720p 超清"
                                }, {
                                    file: "http://v3.yidumen.com/video/480/${buddhism.video.file}_480.mp4",
                                    label: "480p 高清"
                                }, {
                                    file: "http://v3.yidumen.com/video/360/${buddhism.video.file}_360.mp4",
                                    label: "360p 标清",
                                    "default": true
                                }, {
                                    file: "http://v3.yidumen.com/video/180/${buddhism.video.file}_180.mp4",
                                    label: "180p 流畅"
                                }]
                        }]
                });
            </script>
            <script>
                jwplayer().addButton(
                        "http://yimg.yidumen.com/yidumen/web/images/dl_video.png",
                        "下载视频",
                        function () {
                            var filename = jwplayer().getPlaylist()[0].sources[0].file;
                            filename = filename.replace("video", "video_dl");
                            filename = filename.replace("${buddhism.video.file}", "${buddhism.video.file}_${buddhism.title}");
                                            window.location.href = filename;
                                        },
                                        "download"
                                        );
            </script>
        </c:if>
    </body>
</html>
