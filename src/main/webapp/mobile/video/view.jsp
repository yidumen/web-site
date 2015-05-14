<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>${video.title} - 易度门</title>
    <%@include file="/WEB-INF/jspf/mobile/header.jspf" %>
</head>
<body>
<!--头 -->


<%@include file="/WEB-INF/jspf/mobile/nav.jspf" %>
<!--头结束 -->
<div id="main_container">

    <h3>${video.title}</h3>

    <div id="video_box">
        <video src="http://v3.yidumen.com/video/360/${video.file}_360.mp4" controls="controls" style="width: 100%">对不起，您的浏览器不支持视频播放，请更新您的浏览器或使用谷歌浏览器。</video>
        <ul>
            <li><a href="http://v3.yidumen.com/video/720/${video.file}_720.mp4">超清</a></li>
            <li><a href="http://v3.yidumen.com/video/480/${video.file}_480.mp4">高清</a></li>
            <li id="active">标清</li>
            <li><a href="http://v3.yidumen.com/video/180/${video.file}_180.mp4">流畅</a></li>
        </ul>
    </div>
    <h3>内容分享</h3>

    <div class="mobile_share">
        <!--新浪微博 -->
        <div class="sina_share">
            <script type="text/javascript" src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js?appkey=914263201" charset="utf-8"></script>
            <wb:share-button count="n" appkey="914263201" relateuid="2478751807"></wb:share-button>
        </div>
        <span style="margin:0em 2em 0em -2.8em;">新浪微博</span>
        <!--腾讯微博 -->
        <a href="javascript:;" class="tmblog" id="share_btn_qq" style="font-size:12px; "> <img src="http://mat1.gtimg.com/app/opent/images/websites/share/weiboicon16.png" border="0" alt=""
                                                                                               style="vertical-align:middle; margin-top:-.5em"></a>

        <script type="text/javascript" src="http://mat1.gtimg.com/app/opent/js/qshare_min.js"></script>
        <script type="text/javascript">
            _share_tencent_weibo({
                "appkey": "801088474"    /*你从腾讯微博开放平台获得的appkey*/
                , "btn": document.getElementById("share_btn_qq")    /*一键转播按钮*/
                , "qshareable": false    /*不绑定Q-Share功能*/
                , "assname": "yidumen"    /*转播后收听的微博帐号*/
            });
        </script>
        <span>腾讯微博</span>
    </div>
    <h3>杨宁老师开示摘录</h3>

    <div class="list">
        <c:forEach var="item" items="${extract}">
            <div class="list-item"><a href="/video/${item.file}">${item.title}</a></div>
        </c:forEach>
        <div class="clear"></div>
    </div>
    <h3>杨宁老师佛学视频列表</h3>

    <div class="content_box">
        <ul>
            <c:forEach var="item" items="${recommend}">
                <li>${item.file} <a href="/video/${item.file}">${item.title}</a><span style="background:#dcfe7f;font-size:10px;color:#454545;border-radius:5px;">${item.sort}</span><span
                        class="video_choice" style='background:#FFB6C1;color:#fff;'>荐</span></li>
            </c:forEach>
            <c:forEach var="item" items="${videos}">
                <li>${item.file} <a href="/video/${item.file}">${item.title}</a><span style="background:#dcfe7f;font-size:10px;color:#454545;border-radius:5px;">${item.sort}</span></li>
            </c:forEach>
        </ul>
    </div>
</div>


<!--页脚部分 -->
<%@include file="/WEB-INF/jspf/mobile/footer.jspf" %>
<!--页脚部分结束 -->
<script type="text/javascript" src="http://apps.bdimg.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript" src="/resources/web/mobile/js/jquery.corner.js"></script>
<script type="text/javascript" src="/resources/web/mobile/js/corner.js"></script>
<script type="text/javascript" src="/resources/web/mobile/js/baseCookie.js"></script>
</body>
</html>
