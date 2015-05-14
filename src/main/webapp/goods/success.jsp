<%@page contentType="text/html" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>易度门</title>
        <%@include file="/WEB-INF/jspf/header.jspf" %>
    </head>

    <body>
        <!--web head width:990px -->
        <%@include file="/WEB-INF/jspf/nav.jspf" %>
        <!--/web head -->

        <!--web container width:990px-->
        <div id="container">
            <div id="notification_box">
                <span class="notification_goods"></span>
                <div class="notification_right_box">
                    您好，您输入的邮寄地址及联系方式如下：<br /><br />
                    联系人：${name}<br />
                    收件地址：${address}<br />
                    联系电话：${telphone}<br /><Br />
                    我们将电话与您确认后，再发送快递给您，请您耐心等待，谢谢。<br /><br />
                    <div id="totalSecond_box">
                        <span id="totalSecond">15</span>秒后将转入结缘页面
                    </div> 
                    <script>var reurl = "/goods/";</script>
                    <script src="/resources/web/js/count.js"></script>
                </div>
            </div>
        </div>
        <!-- web container width:990px-->

        <!--web footer width:100% -->
        <%@include file="/WEB-INF/jspf/footer.jspf" %>

    </body>
</html>
