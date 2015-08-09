package com.yidumen.web.repository;

import com.yidumen.web.constant.GoodsStatus;
import com.yidumen.web.entity.Goods;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author 蔡迪旻
 *         2015年08月09日
 */
@Repository
public class GoodsRepository extends AbstractRepository<Goods> {
    public GoodsRepository() {
        super("goods");
    }

    @Override
    protected RowMapper<Goods> getRowMapper() {
        return new GoodsRowMapper();
    }

    public void create(Goods goods) {
        this.jdbcTemplate
                .update("INSERT INTO goods (address, createdate, name, phone, postCode, postNumber, status) VALUES (?,?,?,?,?,?,?)",
                goods.getAddress(), goods.getCreatedate(), goods.getName(), goods.getPhone(), goods.getPostCode(), goods.getPostNumber(), goods.getStatus().ordinal());
    }

    private final class GoodsRowMapper implements RowMapper<Goods> {

        @Override
        public Goods mapRow(ResultSet resultSet, int i) throws SQLException {
            final Goods goods = new Goods();
            goods.setId(resultSet.getInt("id"));//todo goods表ID为INT，应修改为BigInt和long
            goods.setName(resultSet.getString("name"));
            goods.setPhone(resultSet.getString("phone"));
            goods.setAddress(resultSet.getString("address"));
            goods.setPostCode(resultSet.getString("postCode"));
            goods.setPostNumber(resultSet.getString("postNumber"));
            goods.setStatus(GoodsStatus.getByOrdinal(resultSet.getInt("status")));
            return goods;
        }
    }
}
