<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>易度门-${title}</title>
        <script type="text/javascript">
            var cjsscript = document.createElement('script');
            cjsscript.src = "/resources/web/js/control.js";
            var cjssib = document.getElementsByTagName('script')[0];
            cjssib.parentNode.insertBefore(cjsscript, cjssib);
        </script>
        <%@include file="/WEB-INF/jspf/header.jspf" %>
        <link rel="stylesheet" href="/resources/web/js/video-js/video-js.min.css">
    </head>
    <body>
        <!--web head width:990px -->
        <%@include file="/WEB-INF/jspf/nav.jspf" %>
        <!--/web head -->
        <!--web container width:990px-->
        <div id="container">
            <div id="General_left">
                <h1><a href="/${path}">${title}</a></h1>
                <div id="content_box">
                    <h3><span>${buddhism.partIdentifier} &#8226;</span>${buddhism.title}</h3>
                    <!--ariticle text area  -->
                    ${buddhism.content}
                    <!--ariticle text area  -->
                </div>
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
                    <dd class="prev" ${prev == null ? 'style="visibility:hidden";' : ''}><a href="./${prev.id}"><span>上一课</span><br />${prev.title}</a></dd>
                    <dt><a href="../${path}">返回目录</a></dt>
                    <dd class="next" ${next == null ? 'style="visibility:hidden";' : ''}><a href="./${next.id}"><span>下一课</span><br />${next.title}</a></dd>
                </dl>
                <!--/next/previous -->
            </div>
            <div id="General_right">
                <dl class="r_reading">
                    <dt>朗读本课</dt>
                    <dd>
                        <div style="width:150px; font-size:10px; background:bottom url(http://yimg.yidumen.com/yidumen/web/images/audio_bg.png) repeat-x; height:30px; border-right:4px solid #c4c4c4">
                            <div style="width:118px; background:bottom url(http://yimg.yidumen.com/yidumen/web/images/audio_bg.png) repeat-x; overflow:hidden; height:30px; padding:-10px;">
                                <audio src="http://v3.yidumen.com/audio/heart_of_dharma_realm_${mp3}.mp3" controls></audio>
                            </div>
                        </div>
                    </dd>
                </dl>
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
        <script type="text/javascript" src="/resources/web/js/video-js/video.js"></script>
        <script type="text/javascript" src="/resources/web/js/video-js/lang/zh.js"></script>
        <script type="text/javascript" src="/resources/web/js/loadmore.js"></script>
    </body>
</html>
