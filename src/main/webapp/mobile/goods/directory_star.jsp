<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            h3>星路<br /><span>目录</span></h3>
            <p>接受使命</p>
            <p>
                在遥远的银河系中央，有一颗星球，这儿的生命都是光化身，他们神通很大，可以像佛教中的观世音菩萨一样，个个随心念所想，变出千手千眼。有一个国王统治着整个星球，他的名字叫多宝如意王，他有一个女儿，叫大悲。
            </p>
                <h3>内容分享</h3>
                <%@include file="/WEB-INF/jspf/mobile/weibo.jspf" %>
                <ul id="heart_part1_list">
                    <c:forEach var="buddhism" items="${buddhisms}">
                        <c:choose>
                            <c:when test="${buddhism.content != null}">
                                <li><a href="/${path}/${buddhism.id}">${buddhism.partIdentifier} ${buddhism.title}</a></li>
                                </c:when>
                                <c:otherwise>
                                <li>${buddhism.partIdentifier} ${buddhism.title}</li>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                </ul>
            </div>
        </div>
        <!--页脚部分 -->
        <%@include file="/WEB-INF/jspf/mobile/footer.jspf" %>
        <!--页脚部分结束 -->
    </body>
</html>
