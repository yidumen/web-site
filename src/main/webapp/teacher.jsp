<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="keywords" content="杨宁,杨宁佛学,法界之心,杨宁微博,易度门">
        <meta name="description" content="关于杨宁老师，杨宁老师修证佛法之路 – 易度门">
        <meta name="viewport" content="width=1020" />
        <title>关于杨宁老师 修证佛法 – 易度门</title>
        <link href="/resources/web/css/style.css" rel="stylesheet">
        <link rel="stylesheet" href="/resources/web/js/video-js/video-js.min.css">
        <link rel="stylesheet" href="/resources/web/js/video-js/yidumen-player.css">
    </head>

    <body>
        <!--web head width:990px -->
        <%@include file="/WEB-INF/jspf/nav.jspf" %>
        <!--/web head -->

        <!--web container width:990px-->
        <div id="container" onclick="$('.yangning_weixinbox').fadeOut('fast');" style="margin-bottom:0em;">
            <h1>关于杨宁老师</h1>
            <div id="teacher">
                <p>二十年前，年轻、好奇、充满生活激情的她为了探寻“生命的奥秘”踏上了修证佛法之路。
                </p>
                <p>不断的禅修、闭关、朝山，一路走下来，遇到数不清的善缘相助和令人难以置信的奇遇，同时,也经历了种种因“我执”带来的坎坷磨难，生命曾一度徘徊在死亡的边缘……
                </p>
                <p>如今，所有能提起的往事都已融化在她“自以为折腾”的笑声里……有人问她：“在您的修行历程中，最值得与大家分享的心得是什么？”她说：“在修行路上，最有力的武器是慈悲。每一次当我濒临绝境时，都是慈悲心的瞬间流露拯救了我。整个法界中，慈悲无敌……”
                </p>
                <p><a style="text-decoration:none;" href=".">杨宁老师</a>现居于广东珠海，成立珠海玛雅文化传播有限公司,致力于中国传统文化的传播和弘扬,并以网络的形式重点介绍释迦牟尼佛的智慧。她认为，“佛法”是人类有记载的文明中，对“生命的奥秘和意义”诠释的最圆满最透彻的智慧。她希望借助网络，能与所有人分享她二十多年从中受益的点点滴滴。
                </p>
                <div class="yangning_weixinbox">
                    <div class="yangning_weixin">
                        <img src="/resources/web/images/qrcode_for_gh_cb255922b43b_258.jpg" width="86" height="86"/>易度门微信公众平台<br />请使用微信扫描左侧二维码添加，或直接在微信内搜索“易度门”公众帐号进行添加。    
                    </div>
                </div>
                <p>敬请大家持续关注我们，也请同时关注杨宁老师的新浪微博(<a href="http://www.weibo.com/yidumen" style="font-size:12px; font-family:Arial;">http://www.weibo.com/yidumen</a>)和微信公众平台（<a href="javascript:void(0);" onmouseover="$('.yangning_weixinbox').fadeIn('fast');">易度门</a>）。

                </p>
            </div>
            <div id="teacher_weibo_share">
                <iframe width="355" height="550" class="share_self"  frameborder="0" scrolling="no" src="http://widget.weibo.com/weiboshow/index.php?language=&width=355&height=550&fansRow=1&ptype=1&speed=0&skin=1&isTitle=1&noborder=1&isWeibo=1&isFans=0&uid=2478751807&verifier=4423f2b2&dpc=1"></iframe>
            </div>

        </div>
        <div id="video_box_large" style="width:990px; height:441px;margin-bottom:3em;margin-top:0em;margin-left: auto;margin-right: auto">
            <video id="video-player" style="float: left"
                   class="video-js vjs-default-skin vjs-big-play-centered"
                   poster="/resources/web/images/bg_video.png">
                您正在使用的浏览器无法播放本视频，请您升级浏览器后，继续访问网站。
            </video>
            <ul id="listbar" style="width:206px; float:right"></ul>
        </div>

        <!--web footer width:100% -->
        <%@include file="/WEB-INF/jspf/footer.jspf" %>
        <script src="/resources/web/js/yidumen_jquery.js"></script>
        <script src="/resources/web/js/jquery.corner.js" ></script>
        <script src="/resources/web/js/corner.js" ></script>
        <script src="/resources/web/js/video-js/video.js"></script>
        <script src="/resources/web/js/video-js/yidumen-player.js"></script>
        <!--/web footer -->
        <script>
                    playlist = [
                        {file: "W0001", title: "微博集合（一）"},
                        {file: "W0002", title: "微博集合（二）"},
                        {file: "W0003", title: "微博集合（三）"},
                        {file: "W0004", title: "微博集合（四）"},
                        {file: "W0005", title: "微博集合（五）"},
                        {file: "W0006", title: "微博集合（六）"},
                        {file: "W0007", title: "微博集合（七）"},
                        {file: "W0008", title: "微博集合（八）"}
                        {file: "W0009", title: "微博集合（九）"}
                        {file: "W0010", title: "微博集合（十）"}
                        {file: "W0011", title: "微博集合（十一）"}
                    ];
                    var vjs = videojs("video-player", {
                        "controls": true,
                        "autoplay": true,
                        "width": "784",
                        "height": "100%",
                        plugins: {
                            ydmPlayer: playlist
                        }
                    });
        </script>
    </body>
</html>
