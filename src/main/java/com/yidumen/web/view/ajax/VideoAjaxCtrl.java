package com.yidumen.web.view.ajax;

import com.yidumen.dao.entity.Video;
import com.yidumen.web.service.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

    @RequestMapping(value = "chatroom", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public List<Map<String, String>> chatroom() {
        final List<Video> videos = videoService.getTopNewVideos(0);
        final List<Map<String, String>> result = new ArrayList<>();
        for (final Video video : videos) {
            final Map<String, String> item = new HashMap<>();
            item.put("title", video.getTitle());
            item.put("file", video.getFile());
            result.add(item);
        }
        return result;
    }

    @RequestMapping(value = "recommend", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public List<Map<String, String>> recommend() {
        final List<Video> videos = videoService.getRecommend();
        final List<Map<String, String>> result = new ArrayList<>();
        for (final Video video : videos) {
            final Map<String, String> item = new HashMap<>();
            item.put("title", video.getTitle());
            item.put("file", video.getFile());
            result.add(item);
        }
        return result;
    }
}
