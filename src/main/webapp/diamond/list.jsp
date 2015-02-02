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
                <div style="margin-top: 25px;margin-left: 10px">
                    <dl style="font-size: 14px; color: #666">
                        <dt>《金刚经》讲义</dt>
                        <dd>
                            <ul>
                                <c:forEach var="item" items="${notes}">
                                    <li style="margin-top: 25px; display: inline-block; min-width: 40%;padding-left: 10px"><a style="" href="/diamond/${item.id}">${item.title}</a></li>
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
        <script type="text/javascript" src="/resources/web/js/video-js/video.js"></script>
        <script type="text/javascript" src="/resources/web/js/video-js/lang/zh.js"></script>
        <script type="text/javascript" src="/resources/web/js/video-js/yidumen-player.js"></script>
        <script type="text/javascript" src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js?appkey=914263201" charset="utf-8"></script>
        <script>
            playlist = [{
                    file:
                            "F1001",
                    title: "前言"
                }, {
                    file: "F1002",
                    title: "经题"
                }, {
                    file: "F1003",
                    title: "第一品　法会因由分"
                }, {
                    file: "F1004",
                    title: "第二品　善现启请分"
                }, {
                    file: "F1005",
                    title: "第三品　大乘正宗分"
                }, {
                    file: "F1006",
                    title: "第四品　妙行无住分"
                }, {
                    file:
                            "F1007",
                    title: "第五品　如理实见分"
                }, {
                    file: "F1008",
                    title: "第六品　正信希有分"
                }, {
                    file:
                            "F1009",
                    title: "第七品　无得无说分"
                }, {
                    file:
                            "F1010",
                    title: "第八品　依法出生分"
                }, {
                    file:
                            "F1011",
                    title: "第九品　一相无相分"
                }, {
                    file:
                            "F1012",
                    title: "第十品　庄严净土分"
                }, {
                    file:
                            "F1013",
                    title: "第十一品　无为福胜分　第十二品　尊重正教分"
                }, {
                    file:
                            "F1014",
                    title: "第十三品　如法受持分"
                }, {
                    file:
                            "F1015",
                    title: "第十四品　离相寂灭分　第十五品　持经功德分　第十六品　能净业障分"
                }, {
                    file:
                            "F1016",
                    title: "第十七品　究竟无我分"
                }, {
                    file:
                            "F1017",
                    title: "第十八品　一体同观分"
                }, {
                    file:
                            "F1018",
                    title: "第十九品　法界通化分"
                }, {
                    file:
                            "F1019",
                    title: "第二十品　离色离相分"
                }, {
                    file:
                            "F1020",
                    title: "第二十一品　非说所说分"
                }, {
                    file:
                            "F1021",
                    title: "第二十二品　无法可得分　第二十三品　净心行善分"
                }, {
                    file:
                            "F1022",
                    title: "第二十四品　福智无比分"
                }, {
                    file:
                            "F1023",
                    title: "第二十五品　化无所化分"
                }, {
                    file:
                            "F1024",
                    title: "第二十六品　法身非相分"
                }, {
                    file:
                            "F1025",
                    title: "第二十七品　无断无灭分　第二十八品　不受不贪分"
                }, {
                    file:
                            "F1026",
                    title: "第二十九品　威仪寂静分"
                }, {
                    file:
                            "F1027",
                    title: "第三十品　一合相理分"
                }, {
                    file:
                            "F1028",
                    title: "第三十一品　知见不生分"
                }, {
                    file:
                            "F1029",
                    title: "第三十二品　应化非真分"
                }, {
                    file:
                            "F1030",
                    title: "回顾"
                }, {
                    file:
                            "F1031",
                    title: "尾声"
                }, {
                    file:
                            "F1032",
                    title: "推荐视频　《十维空间》　《双缝干涉实验》"
                }];
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
