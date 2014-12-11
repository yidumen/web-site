<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>${title}-易度门</title>
        <%@include file="/WEB-INF/jspf/mobile/header.jspf" %>
    </head>

    <body>
        <!--头 -->
        <%@include file="/WEB-INF/jspf/mobile/nav.jspf" %>
        <!--头结束 -->
        <div id="main_container">
            <h1>${title}目录</h1>
            <div id="list_box">
                <c:forEach var="buddhism" items="${buddhisms}">
                    <c:choose>
                        <c:when test="${buddhism.content != null}">
                            <p><a href="/buddhism/${path}/${buddhism.id}">${buddhism.partIdentifier} ${buddhism.title}</a></p>
                        </c:when>
                        <c:otherwise>
                            <p>${buddhism.partIdentifier} ${buddhism.title}</p>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
            </div>
            <h3>内容分享</h3>
            <%@include file="/WEB-INF/jspf/mobile/weibo.jspf" %>
        </div>
        <!--页脚部分 -->
        <%@include file="/WEB-INF/jspf/mobile/footer.jspf" %>
        <!--页脚部分结束 -->
    </body>
</html>
