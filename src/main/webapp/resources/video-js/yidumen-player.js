function ydmPlayer(videos) {
    var player = this;
    var currentIndex = 0;
    var resolution = 480;
    player.on("ended", function () {
        setVideo();
        player.one("loadstart", function () {
            player.play();
        });
    });
    var setVideo = function () {
        if (currentIndex < videos.length) {
            console.log("当前视频更换为：" + videos[currentIndex].file);
            player.src({type: "video/mp4", src: "http://v3.yidumen.com/video/" + resolution + "/" + videos[currentIndex++].file + "_" + resolution + ".mp4"});
        }
    };
    setVideo();
    var pl = document.getElementById("listbar");
    if (pl) {
        for (var i = 0, max = videos.length; i < max; i++) {
            var video = videos[i];
            var item = document.createElement("li");
            if (i === currentIndex - 1) {
                item.className = "active";
            }
            item.setAttribute("data-index", i);
            item.innerHTML = video.title;
            pl.appendChild(item);
            item.onclick = function () {
                var parent = this.parentElement;
                for (var i = 0, max = parent.childElementCount; i < max; i++) {
                    parent.childNodes[i].removeAttribute("class");
                }
                this.className = "active";
                currentIndex = this.getAttribute("data-index");
                if (!player.paused()) {
                    player.one("loadstart", function () {
                        player.play();
                    });
                }
                setVideo();
            };
        }
        pl.style.height = player.height() + "px";
    }
}
videojs.plugin('ydmPlayer', ydmPlayer);
