<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>星路 - 易度门</title>
        <meta name="keywords" content="星路" />
        <meta name="description" content="星路" />
        <%@include file="/WEB-INF/jspf/header.jspf" %>
    </head>
    <body>
        <!--web head width:990px -->
        <%@include file="/WEB-INF/jspf/nav.jspf" %>
        <!--/web head -->
        <!--web container width:990px-->
        <div id="container">
            <div id="General_left">
                <h1>${title}目录</h1>
                <div id="list_box">
                    <c:forEach var="buddhism" items="${buddhisms}">
                        <c:choose>
                            <c:when test="${buddhism.content != null}">
                                <p><a href="/${path}/${buddhism.id}">${buddhism.partIdentifier} ${buddhism.title}</a></p>
                            </c:when>
                            <c:otherwise>
                                <p>${buddhism.partIdentifier} ${buddhism.title}</p>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                </div>
            </div>
            <div id="General_right">
                <dl class="r_download">
                    <dt>全文下载</dt>
                    <dd><a href="http://v3.yidumen.com/doc/${title}.pdf">PDF格式</a></dd>
                    <dd><a href="http://v3.yidumen.com/doc/${title}.rtf">RTF格式</a></dd>
                </dl>
                <%@include file="/WEB-INF/jspf/exchange.jspf" %>
            </div>
        </div>
        <!-- -->
        <!--web footer width:100% -->
        <%@include file="/WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
