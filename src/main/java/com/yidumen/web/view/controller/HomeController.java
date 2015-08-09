package com.yidumen.web.view.controller;

import com.yidumen.web.service.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mobile.device.Device;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

/**
 * @author 蔡迪旻
 */
@Controller
@RequestMapping("/")
public final class HomeController {

    @Autowired
    private VideoService vs;

    @RequestMapping(method = {RequestMethod.GET, RequestMethod.HEAD})
    public String welcome(Device device, Model model, HttpServletRequest request) {
        if (request.getLocalName().equals("yidumen.com")) {
            return "redirect:http://www.yidumen.com/video/list";
        }
        if (device.isMobile()) {
            model.addAttribute("nav", 0);
            return "mobile/home";
        } else {
            return "home";
        }
    }

    @RequestMapping("teacher")
    public String teacher(Device device) {
        return Util.responsePage(device, "teacher");
    }
}
