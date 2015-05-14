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
            <h3>法界之心<br /><span>目录</span></h3>
            <div id="content_box">
                <div id="goods_txt">
                    序言
                    <p>
                        一切众生皆具如来智慧德相，皆因分别执着不能证得。这是法身佛的智慧，这种智慧即法界之心。
                    </p>
                    <p style="text-align:right">
                        作者<br />
                        二零零八年五月二十日
                    </p>
                </div>
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
