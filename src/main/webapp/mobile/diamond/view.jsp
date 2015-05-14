<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>易度门-${sutra.title}</title>
        <%@include file="/WEB-INF/jspf/mobile/header.jspf" %>
        <script type="text/javascript">
            function setVideoFormat(format) {
                SetCookie("videoformat", format);
                document.location.reload();
            }
        </script>

    </head>

    <body>
        <!--头 -->  
        <%@include file="/WEB-INF/jspf/mobile/nav.jspf" %>
        <!--头结束--> 
        <div id="main_container">
            <div id="content_box">
                <h3>${sutra.partIdentifier} • ${sutra.title}</h3>
                ${sutra.content}
            </div>
            <h3>内容分享</h3>
            <%@include file="/WEB-INF/jspf/mobile/weibo.jspf" %>
            <c:if test="${prev != null || next != null}">
                <div id="page_area">
                    <c:if test="${prev != null}">
                    <ul id="page_pre">
                        <li>上一篇</li>
                        <li><a href="/diamond/${prev.id}">${prev.title}</a></li>
                    </ul>
                    </c:if>
                    <c:if test="${next != null}">
                    <ul id="page_next">
                        <li>下一篇</li>
                        <li><a href="/diamond/${next.id}">${next.title}</a></li>
                    </ul>
                    </c:if>
                </div>
            </c:if>
        </div>

        <!--页脚部分 -->
        <jsp:include page="footer.jsp"/>
        <!--页脚部分结束 -->
    </body>
</html>
