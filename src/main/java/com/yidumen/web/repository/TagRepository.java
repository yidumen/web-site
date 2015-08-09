package com.yidumen.web.repository;

import com.yidumen.web.constant.TagType;
import com.yidumen.web.entity.Tag;
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
public class TagRepository extends AbstractRepository<Tag> {
    public TagRepository() {
        super("tag");
    }

    @Override
    protected RowMapper<Tag> getRowMapper() {
        return new TagRowMapper();
    }

    public Tag find(String tagname) {
        return new Tag();
    }

    public List<Tag> findVideoTags(int limit) {
        return null;
    }

    public List<Tag> find(Tag tag, boolean b) {
        return null;
    }

    private final class TagRowMapper implements RowMapper<Tag> {

        @Override
        public Tag mapRow(ResultSet resultSet, int i) throws SQLException {
            final Tag tag = new Tag();
            tag.setId(resultSet.getLong("id"));
            tag.setTagname(resultSet.getString("tagname"));
            tag.setType(TagType.getByOrdinal(resultSet.getInt("type")));
            return tag;
        }
    }
}
