package com.yidumen.web.view.controller;

import com.yidumen.web.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mobile.device.Device;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author 蔡迪旻
 */
@Controller
@RequestMapping("goods")
public final class GoodsController {

    @Autowired
    private GoodsService goodsService;

    @RequestMapping(method = RequestMethod.GET)
    public String list(Model model, Device device) {
        model.addAttribute("nav", 5);
        return Util.responsePage(device, "goods/goods");
    }

    @RequestMapping(method = RequestMethod.POST)
    public String submit(@RequestParam String name,
                         @RequestParam String telphone,
                         @RequestParam String address,
                         Model model,
                         Device device) {
        goodsService.create(name, telphone, address);
        model.addAttribute("name", name);
        model.addAttribute("telphone", telphone);
        model.addAttribute("address", address);
        model.addAttribute("nav", 5);
        return Util.responsePage(device, "goods/success");
    }

}
