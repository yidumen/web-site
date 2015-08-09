package com.yidumen.web.view.controller;

import com.yidumen.web.entity.Sutra;
import com.yidumen.web.entity.Video;
import com.yidumen.web.service.SutraService;
import com.yidumen.web.service.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mobile.device.Device;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Set;

/**
 *
 * @author 蔡迪旻
 */
@Controller
@RequestMapping("diamond")
public final class DiamondController {

    @Autowired
    private SutraService sutraService;
    @Autowired
    private VideoService videoService;

    @RequestMapping
    public String list(Model model,
                       Device device,
                       @CookieValue(value = "videoformat", defaultValue = "360") String videoFormat) {
        model.addAttribute("diamonds", sutraService.getDiamonds());
        model.addAttribute("notes", sutraService.findDiamondNotes());
        List<Video> videos = videoService.findDiamond();
        model.addAttribute("videos", videos);
        model.addAttribute("nav", 2);
        if (device.isMobile()) {
            model.addAttribute("videoFormat", videoFormat);
            return "mobile/diamond/list";
        } else {
            return "diamond/list";
        }
    }
    
    @RequestMapping("{id}")
    public String diamondView(final Model model,
                            final Device device,
                            @PathVariable("id") final Long id) {
        final Sutra sutra = sutraService.findSutra(id);
        model.addAttribute(sutra);
        model.addAttribute("prev", sutraService.findPreSutra(sutra));
        model.addAttribute("next", sutraService.findNextSutra(sutra));
        model.addAttribute("original", sutraService.getLotusSutrasOriginal());
        model.addAttribute("vernacular", sutraService.getLotusSutrasVernacular());
        model.addAttribute("nav", 2);
        if (device.isMobile()) {
            return "mobile/diamond/view";
        } else {
            return "diamond/view";
        }
    }
}
