package com.yidumen.web.view.controller;

import com.yidumen.dao.entity.Sutra;
import com.yidumen.web.service.SutraService;
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
public final class NovelController {

    @Autowired
    private SutraService sutraService;

    @RequestMapping("heart_of_dharma_realm/list")
    public String heartDirectory(Model model, Device device) {
        model.addAttribute("buddhisms", sutraService.findHeartOfDharmaRealm());
        model.addAttribute("title", "法界之心");
        model.addAttribute("path", "heart_of_dharma_realm");
        model.addAttribute("nav", 5);
        return Util.responsePage(device, "goods/directory");
    }

    @RequestMapping("heart_of_dharma_realm/{id}")
    public String viewHeart(Model model, Device device, @PathVariable("id") Long id) {
        initViewModel(id, model);
        model.addAttribute("path", "heart_of_dharma_realm/list");
        model.addAttribute("title", "法界之心");
        return Util.responsePage(device, "goods/view");
    }

    @RequestMapping("awaken_journey/{id}")
    public String viewStarway(Model model, Device device, @PathVariable("id") Long id) {
        initViewModel(id, model);
        model.addAttribute("path", "goods");
        model.addAttribute("title", "星路");
        return Util.responsePage(device, "goods/view");
    }

    private void initViewModel(Long id, Model model) {
        final Sutra sutra = sutraService.findSutra(id);
        model.addAttribute("buddhism", sutra);
        model.addAttribute("prev", sutraService.findPreSutra(sutra));
        model.addAttribute("next", sutraService.findNextSutra(sutra));
        model.addAttribute("pageCount", sutraService.getPageCount(sutra));
        model.addAttribute("nav", 5);
    }
}
