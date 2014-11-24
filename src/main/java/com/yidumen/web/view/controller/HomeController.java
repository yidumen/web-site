package com.yidumen.web.view.controller;

import com.yidumen.web.service.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mobile.device.Device;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author 蔡迪旻
 */
@Controller
@RequestMapping("/")
public final class HomeController {

    @Autowired
    private VideoService vs;

    @RequestMapping(method = RequestMethod.GET)
    public String welcome(Device device, Model model) {
        if (device.isMobile()) {
            model.addAttribute("nav", 0);
            model.addAttribute("videos", vs.getTopNewVideos(4));
            return "mobile/home";
        } else {
            return "home";
        }
    }

}
