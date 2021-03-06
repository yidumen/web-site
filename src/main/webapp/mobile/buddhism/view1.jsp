<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <h3><span>${buddhism.partIdentifier} &#8226;</span>${buddhism.title}</h3>
            <div id="video_box">
                <video id="videoplay" controls="controls" src="http://v3.yidumen.com/video/180/B0002_180.mp4">
                    对不起，您的浏览器不支持视频播放，请更新您的浏览器或使用谷歌浏览器。
                </video>
                <ul>
                    <li><a href="http://v3.yidumen.com/video/720/B0002_720.mp4">超清</a></li>
                    <li><a href="http://v3.yidumen.com/video/480/B0002_480.mp4">高清</a></li>
                    <li id="active">标清</li>
                    <li><a href="http://v3.yidumen.com/video/180/B0002_180.mp4">流畅</a></li>
                </ul>
            </div>
            <div id="content_box">
                <!--内容部分 -->
                <p>
                    现在有一些在家人信仰佛教，只是去寺院上香，学持几句佛号或咒语，或者去寺院授三皈五戒。三皈是皈依佛、法、僧。五戒是戒杀生、戒偷盗、戒邪淫、戒妄语、戒饮酒。有的寺院在授戒时会讲解戒条，有的寺院不讲，但都发一个皈依证。这个人便成为&ldquo;佛教居士&rdquo;。说自己皈依的是哪位法师，哪个寺院。皈依是&ldquo;依止&rdquo;的意思，即我们将依止佛、法、僧，得到解脱。</p>
                <p>
                    还有的人，没有皈依，只是看到佛像，听到梵呗心里欢喜，便去烧香磕头。如果有老师讲佛法，他也听得很开心。以上的人统被称作佛教信徒。他们因对佛法了解较少，故信佛只求佛菩萨能保佑自己以及亲人平安、健康、快乐，事业兴旺，财源广进。偶尔会吃斋，为寺院当义工，捐钱建寺庙，做布施，做慈善事业等。</p>
                <p>
                    学习佛法再进一步，除了信佛以外，还要了解佛说了什么？不满足于只是烧香拜佛，所以开始阅读佛教经典。基本相信因果、轮回、业报，有些人会吃斋，偶尔打坐静心。但只是信佛所说，对自己的心性要求较少。佛菩萨、因果、轮回、业报等这些观念虽然相信其存在，但也没有什么可怕的。总认为自己信佛就不会下地狱。即使做了一些不好的事，捐些钱，捐些物给寺院，道场、想佛菩萨慈悲，应该会庇护我们，使我们不好的果报，大果化小，小果化了。这些人是第二种信佛的，很多人都洒脱到不屑于讲形式，说&ldquo;心中&rdquo;有佛就可以了。其实，心中也是偶尔有佛菩萨而已，碰到自己的利益，七情六欲，便将佛菩萨从心中流放了。</p>
                <p>
                    第三种就是修证佛法。信佛更进一步了。当对佛法有了更深的了解后，已经不满足于只知道佛说了什么，而是像佛一样，&ldquo;以身证道，自己成佛&rdquo;，彻底从轮回中解脱。这就是修证佛法，就是自己要做佛。但成佛之路是一个降伏自己的过程，一路走下来，要每时每刻关照到自己的习气欲望、自己的贪嗔痴慢疑减弱多少。要站在菩萨的角度，用佛说的观点去思考、反省自己的起心动念和为人处事。还要广积功德，广结善缘，止恶扬善。否则，恶的果报形成时，修证非常困难，会令行者身心受损，修证者将无时间、精力、条件修证。或者会令你对佛法以及能救度你的所有老师产生抵触、反感、厌恶的情绪，从而远离他们。却会喜欢与一些故弄玄虚，能与你同流合污或表面持戒精严，内心邪念欲望炽盛，贪求名闻利养的人为伍。即使在佛陀时代，他的弟子恶果形成时，也听不进正法，离开佛陀僧团，另寻外道老师，错失佛陀转法轮的四十九年，再想值遇佛出世，不知又要几千年的轮回，真是生生世世的遗憾&hellip;&hellip;</p>
                <p>
                    所以，信仰佛教、学习佛法、修证佛法是三个层面。一位佛教信徒可能并不学习佛法、修证佛法。只是相信有佛菩萨的存在，而且在慈悲的护佑着他们。他们只是虔诚的上香、礼拜、祈愿，等于只是与佛菩萨们结了一个善缘而已。他们终将有机会聆听到佛法。（&ldquo;佛法&rdquo;是佛菩萨们为众生准备的无尽宝藏）</p>
                <p>
                    学习佛法者，也许表面看上去，并不像一个虔诚的佛教信徒，也许他们很少去寺院烧香叩头，但他们却如饥似渴的扑在佛教的经典里面汲取营养。对经典领悟的愈深，他们对佛菩萨的感恩和敬佩就愈多。佛法会变成他们生活的乐趣和生命的导航。</p>
                <p>
                    修证佛法者根据选修的法门的不同，有的注重形式，有的不拘小节。但如果是一位真正想成道的修行者（有的只是利用佛法沽名钓誉），佛法会成为他生命的信念和生存的全部意义。&ldquo;证道者&rdquo;与这个世界&ldquo;修心养性&rdquo;，注重&ldquo;养生&rdquo;等人还不同。&ldquo;证道者&rdquo;是彻底从身心两个方面改变、战胜自己。上百次的脱胎换骨，等于令自己一次一次死亡并重新诞生，是对人生命极限的最大挑战。常说，一个人征服世界容易，但征服自己很难。&ldquo;以身证道&rdquo;就是选择世界上最难的一件事来做。在途中，有苦有乐，不是说修证几年就可以完全断除烦恼。在未证果以前，一位证道者和一位凡夫没有什么不同，只是烦恼的层面不同，因生命追求的意境不同。未证佛果时，证道者也有失败、痛苦、身体的疾病&hellip;&hellip;因为在成道的因缘中，不只是自己的努力，助缘也要很多，还要周围的环境适合修行。在现在这个时空，因种种助缘的缺失，证道愈来愈困难，但也并非完全没有机会和希望。只是在清洗身心的染着时，觉受上要付出更多而已。愿每位修证佛法者精进、努力，用最后一生的心求取生命轮回的解脱。</p>
                <!--内容部分结束 --></div>
            <h3>内容分享</h3>
            <%@include file="/WEB-INF/jspf/mobile/weibo.jspf" %>
            <div class="clear"></div>
        </div>

        <!--页脚部分 -->
        <%@include file="/WEB-INF/jspf/mobile/footer.jspf" %>
        <!--页脚部分结束 -->
    </body>
</html>
