<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>易度门-${title}</title>
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
                <h1><a href="../${path}">${title}</a></h1>
                <div id="content_box">
                    <h3><span>${buddhism.partIdentifier} &#8226; </span>${buddhism.title}</h3>
                    <div class="article_box" id="article_box">
                        <c:if test="${buddhism.video != null}">
                          <div class="video_box" style="width:640px;height:360px;border-radius:9px;background:#666">
                              <video id="video-player"
                                     class="video-js vjs-default-skin vjs-big-play-centered"
                                     poster="http://yimg.yidumen.com/yidumen/web/images/bg_video.png"
                                     src="http://v3.yidumen.com/video/480/${buddhism.video.file}_480.mp4"
                                     data-setup='{ "controls": true, "autoplay": true, "width":"100%", "height":"100%" }'>
                                  您正在使用的浏览器无法播放本视频，请您升级浏览器后，继续访问网站。
                              </video>
                          </div>
                        </c:if>
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
        <script type="text/cjs" data-cjssrc="/resources/web/js/loadmore.js"></script>
        <script type="text/cjs" data-cjssrc="/resources/web/js/video-js/video.js"></script>
        <script type="text/cjs" data-cjssrc="/resources/web/js/video-js/lang/zh.js"></script>
    </body>
</html>
