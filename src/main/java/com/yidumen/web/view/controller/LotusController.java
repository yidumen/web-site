package com.yidumen.web.view.controller;

import com.yidumen.dao.entity.Sutra;
import com.yidumen.web.service.SutraService;
import com.yidumen.web.view.model.SutraModel;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mobile.device.Device;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author 蔡迪旻
 */
@Controller
@RequestMapping("lotus")
public final class LotusController {

    @Autowired
    private SutraService sutraService;

    @RequestMapping("list")
    public String lotusList(final Model model,
                            final Device device,
                            @CookieValue(value = "videoformat", defaultValue = "360") final String videoFormat) {
        final List<SutraModel> lotuses = sutraService.getLotusSutras();
        model.addAttribute("lotuses", lotuses);
        model.addAttribute("nav", 1);
        if (device.isMobile()) {
            model.addAttribute("videoFormat", videoFormat);
            return "mobile/lotus/list";
        } else {
            return "lotus/list";
        }
    }

    @RequestMapping("{id}")
    public String lotusView(final Model model,
                            final Device device,
                            @PathVariable("id") final Long id) {
        final Sutra sutra = sutraService.findSutra(id);
        model.addAttribute(sutra);
        model.addAttribute("prev", sutraService.findPreSutra(sutra));
        model.addAttribute("next", sutraService.findNextSutra(sutra));
        if (sutra.getLeftValue() > 8 && sutra.getRightValue() < 65) {
            model.addAttribute("index", sutra.getLeftValue() - 8);
            model.addAttribute("title", "妙法莲华经原文");
        } else {
            model.addAttribute("index", sutra.getLeftValue() - 66);
            model.addAttribute("title", "妙法莲华经白话释义");
        }
        model.addAttribute("original", sutraService.getLotusSutrasOriginal());
        model.addAttribute("vernacular", sutraService.getLotusSutrasVernacular());
        model.addAttribute("nav", 1);
        if (device.isMobile()) {
            return "mobile/lotus/view";
        } else {
            return "lotus/view";
        }
    }
}
