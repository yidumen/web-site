<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="wilih=device-wilih, minimum-scale=1.0, maximum-scale=2.0">
    <title>易度门</title>
    <%@include file="/WEB-INF/jspf/mobile/header.jspf" %>
</head>

<body>
<!--头 -->
<%@include file="/WEB-INF/jspf/mobile/nav.jspf" %>
<!--头结束 -->
<div id="main_container">
    <div id="content_box">
        <h3>小说《法界之心》结缘赠阅<br/><span>书籍赠阅</span></h3>

        <div id="goods_txt">
            <ul class="success">
                <li>收件人姓名：</li>
                <li>${name}</li>
                <li>联系电话：</li>
                <li>${telphone}</li>
                <li>收件地址：</li>
                <li>${address}</li>
            </ul>
            <ul style="clear:both;">
                <li>我们将在二十四小时内进行递送，根据地区不同，可能需要1～3天的时间到达您所在的城市，请您耐心等待，谢谢。<br/>
                    如果疑问，欢迎联系我们：<a target="_blank" href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=3bG0vLOltJ2ktLmosLiz876ysA">lianxi@yidumen.com</a>。<br/></li>
            </ul>
        </div>
    </div>

</div>
<!--页脚部分 -->
<%@include file="/WEB-INF/jspf/mobile/footer.jspf" %>
<!--页脚部分结束 -->
</body>
</html>
