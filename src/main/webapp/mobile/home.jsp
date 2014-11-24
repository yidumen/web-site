<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="/WEB-INF/jspf/mobile/header.jspf" %>
        <title>易度门</title>
    </head>

    <body>
        <!--头 -->
        <%@include file="/WEB-INF/jspf/mobile/nav.jspf" %>
        <!--头结束 --> 
        <div id="main_container">
            <h3><a href="life_purpose.jsp">你准备用“这一生”做什么？</a></h3>
            <!--杨宁老师微博 -->
            <a href="/yangning.jsp">
                <div id="teacher_area">
                    <div id="teacher_area_imgbox"><img alt="teacher" src="http://yimg.yidumen.com/yidumen/mobile/images/yangning.jpg" /></div>
                    <div id="teacher_area_txt">
                        关于杨宁老师<br />
                        <span>二十年前，年轻、好奇、充满生活激情的她为了探寻“生命的奥秘”踏上了修证佛法之路。</span> <span class="blue">点击查看</span>
                    </div>
                </div>
            </a>
            <!--/杨宁老师微博 -->
            <h3>妙法莲华</h3>
            <div id="index_list">
                <a href="/lotus/list">妙法莲华经概述</a> <span class="video_label">&nbsp;</span><br />
                <a href="/lotus/1995">《妙法莲华经》在说什么？《妙法莲华经》在佛法中的地位和价值</a><br />
                <a href="/lotus/2054">《妙法莲华经》对现代众生的意义</a><br/>
                <a href="/lotus/list#lotus_sutra">原文及现代白话释义</a>
            </div>
            <h3>佛法</h3>
            <div id="index_list">
                <a href="/buddhism/1937">信仰佛教、学习佛法与修证佛法的区别</a> <span class="video_label">&nbsp;</span><br />
                <a href="/buddhism/1936">修证佛法</a> <span class="video_label">&nbsp;</span><br/>
                <a href="/buddhism/1935">学习佛法</a><br/>
                <a href="/buddhism/1934">了解佛教</a>
            </div>
            <h3>视频</h3>
            <div id="index_list">
                <c:forEach var="video" items="${videos}">
                    <a href="/video/${video.file}">${video.title}</a> <span class="video_label">&nbsp;</span><br/>
                </c:forEach>
                <a href="/video/list">所有视频列表</a> <span class="video_label">&nbsp;</span><br/>
            </div>
            <h3>结缘</h3>
            <div id="index_list">
                <a href="/heart_of_dharma_realm/list">小说《法界之心》</a><br/>
                <a href="/awaken_journey/list">科幻故事《星路》</a><br/>
                <a href="/goods#music">静坐音乐免费下载</a>
            </div>
        </div>
        <!--页脚部分 -->
        <%@include file="/WEB-INF/jspf/mobile/footer.jspf" %>
        <!--页脚部分结束 -->
    </body>
</html>

