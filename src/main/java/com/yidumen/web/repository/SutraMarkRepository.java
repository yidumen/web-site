package com.yidumen.web.repository;

import com.yidumen.web.entity.SutraMark;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author 蔡迪旻
 *         2015年08月09日
 */
@Repository
public class SutraMarkRepository extends AbstractRepository<SutraMark> {


    public SutraMarkRepository() {
        super("sutramark");
    }

    @Override
    protected RowMapper<SutraMark> getRowMapper() {
        return new SutraMarkRowMapper();
    }

    private final class SutraMarkRowMapper implements RowMapper<SutraMark> {


        @Autowired
        private SutraRepository sutraRepository;

        @Override
        public SutraMark mapRow(ResultSet resultSet, int i) throws SQLException {
            final SutraMark sutraMark = new SutraMark();
            sutraMark.setId(resultSet.getLong("id"));
            //todo 查询出sutra
            return null;
        }
    }
}
