<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <jsp:include page="/WEB-INF/jspf/title.jsp">
            <jsp:param name="id" value="${sutra.id}"/>
            <jsp:param name="title" value="${sutra.title}"/>
            <jsp:param name="partid" value="${sutra.partIdentifier}"/>
        </jsp:include>
        <%@include file="/WEB-INF/jspf/header.jspf" %>
        <script src="http://yjs.yidumen.com/yidumen/web/js/loadmore.js"></script>
    </head>

    <body>
        <!--web head width:990px -->
        <%@include file="/WEB-INF/jspf/nav.jspf" %>
        <!--/web head -->
        <!--web container width:990px-->
        <div id="container">
            <div id="General_left">
                <h1><a href="/lotus/list">${title}</a></h1>
                <div id="content_box">
                    <h3><span>${sutra.partIdentifier} &#8226;</span>${sutra.title}</h3>
                    <div class="article_box">
                        <!--ariticle text area  -->
                        ${sutra.content}
                        <!--ariticle text area  -->
                    </div>
                    <!--next/previous --> 
                    <dl id="next_prev">
                        <dd class="prev" ${prev == null ? 'style="visibility:hidden";' : ''}><a href="/lotus/${prev.id}"><span>上一课</span><br />${prev.title}</a></dd>
                        <dt><a href="/lotus/list">返回目录</a></dt>
                        <dd class="next" ${next == null ? 'style="visibility:hidden";' : ''}><a href="/lotus/${next.id}"><span>下一课</span><br />${next.title}</a></dd>
                    </dl>
                    <!--/next/previous -->
                </div>
            </div>
            <div id="General_right">
                <%@include file="/WEB-INF/jspf/lotus_audio.jspf" %>
                妙法莲华原经文<br />
                <select onchange="self.location.href = options[selectedIndex].value">
                    <option value="." selected="selected">妙法莲华经原经文</option>
                    <c:forEach var="item" items="${original}">
                        <option value="/lotus/${item.id}">妙法莲华经${item.title}${item.partIdentifier}</option>
                    </c:forEach>
                </select><br />
                妙法莲华经白话释义<br />
                <select onchange="self.location.href = options[selectedIndex].value">
                    <option value="." selected="selected">妙法莲华经白话释义</option>
                    <c:forEach var="item" items="${vernacular}">
                        <option value="/lotus/${item.id}">妙法莲华经${item.title}${item.partIdentifier}</option>
                    </c:forEach>
                </select><br /><br>
                <%@include file="/WEB-INF/jspf/weibo.jspf" %>
                <%@include file="/WEB-INF/jspf/exchange.jspf" %>
            </div>
        </div>
        <!-- -->

        <!--web footer width:100% -->
        <%@include file="/WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
