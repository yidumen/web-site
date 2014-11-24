package com.yidumen.web.view.controller;

import com.yidumen.dao.entity.Sutra;
import com.yidumen.web.service.SutraService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mobile.device.Device;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author 蔡迪旻
 */
@Controller
@RequestMapping("buddhism")
public class BuddhismController {

    private final Logger log = LoggerFactory.getLogger(BuddhismController.class);
    @Autowired
    private SutraService sutraService;

    @RequestMapping("list")
    public String list(Model model, Device device) {
        model.addAttribute("practice", sutraService.findPracticeBuddhims());
        model.addAttribute("study", sutraService.findStudyBuddhims());
        model.addAttribute("known", sutraService.findKnownBuddhism());
        model.addAttribute("nav", 3);
        return "buddhism/list";
    }

    @RequestMapping("known")
    public String knownDirectory(Model model, Device device) {
        model.addAttribute("buddhisms", sutraService.findKnownBuddhism());
        model.addAttribute("title", "了解佛教");
        model.addAttribute("path", "known");
        model.addAttribute("nav", 3);
        return "buddhism/directory";
    }

    @RequestMapping("study")
    public String studyDirectory(Model model, Device device) {
        model.addAttribute("buddhisms", sutraService.findStudyBuddhims());
        model.addAttribute("title", "学习佛法");
        model.addAttribute("path", "study");
        model.addAttribute("nav", 3);
        return "buddhism/directory";
    }

    @RequestMapping("practice")
    public String practiceDirectory(Model model, Device device) {
        model.addAttribute("buddhisms", sutraService.findPracticeBuddhims());
        model.addAttribute("title", "修证佛法");
        model.addAttribute("path", "practice");
        model.addAttribute("nav", 3);
        return "buddhism/directory";
    }

    @RequestMapping("known/{id}")
    public String viewKnown(Model model, Device device, @PathVariable("id") Long id) {
        initViewModel(id, model);
        model.addAttribute("path", "known");
        model.addAttribute("title", "了解佛教");
        return "buddhism/view";
    }

    @RequestMapping("study/{id}")
    public String viewStudy(Model model, Device device, @PathVariable("id") Long id) {
        initViewModel(id, model);
        model.addAttribute("path", "study");
        model.addAttribute("title", "学习佛法");
        return "buddhism/view";
    }

    @RequestMapping("practice/{id}")
    public String viewPractice(Model model, Device device, @PathVariable("id") Long id) {
        initViewModel(id, model);
        model.addAttribute("path", "practice");
        model.addAttribute("title", "修证佛法");
        return "buddhism/view";
    }

    @RequestMapping(value = "loadmore/{id}", method = RequestMethod.GET, produces = {"text/html;charset=utf-8"})
    @ResponseBody
    public String loadmore(@PathVariable("id") Long id) {
        final String content = sutraService.findSutra(id).getContent();
        log.debug(content);
        return content;
    }

    private void initViewModel(Long id, Model model) {
        final Sutra sutra = sutraService.findSutra(id);
        model.addAttribute("buddhism", sutra);
        model.addAttribute("prev", sutraService.findPreSutra(sutra));
        model.addAttribute("next", sutraService.findNextSutra(sutra));
        model.addAttribute("pageCount", sutraService.getPageCount(sutra));
        model.addAttribute("nav", 3);
    }

}
