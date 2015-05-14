<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">
<html  xmlns:wb=“http://open.weibo.com/wb”>
<head>
<link rel="shortcut icon" href="/resources/web/images/favicon.ico"></link>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=2.0" />
<title>易度门</title>
    <link href="/resources/css/wap.css" rel="stylesheet" type="text/css"/>
<script language="javascript" type="text/javascript" src="/resources/mobile/js/jquery-1.7.2.js" ></script>
<script language="javascript" type="text/javascript" src="/resources/mobile/js/jquery.corner.js" ></script>
<script language="javascript" type="text/javascript" src="/resources/mobile/js/corner.js" ></script>
<script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js" type="text/javascript" charset="utf-8"></script>
<script src="/resources/mobile/js/video.js"></script>
<script type="text/javascript">
		function setVideoFormat(format){
		    SetCookie("videoformat",format);
		    document.location.reload();
		}
		function playvideo(file){
			var abc=$("#video_box").html();		
			var fhj_video = document.getElementById('fhj_video'+file);
			$(".fhj_video").html("");
			fhj_video.innerHTML = "<div id='video_box'>"+abc+"</div>";

			var myVideo = document.getElementsByTagName('video')[0];
			myVideo.src = "http://v3.yidumen.com/video/360/W"+file+"_360.mp4";
			myVideo.play();
		}
		</script>

</head>

<body>
<%@include file="/WEB-INF/jspf/mobile/nav.jspf" %>
<div id="main_container">
  <h3>关于杨宁老师</h3>
  <div id="content_box">
<!--内容部分 -->
<ul id="pic_list">
<li><img src="/resources/mobile/images/yangning.jpg" style="width:6.5em; height:6.5em;" /></li>
<div style="text-align:center"><wb:follow-button uid="2478751807" type="red_1" width="67" height="24" ></wb:follow-button></div>
</ul>
<p>二十年前，年轻、好奇、充满生活激情的她为了探寻“生命的奥秘”踏上了修证佛法之路。
</p>
<p>不断的禅修、闭关、朝山，一路走下来，遇到数不清的善缘相助和令人难以置信的奇遇，同时,也经历了种种因“我执”带来的坎坷磨难，生命曾一度徘徊在死亡的边缘……
</p>
<p>如今，所有能提起的往事都已融化在她“自以为折腾”的笑声里……有人问她：“在您的修行历程中，最值得与大家分享的心得是什么？”她说：“在修行路上，最有力的武器是慈悲。每一次当我濒临绝境时，都是慈悲心的瞬间流露拯救了我。整个法界中，慈悲无敌……”
</p>
<p>杨宁老师现居于广东珠海，成立珠海玛雅文化传播有限公司,致力于中国传统文化的传播和弘扬,并以网络的形式重点介绍释迦牟尼佛的智慧。她认为，“佛法”是人类有记载的文明中，对“生命的奥秘和意义”诠释的最圆满最透彻的智慧。她希望借助网络，能与所有人分享她二十多年从中受益的点点滴滴。
</p>
<p>敬请大家持续关注我们，也请同时关注杨宁老师的新浪微博。
</p>
<!--内容部分结束 -->
  </div>
  <h3>微博视频集合</h3>
			<div id="content_box">
			    <ul id="fhj_list">
			    <li><a href="javascript:playvideo('0001');" id="fhj01">微博系列视频（一）</a></li>
			    <div class="fhj_video" id="fhj_video0001">
			    <div id="video_box">
			        <video controls="controls" width="100%" loop="loop">
	                	<source src="http://v3.yidumen.com/video/360/W0001_360.mp4" type="video/mp4">
	                	<source src="http://v3.yidumen.com/video/360/W0002_360.mp4" type="video/mp4">
	                	<source src="http://v3.yidumen.com/video/360/W0003_360.mp4" type="video/mp4">
	                	<source src="http://v3.yidumen.com/video/360/W0004_360.mp4" type="video/mp4">
	                	<source src="http://v3.yidumen.com/video/360/W0005_360.mp4" type="video/mp4">
	                	<source src="http://v3.yidumen.com/video/360/W0006_360.mp4" type="video/mp4">
	                	<source src="http://v3.yidumen.com/video/360/W0007_360.mp4" type="video/mp4">
	                	<source src="http://v3.yidumen.com/video/360/W0008_360.mp4" type="video/mp4">
	                	对不起，您的浏览器不支持视频播放，请更新您的浏览器或使用谷歌浏览器。
                	</video>
	                <ul>
	                    <li ><a href="javascript:setVideoFormat(720);">超清</a></li>
	                    <li ><a href="javascript:setVideoFormat(480);">高清</a></li>
	                    <li id="active">标清</li>
	                   	<li ><a href="javascript:setVideoFormat(180);">流畅</a></li>
                	</ul>
			      </div>
			    </div>
			    <li><a href="javascript:playvideo('0002');" id="fhj02">微博系列视频（二）</a></li>
			    <div class="fhj_video" id="fhj_video0002"></div>
			    
			    <li><a href="javascript:playvideo('0003');" id="fhj03">微博系列视频（三）</a></li>
			    <div class="fhj_video" id="fhj_video0003"></div>
			    
			    <li><a href="javascript:playvideo('0004');" id="fhj04">微博系列视频（四）</a></li>
			    <div class="fhj_video" id="fhj_video0004"></div>
			    
			    <li><a href="javascript:playvideo('0005');" id="fhj05">微博系列视频（五）</a></li>
			    <div class="fhj_video" id="fhj_video0005"></div>
			    <li><a href="javascript:playvideo('0006');" id="fhj06">微博系列视频（六）</a></li>
			    <div class="fhj_video" id="fhj_video0006"></div>
			    <li><a href="javascript:playvideo('0007');" id="fhj07">微博系列视频（七）</a></li>
			    <div class="fhj_video" id="fhj_video0007"></div>
			    <li><a href="javascript:playvideo('0008');" id="fhj08">微博系列视频（八）</a></li>
			    <div class="fhj_video" id="fhj_video0008"></div>
                <li><a href="javascript:playvideo('0009');" id="fhj09">微博系列视频（九）</a></li>
                <div class="fhj_video" id="fhj_video0009"></div>
                <li><a href="javascript:playvideo('0010');" id="fhj10">微博系列视频（十）</a></li>
                <div class="fhj_video" id="fhj_video0010"></div>
                <li><a href="javascript:playvideo('0011');" id="fhj11">微博系列视频（十一）</a></li>
                <div class="fhj_video" id="fhj_video0011"></div>
                </ul>

			  </div>
</div>

<%@include file="/WEB-INF/jspf/mobile/footer.jspf"%>
</body>
</html>
