package com.yidumen.web.view.controller;

import com.yidumen.dao.entity.Video;
import com.yidumen.web.service.VideoService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mobile.device.Device;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author 蔡迪旻
 */
@Controller
@RequestMapping("video")
public final class VideoController {

    @Autowired
    private VideoService videoService;

    @RequestMapping("/list")
    public String videoList(final Model model, final Device device) {

        final List<Video> videos = videoService.getTopNewVideos(0);
        final List<Video> recommend = videoService.getRecommend();
        videos.removeAll(recommend);
        model.addAttribute("videos", videos);
        model.addAttribute("recommend", recommend);
        model.addAttribute("video", videos.get(0));
        model.addAttribute("nav", 4);
        if (device.isMobile()) {
            return "mobile/video/view";
        } else {
            return "video/list";
        }
    }

    @RequestMapping("/{file}")
    public String videoView(final Model model, final Device device, @PathVariable("file") String file) {
        final Video video = videoService.find(file);
        final List<Video> videos = videoService.getTopNewVideos(0);
        final List<Video> recommend = videoService.getRecommend();
        videos.removeAll(recommend);
        model.addAttribute("video", video);
        model.addAttribute("videos", videos);
        model.addAttribute("recommend", recommend);
        model.addAttribute("nav", 4);
        if (device.isMobile()) {
            return "mobile/video/view";
        } else {
            return "video/view";
        }
    }
}
