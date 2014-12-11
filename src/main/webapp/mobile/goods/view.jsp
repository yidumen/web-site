<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>易度门-${title}</title>
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
        <div id="main_container">
            <div id="content_box">
                <h3><span>${buddhism.partIdentifier} &#8226; </span>${buddhism.title}</h3>
                ${buddhism.content}
            </div>
            <c:if test="${pageCount > 1}">
                <div id="loading_area1" class="loading_area"></div>
                <div id="loading_button1" class="loading_button"><a href="javascript:;" style="color:#999">点击继续查看 (1/${pageCount})</a></div>
                <script type="text/javascript" language="javascript" >
                    var id = ${buddhism.id};
                    var pagenum = 1;
                    var url = "/buddhism/loadmore/";
                    var pagecount = ${pageCount};
                </script>
                <script type="text/javascript" language="javascript" src="/resources/mobile/js/loadmore.js"></script>
            </c:if>
            <h3>内容分享</h3>
            <%@include file="/WEB-INF/jspf/mobile/weibo.jspf" %>
            <div class="clear"></div>
            <c:if test="${prev != null || next != null}">
                <div id="page_area">
                    <c:if test="${prev != null}">
                        <div id="page_pre">
                            上一篇<br />
                            <a href="/${path}/${prev.id}">${prev.title}</a>
                        </div>
                    </c:if>
                    <c:if test="${next != null}">
                        <div id="page_next">
                            下一篇<br />
                            <a href="/${path}/${next.id}">${next.title}</a>
                        </div>
                    </c:if>
                </div>
            </c:if>
        </div>

        <!--页脚部分 -->
        <%@include file="/WEB-INF/jspf/mobile/footer.jspf" %>
        <!--页脚部分结束 -->
    </body>
</html>
