package com.yidumen.web.repository;

import com.yidumen.web.entity.Sutra;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 * @author 蔡迪旻
 *         2015年08月09日
 */
@Repository
public class SutraRepository extends AbstractRepository<Sutra> {
    public SutraRepository() {
        super("sutra");
    }

    @Override
    protected RowMapper<Sutra> getRowMapper() {
        return new GenericRowMapper<>(Sutra.class);
    }

    public List<Sutra> find(long leftValue, long rightValue) {
        return this.jdbcTemplate.query("SELECT * FROM sutra WHERE leftValue > ? AND rightValue < ?", getRowMapper(), leftValue, rightValue);
    }

    public Sutra findByRightvalue(long rightValue) {
        final List<Sutra> sutras = this.jdbcTemplate.query("SELECT * FROM sutra WHERE rightValue = ?", getRowMapper(), rightValue);
        if (!sutras.isEmpty()) {
            return sutras.get(0);
        }
        return null;
    }

    public Sutra findByLeftvalue(long leftValue) {
        final List<Sutra> sutras = this.jdbcTemplate.query("SELECT * FROM sutra WHERE leftValue = ?", getRowMapper(), leftValue);
        if (!sutras.isEmpty()) {
            return sutras.get(0);
        }
        return null;
    }

    private final class SutraRowMapper implements RowMapper<Sutra> {

        @Override
        public Sutra mapRow(ResultSet resultSet, int i) throws SQLException {
            final Sutra sutra = new Sutra();
            sutra.setId(resultSet.getLong("id"));
            sutra.setTitle(resultSet.getString("title"));
            sutra.setPartIdentifier(resultSet.getString("partIdentifier"));
            sutra.setLeftValue(resultSet.getLong("leftValue"));
            sutra.setRightValue(resultSet.getLong("rightValue"));
            sutra.setContent(resultSet.getString("content"));
            return sutra;
        }
    }
}
