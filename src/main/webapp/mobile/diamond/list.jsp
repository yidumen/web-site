<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>金刚经,金刚经全文 - 易度门</title>
        <%@include file="/WEB-INF/jspf/mobile/header.jspf" %>
        <script type="text/javascript">
            function setVideoFormat(format) {
                SetCookie("videoformat", format);
                document.location.reload();
            }
            function playvideo(file) {
                var abc = $("#video_box").html();
//                var fhj_video = document.getElementById('fhj_video' + file);
                $(".fhj_video").html("");
                $("#fhj_video" + file).html("<div id='video_box'>" + abc + "</div>");
//                fhj_video.innerHTML = "<div id='video_box'>" + abc + "</div>";
                var myVideo = document.getElementsByTagName('video')[0];
                myVideo.src = "http://v3.yidumen.com/video/${videoFormat}/F" + file + "_${videoFormat}.mp4";
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
                    <li><a href="javascript:playvideo(1001);" id="fhj01">前言</a></li>
                    <div class="fhj_video" id="fhj_video1001">
                        <div id="video_box">
                            <video controls="controls" width="100%">
                                对不起，您的浏览器不支持视频播放，请更新您的浏览器或使用谷歌浏览器。
                            </video>
                            <ul>
                                <li ${videoFormat.equals("720") ? "id=\"active\"" : ""}>${videoFormat.equals("720") ? "超清" : "<a href=\"javascript:setVideoFormat(720);\">超清</a>"}</li>
                                <li ${videoFormat.equals("480") ? "id=\"active\"" : ""}>${videoFormat.equals("480") ? "高清" : "<a href=\"javascript:setVideoFormat(480);\">高清</a>"}</li>
                                <li ${videoFormat.equals("360") ? "id=\"active\"" : ""}>${videoFormat.equals("360") ? "标清" : "<a href=\"javascript:setVideoFormat(360);\">标清</a>"}</li>
                                <li ${videoFormat.equals("180") ? "id=\"active\"" : ""}>${videoFormat.equals("180") ? "流畅" : "<a href=\"javascript:setVideoFormat(180);\">标准</a>"}</li>
                            </ul>
                        </div>
                    </div>

                    <li><a href="javascript:playvideo(1002);" id="fhj2">经题</a></li>
                    <div class="fhj_video" id="fhj_video1002"></div>

                    <li><a href="javascript:playvideo(1003);" id="fhj03">第一品　法会因由分</a></li>
                    <div class="fhj_video" id="fhj_video1003"></div>

                    <li><a href="javascript:playvideo(1004);" id="fhj04">第二品　善现启请分</a></li>
                    <div class="fhj_video" id="fhj_video1004"></div>

                    <li><a href="javascript:playvideo(1005);" id="fhj05">第三品　大乘正宗分</a></li>
                    <div class="fhj_video" id="fhj_video1005"></div>

                    <li><a href="javascript:playvideo(1006);">第四品　妙行无住分</a></li>
                    <div class="fhj_video" id="fhj_video1006"></div>

                    <li><a href="javascript:playvideo(1007);">第五品　如理实见分</a></li>
                    <div class="fhj_video" id="fhj_video1007"></div>
                    <li><a href="javascript:playvideo(1008);">第六品　正信希有分</a></li>
                    <div class="fhj_video" id="fhj_video1008"></div>
                    <li><a href="javascript:playvideo(1009);">第七品　无得无说分</a></li>
                    <div class="fhj_video" id="fhj_video1009"></div>
                    <li><a href="javascript:playvideo(1010);">第八品　依法出生分</a></li>
                    <div class="fhj_video" id="fhj_video1010"></div>
                    <li><a href="javascript:playvideo(1011);">第九品　一相无相分</a></li>
                    <div class="fhj_video" id="fhj_video1011"></div>
                    <li><a href="javascript:playvideo(1012);"> 第十品　庄严净土分</a></li>
                    <div class="fhj_video" id="fhj_video1012"></div>
                    <li><a href="javascript:playvideo(1013);">第十一品　无为福胜分　第十二品　尊重正教分</a></li>
                    <div class="fhj_video" id="fhj_video1013"></div>
                    <li><a href="javascript:playvideo(1014);">第十三品　如法受持分</a></li>
                    <div class="fhj_video" id="fhj_video1014"></div>
                    <li><a href="javascript:playvideo(1015);">第十四品　离相寂灭分　第十五品　持经功德分　第十六品　能净业障分</a></li>
                    <div class="fhj_video" id="fhj_video1015"></div>
                    <li><a href="javascript:playvideo(1016);">第十七品　究竟无我分</a></li>
                    <div class="fhj_video" id="fhj_video1016"></div>
                    <li><a href="javascript:playvideo(1017);">第十八品　一体同观分</a></li>
                    <div class="fhj_video" id="fhj_video1017"></div>
                    <li><a href="javascript:playvideo(1018);">第十九品　法界通化分</a></li>
                    <div class="fhj_video" id="fhj_video1018"></div>
                    <li><a href="javascript:playvideo(1019);">第二十品　离色离相分</a></li>
                    <div class="fhj_video" id="fhj_video1019"></div>
                    <li><a href="javascript:playvideo(1020);">第二十一品　非说所说分</a></li>
                    <div class="fhj_video" id="fhj_video1020"></div>
                    <li><a href="javascript:playvideo(1021);">第二十二品　无法可得分　第二十三品　净心行善分</a></li>
                    <div class="fhj_video" id="fhj_video1021"></div>
                    <li><a href="javascript:playvideo(1022);"> 第二十四品　福智无比分</a></li>
                    <div class="fhj_video" id="fhj_video1022"></div>
                    <li><a href="javascript:playvideo(1023);">第二十五品　化无所化分</a></li>
                    <div class="fhj_video" id="fhj_video1023"></div>
                    <li><a href="javascript:playvideo(1024);">第二十六品　法身非相分</a></li>
                    <div class="fhj_video" id="fhj_video1024"></div>
                    <li><a href="javascript:playvideo(1025);">第二十七品　无断无灭分　第二十八品　不受不贪分</a></li>
                    <div class="fhj_video" id="fhj_video1025"></div>
                    <li><a href="javascript:playvideo(1026);">第二十九品　威仪寂静分</a></li>
                    <div class="fhj_video" id="fhj_video1026"></div>
                    <li><a href="javascript:playvideo(1027);">第三十品　一合相理分</a></li>
                    <div class="fhj_video" id="fhj_video1027"></div>
                    <li><a href="javascript:playvideo(1028);">第三十一品　知见不生分</a></li>
                    <div class="fhj_video" id="fhj_video1028"></div>
                    <li><a href="javascript:playvideo(1029);">第三十二品　应化非真分</a></li>
                    <div class="fhj_video" id="fhj_video1029"></div>
                    <li><a href="javascript:playvideo(1030);">回顾</a></li>
                    <div class="fhj_video" id="fhj_video1030"></div>
                    <li><a href="javascript:playvideo(1031);">尾声</a></li>
                    <div class="fhj_video" id="fhj_video1031"></div>
                    <li><a href="javascript:playvideo(1032);">推荐视频　《十维空间》　《双缝干涉实验》</a></li>
                    <div class="fhj_video" id="fhj_video1032"></div>

                </ul>

            </div>
            <h3>内容分享</h3>
            <%@include file="/WEB-INF/jspf/mobile/weibo.jspf" %>
            <h3 id="lotus_sutra">金刚经原经文及白话释义<br /><span>目录</span></h3>
            <div id="content_box">
                <ul>
                    <c:forEach var="item" items="${diamonds}">
                        <li>${item.partIdentifier} <a href="/diamond/${item.originalId}">${item.title}</a>//<span><a href="/diamond/${item.vernacularId}">白话释义</a></span></li>
                        </c:forEach>
                </ul>
            </div>
        </div>
        <!--页脚部分 -->
        <%@include file="/WEB-INF/jspf/mobile/footer.jspf" %>
        <!--页脚部分结束 -->
    </body>
</html>
