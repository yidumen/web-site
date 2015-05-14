<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>易度门-${buddhism.title}</title>
        <%@include file="/WEB-INF/jspf/mobile/header.jspf" %>
    </head>
    <body>
        <!--头 -->  
        <%@include file="/WEB-INF/jspf/mobile/nav.jspf" %>
        <!--头结束 --> 
        <div id="main_container">
            <div id="content_box">
                <h3>${title}<br /><span>${sutra.partIdentifier} • ${sutra.title}</span></h3>
                ${sutra.content}
            </div>
            <h3>内容分享</h3>
            <%@include file="/WEB-INF/jspf/mobile/weibo.jspf" %>
            <c:if test="${prev != null || next != null}">
                <div id="page_area">
                    <c:if test="${prev != null}">
                    <ul id="page_pre">
                        <li>上一篇</li>
                        <li><a href="/lotus/${prev.id}">${prev.title}</a></li>
                    </ul>
                    </c:if>
                    <c:if test="${next != null}">
                    <ul id="page_next">
                        <li>下一篇</li>
                        <li><a href="/lotus/${next.id}">${next.title}</a></li>
                    </ul>
                    </c:if>
                </div>
            </c:if>
        </div>
        <!--页脚部分 -->
        <%@include file="/WEB-INF/jspf/mobile/footer.jspf" %>
        <!--页脚部分结束 -->
    </body>
</html>
