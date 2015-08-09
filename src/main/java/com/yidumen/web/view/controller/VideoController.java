package com.yidumen.web.view.controller;

import org.springframework.mobile.device.Device;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author 蔡迪旻
 */
@Controller
@RequestMapping("video")
public final class VideoController {

    @RequestMapping
    public String videoList(final Model model, final Device device) {
        model.addAttribute("nav", 4);
        return Util.responsePage(device, "video/list");
    }

    @RequestMapping("/{file}")
    public String videoView(final Model model, final Device device) {
        model.addAttribute("nav", 4);
        return Util.responsePage(device, "video/view");
    }
}
