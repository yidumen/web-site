<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>聊天室 - 易度门</title>
    <%@include file="/WEB-INF/jspf/mobile/header.jspf" %>
</head>
<body>
<!--头 -->


<%@include file="/WEB-INF/jspf/mobile/nav.jspf" %>
<!--头结束 -->
<div id="main_container">

    <h3 id="video-title"></h3>

    <div id="video_box">
        <video id="video-player" controls="controls" style="width: 100%"></video>
        <ul id="video-switcher"></ul>
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

    <div id="dhama" class="list"></div>
    <h3>杨宁老师佛学视频列表</h3>

    <div class="content_box"><ul id="video-list"></ul></div>
</div>


<!--页脚部分 -->
<%@include file="/WEB-INF/jspf/mobile/footer.jspf" %>
<!--页脚部分结束 -->
</body>
</html>
