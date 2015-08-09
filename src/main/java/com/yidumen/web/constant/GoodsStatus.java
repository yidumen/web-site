package com.yidumen.web.constant;

/**
 *
 * @author 蔡迪旻
 */
public enum GoodsStatus {
    SUCCESS,
    WAIT,
    ERROR;
    public static GoodsStatus getByOrdinal(int ordinal) {
        for (GoodsStatus goodsStatus : GoodsStatus.values()) {
            if (ordinal == goodsStatus.ordinal()) {
                return goodsStatus;
            }
        }
        return null;
    }
}
