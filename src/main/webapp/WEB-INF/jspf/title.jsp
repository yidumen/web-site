<%-- 
    Document   : title
    Created on : 2013-3-11, 17:36:02
    Author     : liuchao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String partid = request.getParameter("partid");
    String title = request.getParameter("title");
    String id = request.getParameter("id");
    String keywords = "";
    String description = "";
    if (id.equals("1995")) {
        title = "妙法莲华经在说什么？妙法莲华经在佛法中的地位和价值 – 妙法莲华经 - 易度门";
        keywords = "妙法莲华经价值,妙法莲华经地位,妙法莲华经,妙法莲华与佛法,佛法,杨宁,易度门";
        description = "妙法莲华经在说什么？妙法莲华经在佛法中的地位和价值 – 易度门";
    } else if (id.equals("2054")) {
        title = "妙法莲华经对现代众生的意义 – 妙法莲华经 – 易度门";
        keywords = "妙法莲华经意义,妙法莲华经,妙法莲华经原经文,佛法,杨宁,易度门";
        description = "妙法莲华经对现代众生的意义 – 妙法莲华经 – 易度门";
    } else {
        title = "易度门 - " + title;
        keywords = title.replaceAll("\\-", ",") +",妙法莲华经意义,妙法莲华经,妙法莲华经原经文,佛法,杨宁,易度门";
        description = title+" – 妙法莲华经 – 易度门";
    }
%>
<title><%=title%></title>
<meta name="keywords" content="<%=keywords%>" />
<meta name="description" content="<%=description%>" />    
