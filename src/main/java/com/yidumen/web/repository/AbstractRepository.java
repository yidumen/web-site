package com.yidumen.web.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * @author 蔡迪旻
 *         2015年08月08日
 */
@Transactional
public abstract class AbstractRepository<T> {

    private String table;
    @Autowired
    protected JdbcTemplate jdbcTemplate;


    public AbstractRepository(String table) {
        this.table = table;
    }

    protected abstract RowMapper<T> getRowMapper();

    /**
     * <p>
     * 指定查询条件，该方法使用SQL的<code>between</code>关键字查询。
     * <code>condition</code>中，key为字段名；value为装有2个对象的数组， 分别指定最大和最小值。</p>
     * <p>
     * 字符串也可以成为条件。日期也需要以字符串形式提供</p>
     *
     * @param condition
     * @return
     */
    public List<T> findBetween(Map<String, Object[]> condition) {
        final StringBuilder sql = new StringBuilder("SELECT * FROM ").append(table);
        if (condition == null) {
            return null;
        } else if (condition.isEmpty()) {
            return this.jdbcTemplate.query(sql.toString(), getRowMapper());
        } else {
            sql.append(" where ");
            for (String attr : condition.keySet()) {
                sql.append(attr).append(" between ");
                Object[] objects = condition.get(attr);
                if (objects instanceof String[]) {
                    sql.append("'").append(objects[0]).append("' and '").append(objects[1]).append("'");
                } else {
                    sql.append(objects[0]).append(" and ").append(objects[1]);
                }
                sql.append(" and ");
            }
            sql.delete(sql.lastIndexOf(" and "), sql.length());
        }
        if (condition.containsKey("order")) {
            final Object[] orders = condition.get("order");
            sql.append(" order by ").append(orders[0]).append(" ").append(orders[1]);
        }
        return this.jdbcTemplate.query(sql.toString(), getRowMapper());
    }

    public List<T> findAll() {
        return this.jdbcTemplate.query("SELECT * FROM " + table, getRowMapper());
    }

    public T find(Object id) {
        return this.jdbcTemplate.queryForObject("SELECT * FROM " + table + " WHERE id = ?", getRowMapper(), id);
    }

    public List<T> findByCondition(Map<String, Object> condition) {
        Set<String> attrNames = condition.keySet();

        if (attrNames == null || attrNames.size() == 0) {
            return null;
        }
        StringBuilder sql = new StringBuilder("select * from ").append(table).append(" where ");
        for (String attrName : attrNames) {
            sql.append(attrName).append(" = ?").append(" and ");
        }
        sql.delete(sql.lastIndexOf(" and "), sql.length());
        return this.jdbcTemplate.query(sql.toString(), condition.values().toArray(), getRowMapper());
    }

    public long count() {
        return this.jdbcTemplate.queryForObject("select count(id) as count from " + table, Long.class);
    }

    public Object max(String property) {
        return this.jdbcTemplate.queryForObject("select max(" + property + ") as max from " + table, Object.class);
    }
}
