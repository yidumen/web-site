<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>${video.title} - 易度门</title>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=2.0">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <link rel="shortcut icon" type="image/x-icon" href="http://yimg.yidumen.com/yidumen/web/images/favicon.ico">
        <link rel="apple-touch-startup-image" type="image/x-icon" href="http://yimg.yidumen.com/yidumen/mobile/images/apple-touch-icon.png">
        <link rel="apple-touch-icon-precomposed" href="http://yimg.yidumen.com/yidumen/mobile/images/apple-touch-icon.png">
        <link href="http://ycss.yidumen.com/yidumen/mobile/css/wap.css" rel="stylesheet" type="text/css">
    <div id='wx_pic' style='margin:0 auto;display:none;'>
        <img alt="wechat" src="http://yimg.yidumen.com/yidumen/mobile/images/logo_300x300.jpg" />
    </div>
</head>
<body>
    <!--头 -->  



    <div id="header"> 
        <div class="header"><a href="/"><img alt="logo" src="http://yimg.yidumen.com/yidumen/mobile/images/logo.png"/></a></div>
    </div>
    <div style="width:100%; background-color:#fdf2d9">  
        <div id="nav_bar">
            <a style=" width:23%" href="/lotus/list">法莲华</a> 
            <a style=" width:23%" href="/diamond/list">金刚经</a> 
            <a style=" width:15%"  href="/buddhism/list">佛法</a>
            <a style=" width:24%" href="/video/list"><span class="current">聊天室</span></a> 
            <a style=" width:15%" href="/goods">结缘</a>
            <div style="clear:both"></div>
        </div>
    </div>
    <!--头结束 --> 
    <div id="main_container">

        <h3><%=video.getTitle()%></h3>
        <div id="video_box">
            <video src="http://v3.yidumen.com/video/360/<%=video.getFile()%>_360.mp4" controls="controls" width="100%" loop="loop">对不起，您的浏览器不支持视频播放，请更新您的浏览器或使用谷歌浏览器。</video>
            <ul>
                <li><a href="http://v3.yidumen.com/video/720/<%=video.getFile()%>_720.mp4">超清</a></li> 
                <li><a href="http://v3.yidumen.com/video/480/<%=video.getFile()%>_480.mp4">高清</a></li> 
                <li id="active">标清</li>
                <li><a href="http://v3.yidumen.com/video/180/<%=video.getFile()%>_180.mp4">流畅</a></li> 
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
            <a href="javascript:;" class="tmblog" id="share_btn_qq" style="font-size:12px; "> <img src="http://mat1.gtimg.com/app/opent/images/websites/share/weiboicon16.png" border="0" alt="" valign="middle" style="vertical-align:middle; margin-top:-.5em"></a>

            <script type="text/javascript" src="http://mat1.gtimg.com/app/opent/js/qshare_min.js"></script>
            <script type="text/javascript">
                _share_tencent_weibo({
                    "appkey": "801088474"	/*你从腾讯微博开放平台获得的appkey*/
                    , "btn": document.getElementById("share_btn_qq")	/*一键转播按钮*/
                    , "qshareable": false	/*不绑定Q-Share功能*/
                    , "assname": "yidumen"	/*转播后收听的微博帐号*/
                });
            </script>
            <span >腾讯微博</span>
        </div>		
        <h3>杨宁老师佛学视频列表</h3>
        <div id="content_box">
            <ul>
                <%
                    int i = 0;
                    for (Video video2 : videos) {

                        if (video2.getId() == 706) {
                            continue;
                        }
                        i++;
                %>
                <li class="video_list"><span class="video_list_span" style="font-size:medium"><%=video2.getFile()%></span>
                    <a href="/video/<%=video2.getId()%>">
                        <%
                            char[] numquerys = {'０', '１', '２', '３', '４', '５', '６', '７', '８', '９'};
                            String vtitle = video2.getTitle();
                            String[] st = vtitle.split("　");
                            String num = st[st.length - 1];
                            for (int j = 0, c = st.length - 1; j < c; j++) {
                                out.print(st[j] + "　");
                            }
                            char[] numchars = num.toCharArray();
                            StringBuilder viewValue = new StringBuilder();
                            for (char numchar : numchars) {
                                for (int j = 0, c = numquerys.length; j < c; j++) {
                                    char numquery = numquerys[j];
                                    if (numchar == numquery) {
                                        viewValue.append(j);
                                    }
                                }
                            }
                        %>
                    </a>
                    <span style="background:#dcfe7f;font-size:10px;color:#454545;border-radius:5px;">
                        <%= viewValue.toString()%>
                    </span>
                    <%
                        if (i < 6) {
                            out.println("<span class=\"video_choice\" style='background:#FFB6C1;color:#fff;'>荐</span>");
                        }
                    %>
                </li>




                <%}%>
            </ul>
        </div>
    </div>



    <!--页脚部分 -->
    <div id="footer">
        <ul style="float:right;">
            <li><a href="/change.jsp">浏览桌面版</a></li>
            <li style="display:none;">
                <script type="text/javascript">
                    var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
                    document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Fed028b77688b9c6904e3500943f7c719' type='text/javascript'%3E%3C/script%3E"));
                </script>
                <script type="text/javascript">


                    var _gaq = _gaq || [];
                    _gaq.push(['_setAccount', 'UA-32474326-1']);
                    _gaq.push(['_setDomainName', 'yidumen.com']);
                    _gaq.push(['_trackPageview']);


                    (function () {
                        var ga = document.createElement('script');
                        ga.type = 'text/javascript';
                        ga.async = true;
                        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                        var s = document.getElementsByTagName('script')[0];
                        s.parentNode.insertBefore(ga, s);
                    })();
                </script>



            </li>
        </ul>
        <ul>
            <li><a href="http://m.yidumen.com">易度门手机版</a></li>
            <li><a href="http://m.yidumen.com/">返回首页</a></li>
            <li><a href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=3bG0vLOltJ2ktLmosLiz876ysA">联系我们</a></li>
        </ul>
    </div>
    <!--页脚部分结束 -->
    <script type="text/javascript" src="http://apps.bdimg.com/libs/jquery/2.1.1/jquery.min.js" ></script>
    <script type="text/javascript" src="http://yjs.yidumen.com/yidumen/web/mobile/js/jquery.corner.js" ></script>
    <script type="text/javascript" src="http://yjs.yidumen.com/yidumen/web/mobile/js/corner.js" ></script>
    <script type="text/javascript" src="http://yjs.yidumen.com/yidumen/web/mobile/js/baseCookie.js" ></script>
    <script>
                    $(document).ready(
                            function ()
                            {

                                var windowheight = $(window).height();
                                var bodyheight = $(document.body).outerHeight(true);
                                var footerheight = $("#footer").height();
                                var imgheight = $("#bigimg").height();
                                if (bodyheight < windowheight)
                                {
                                    if (imgheight === 0)
                                    {
                                        $("#main_container").height("auto");
                                    }
                                    else {
                                        var abc = windowheight - bodyheight;
                                        var cba = $("#main_container").height();
                                        var ab = abc + cba;
                                        $(document.body).height(windowheight);
                                        $("#main_container").height(ab);
                                        $("#page_area").css({"margin-top": abc, "height": "auto", "overflow": "auto"});
                                    }
                                }


                            }
                    );
    </script>
</body>
</html>
