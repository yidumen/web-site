package com.yidumen.web.view.ajax;

import com.yidumen.web.entity.Video;
import com.yidumen.web.service.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author 蔡迪旻
 *         2015年04月26日
 */
@RestController
@RequestMapping("/ajax/video")
public class VideoAjaxCtrl {

    @Qualifier("videoServiceImpl")
    @Autowired
    private VideoService videoService;

    @RequestMapping(value = "{file}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public Video findVideo(@PathVariable("file") String file) {
        return videoService.find(file);
    }

    @RequestMapping(value = "chatroom/{index}-{size}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public List<Video> chatroom(@PathVariable int index, @PathVariable int size) {
        return videoService.findChatroomVideos(index, size);
    }

    @RequestMapping(value = "recommend", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public List<Video> recommend() {
        return videoService.getRecommend();
    }
    @RequestMapping(value = "lotus", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public List<Video> lotus() {
        return videoService.findLotus();
    }
    @RequestMapping(value = "dhamma", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public List<Video> dhamma() {
        return videoService.getExtract();
    }
    @RequestMapping(value = "diamond", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public List<Video> diamond() {
        return videoService.findDiamond();
    }
    @RequestMapping(value = "weibo", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public List<Video> weibo() {
        return videoService.findWeibo();
    }
}
