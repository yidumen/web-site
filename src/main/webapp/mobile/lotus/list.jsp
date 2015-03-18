<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>妙法莲华经,妙法莲华经全文,法华经 - 易度门</title>
        <%@include file="/WEB-INF/jspf/mobile/header.jspf" %>

        <script type="text/javascript">
            function setVideoFormat(format) {
                SetCookie("videoformat", format);
                document.location.reload();
            }
            function playvideo(file) {
                var abc = $("#video_box").html();
                var fhj_video = document.getElementById('fhj_video' + file);
                $(".fhj_video").html("");
                fhj_video.innerHTML = "<div id='video_box'>" + abc + "</div>";
                var myVideo = document.getElementsByTagName('video')[0];
                myVideo.src = "http://v3.yidumen.com/video/${videoFormat}/A" + file + "_${videoFormat}.mp4";
                myVideo.play();
            }
        </script>
    </head>

    <body>
        <!--头 --> 
        <%@include file="/WEB-INF/jspf/mobile/nav.jspf" %>
        <!--头结束 --> 
        <div id="main_container">
            <h3>视频讲义</h3>
            <div id="content_box">
                <ul id="fhj_list">
                    <li><a href="javascript:playvideo('0001');" id="fhj00">《法华经》概述</a></li>
                    <div class="fhj_video" id="fhj_video0001">
                        <div id="video_box">
                            <video controls="controls" width="100%" loop="loop">
                                <source src="http://v3.yidumen.com/video/${videoFormat}/A0001_${videoFormat}.mp4" type="video/mp4">
                                <source src="http://v3.yidumen.com/video/${videoFormat}/A1001_${videoFormat}.mp4" type="video/mp4">
                                <source src="http://v3.yidumen.com/video/${videoFormat}/A1002_${videoFormat}.mp4" type="video/mp4">
                                <source src="http://v3.yidumen.com/video/${videoFormat}/A1003_${videoFormat}.mp4" type="video/mp4">
                                <source src="http://v3.yidumen.com/video/${videoFormat}/A1004_${videoFormat}.mp4" type="video/mp4">
                                <source src="http://v3.yidumen.com/video/${videoFormat}/A1005_${videoFormat}.mp4" type="video/mp4">
                                <source src="http://v3.yidumen.com/video/${videoFormat}/A1006_${videoFormat}.mp4" type="video/mp4">
                                对不起，您的浏览器不支持视频播放，请更新您的浏览器或使用谷歌浏览器。
                            </video>
                            <ul>
                                <li ${videoFormat.equals("720") ? "id=\"active\"" : ""}>${videoFormat.equals("720") ? "超清" : "<a href=\"javascript:setVideoFormat(720);\">超清</a>"}</li>
                                <li ${videoFormat.equals("480") ? "id=\"active\"" : ""}>${videoFormat.equals("480") ? "高清" : "<a href=\"javascript:setVideoFormat(480);\">高清</a>"}</li>
                                <li ${videoFormat.equals("360") ? "id=\"active\"" : ""}>${videoFormat.equals("360") ? "标清" : "<a href=\"javascript:setVideoFormat(360);\">标清</a>"}</li>
                                <li ${videoFormat.equals("180") ? "id=\"active\"" : ""}>${videoFormat.equals("180") ? "标准" : "<a href=\"javascript:setVideoFormat(180);\">标准</a>"}</li>
                            </ul>
                        </div>
                    </div>

                    <li><a href="javascript:playvideo(1001);" id="fhj01">《法华经》讲义（一）</a></li>
                    <div class="fhj_video" id="fhj_video1001"></div>

                    <li><a href="javascript:playvideo(1002);" id="fhj02">《法华经》讲义（二）</a></li>
                    <div class="fhj_video" id="fhj_video1002"></div>

                    <li><a href="javascript:playvideo(1003);" id="fhj03">《法华经》讲义（三）</a></li>
                    <div class="fhj_video" id="fhj_video1003"></div>

                    <li><a href="javascript:playvideo(1004);" id="fhj04">《法华经》讲义（四）</a></li>
                    <div class="fhj_video" id="fhj_video1004"></div>

                    <li><a href="javascript:playvideo(1005);" id="fhj05">《法华经》讲义（五）</a></li>
                    <div class="fhj_video" id="fhj_video1005"></div>

                    <li><a href="javascript:playvideo(1006);" id="fhj06">《法华经》讲义（六）</a></li>
                    <div class="fhj_video" id="fhj_video1006"></div>

                </ul>

            </div>
            <h3>漫游妙法莲华</h3>
            <div id="content_box">
                <ul>
                    <li><a href="/lotus/2">妙法莲华经在说什么？妙法莲华经在佛法中的地位和价值</a></li>
                    <li><a href="/lotus/3">妙法莲花经对现代众生的意义。</a></li>
                </ul>
            </div>
            <h3>内容分享</h3>
            <%@include file="/WEB-INF/jspf/mobile/weibo.jspf" %>
            <h3 id="lotus_sutra">妙法莲花原经文及白话释义<br /><span>目录</span></h3>
            <div id="content_box">
                <ul>
                    <c:forEach var="lotus" items="${lotuses}">
                        <li>${lotus.partIdentifier} <a href="/lotus/${lotus.originalId}">${lotus.title}</a> // <span><a href="/lotus/${lotus.vernacularId}">白话释义</a></span></li>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <!--页脚部分 -->
        <%@include file="/WEB-INF/jspf/footer.jspf" %>
        <!--页脚部分结束 -->
    </body>
</html>
