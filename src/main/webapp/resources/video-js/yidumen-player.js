function ydmPlayer(options) {
  var videos = options.videos;
  var random = options.random;
  var player = this;
  var currentIndex = 0;
  var resolution = 480;
  player.on("ended", function () {
    if (random) {
      setVideo(Math.floor(Math.random() * videos.length))
    } else if (currentIndex < videos.length) {
      setVideo(currentIndex++);
    }
    player.one("loadstart", function () {
      player.play();
    });
  });
  var setVideo = function (index) {
    player.src({type: "video/mp4", src: "http://v3.yidumen.com/video/" + resolution + "/" + videos[index].file + "_" + resolution + ".mp4"});
  };
  setVideo(currentIndex);
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
