var mobileHost = "m.fayala.com";
var pcHost = "y.fayala.com";

function rewriteUrl(host) {
  var url = window.location.href;
  var urls = url.split("/");
  var newUrl = urls[0] + "//" + host;
  for (i = 3; i < urls.length; i++) {
    newUrl += "/" + urls[i];
  }
  return newUrl;
}

function browserRedirect() {
  var dev = getCookie("dev");
  if (dev == "mobile") {
    var reurl = rewriteUrl(mobileHost);
    window.location.href = "http://" + mobileHost + "/setcookie.jsp?link=" + reurl;
    return;
  } else if (dev == "pc") {

  } else {
    var sUserAgent = navigator.userAgent.toLowerCase();
    //var bIsIpad = sUserAgent.match(/ipad/i) == "ipad";
    var bIsIphoneOs = sUserAgent.match(/iphone os/i) == "iphone os";
    var bIsMidp = sUserAgent.match(/midp/i) == "midp";
    var bIsUc7 = sUserAgent.match(/rv:1.2.3.4/i) == "rv:1.2.3.4";
    var bIsUc = sUserAgent.match(/ucweb/i) == "ucweb";
    var bIsAndroid = sUserAgent.match(/android/i) == "android";
    var bIsCE = sUserAgent.match(/windows ce/i) == "windows ce";
    var bIsWM = sUserAgent.match(/windows mobile/i) == "windows mobile";
    var url = window.location.href;
    if (bIsIphoneOs || bIsMidp || bIsUc7 || bIsUc || bIsAndroid || bIsCE || bIsWM) {
      if (url.indexOf(mobileHost) < 0) {
        var reurl = rewriteUrl(mobileHost);
        window.location.href = "http://" + mobileHost + "/setcookie.jsp?link=" + reurl;
        return;
      }
    } else {
      if (url.indexOf(pcHost) < 0) {
        var reurl = rewriteUrl(pcHost);
        window.location.href = "http://" + pcHost + "/setcookie.jsp?link=" + reurl;
        return;
      }
    }
  }
}
browserRedirect();