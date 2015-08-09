package com.yidumen.web.service.impl;

import com.yidumen.web.constant.GoodsStatus;
import com.yidumen.web.entity.Goods;
import com.yidumen.web.repository.GoodsRepository;
import com.yidumen.web.service.GoodsService;
import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author 蔡迪旻
 */
@Service
public class GoodsServiceImpl implements GoodsService {

    @Autowired
    private GoodsRepository goodsDAO;

    @Override
    public void create(String name, String telphone, String address) {
        Goods goods = new Goods();
        goods.setName(name);
        goods.setPhone(telphone);
        goods.setAddress(address);
        goods.setCreatedate(new Date());
        goods.setStatus(GoodsStatus.WAIT);
        goodsDAO.create(goods);
    }
}
