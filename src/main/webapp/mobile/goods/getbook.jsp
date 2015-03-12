<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=2.0" />
        <title>易度门</title>
        <%@include file="/WEB-INF/jspf/mobile/header.jspf" %>
    </head>

    <body>
        <!--头 -->
        <%@include file="/WEB-INF/jspf/mobile/nav.jspf" %>
        <!--头结束 --> 
        <div id="main_container">
            <div id="content_box">
                <h3>小说《法界之心》结缘赠阅<br /><span>书籍赠阅</span></h3>
                <div id="goods_txt">
                    <form action="/goods/getbook/process" method="post">
                        <ul>
                            <li>请正确填写邮寄信息，我们将在三个工作日之内进行快递送件。</li>
                            <li>收件人姓名：<input type="text" name="name" style="width:12em" /></li>
                            <li>联系电话：<input name="telphone" type="text" /></li>
                            <li>收件地址：<input name="address" type="text"/></li>
                            <li><input type="image" src="/resources/web/images/submit.png" style="float:right; width:auto; margin:.9em;" /></li>
                            <li><br/><br/>1、免费结缘品数量有限，本次共有一百本。<br/>
                                2、我们将优先选用顺丰快递发送本书，您尚需要支付相关运费，运费采用到付形式。<br/>（广东省内13元，省外22元）<br/>
                                3、如有任何疑问，欢迎联系我们：<a target="_blank" href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=3bG0vLOltJ2ktLmosLiz876ysA">lianxi@yidumen.com</a>。</li>
                        </ul>
                    </form>
                </div>
            </div>

        </div>
        <!--页脚部分 -->
        <%@include file="/WEB-INF/jspf/mobile/footer.jspf" %>
        <!--页脚部分结束 -->
    </body>
</html>
