package com.yidumen.web.service.impl;

import com.yidumen.dao.GoodsDAO;
import com.yidumen.dao.constant.GoodsStatus;
import com.yidumen.dao.entity.Goods;
import com.yidumen.web.service.GoodsService;
import java.util.Date;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author 蔡迪旻
 */
@Service
@Transactional
public class GoodsServiceImpl implements GoodsService {

    @Autowired
    private GoodsDAO goodsDAO;

    @Override
    public void create(Goods goods) {
        goods.setCreatedate(new Date());
        goods.setStatus(GoodsStatus.WAIT);
        goodsDAO.create(goods);
    }
}
