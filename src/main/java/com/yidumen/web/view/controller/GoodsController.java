package com.yidumen.web.view.controller;

import com.yidumen.web.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
    public String list() {
        return "goods/goods";
    }
    @RequestMapping(method = RequestMethod.POST)
    public String submit() {
        return "goods/success";
    }
}
