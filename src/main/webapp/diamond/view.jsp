<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>易度门-${sutra.title}</title>
        <%@include file="/WEB-INF/jspf/header.jspf" %>
    </head>
    <body>
        <!--web head width:990px -->
        <%@include file="/WEB-INF/jspf/nav.jspf" %>
        <!--/web head -->
        <!--web container width:990px-->
        <div id="container">
            <div id="General_left">
                <h1>金刚经原经文及释义</h1>
                <div id="content_box">
                    <h3><span>${sutra.partIdentifier} &#8226;</span>${sutra.title}</h3>
                    <div class="article_box" id="article_box">
                        <!--ariticle text area  -->
                        ${sutra.content}
                        <!--ariticle text area  -->
                    </div>
                    <!--next/previous --> 
                    <dl id="next_prev">
                        <dd class="prev" ${prev == null ? 'style="visibility:hidden";' : ''}><a href="/diamond/${prev.id}"><span>上一课</span><br />${prev.title}</a></dd>
                        <dt><a href="/diamond/list">返回目录</a></dt>
                        <dd class="next" ${next == null ? 'style="visibility:hidden";' : ''}><a href="/diamond/${next.id}"><span>下一课</span><br />${next.title}</a></dd>
                    </dl>
                    <!--/next/previous -->
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
    </body>
</html>
