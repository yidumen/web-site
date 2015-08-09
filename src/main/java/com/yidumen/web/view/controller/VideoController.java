package com.yidumen.web.view.controller;

import com.yidumen.web.service.VideoService;
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

    @RequestMapping
    public String videoList(final Model model, final Device device) {
        model.addAttribute("nav", 4);
        if (device.isMobile()) {
            return "mobile/video/view";
        } else {
            return "video/list";
        }
    }

    @RequestMapping("/{file}")
    public String videoView(final Model model, final Device device) {
        model.addAttribute("nav", 4);
        return Util.responsePage(device, "video/view");
    }
}
