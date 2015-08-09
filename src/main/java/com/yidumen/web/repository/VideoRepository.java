package com.yidumen.web.repository;

import com.yidumen.web.constant.VideoStatus;
import com.yidumen.web.entity.Video;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

/**
 * @author 蔡迪旻
 *         2015年08月08日
 */
@Repository
public class VideoRepository extends AbstractRepository<Video> {
    public VideoRepository() {
        super("video");
    }

    @Override
    protected RowMapper<Video> getRowMapper() {
        return new GenericRowMapper<>(Video.class);
    }

    public List<Video> dateGroup() {
        return this.jdbcTemplate.query("SELECT DATE_FORMAT(SHOOTTIME,'%Y%m') AS 'date', count(*) AS 'count' FROM video WHERE DATE_FORMAT(shootTime,'%Y') > 2011 AND status = 0 GROUP BY DATE_FORMAT(shootTime,'%Y%m')", getRowMapper());
    }

    public List<Video> find(Date startTime, Date endTime) {
        return this.jdbcTemplate.query("SELECT * FROM video WHERE status = ? AND shootTime BETWEEN ? AND ? ORDER BY shootTime DESC", new Object[]{VideoStatus.PUBLISH.ordinal(), startTime, endTime}, getRowMapper());
    }

    public List<Video> findChatroomVideos(int index, int size) {
        return this.jdbcTemplate.query("SELECT video.file, video.sort, video.title FROM video JOIN tag_video ON video.id = tag_video.videos_id JOIN tag ON tag.tagname = '聊天室' AND tag.id = tag_video.tags_id AND tag.type = 2 WHERE status = 0 AND recommend = 0 ORDER BY video.pubDate DESC LIMIT ?,?", getRowMapper(), index, size);
    }

    public Video find(String file) {
        try {
            return this.jdbcTemplate.queryForObject("SELECT video.file, video.title FROM video WHERE file = ? AND status = 0", getRowMapper(), file);
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

    public List<Video> findRecommend() {
        return this.jdbcTemplate.query("SELECT video.file, video.sort, video.title, video.recommend FROM video WHERE recommend > 0 AND status = 0 ORDER BY recommend DESC", getRowMapper());
    }

    public List<Video> findByColumn(final String column) {
        return this.jdbcTemplate.query("SELECT video.file, video.title FROM video JOIN tag_video ON video.id = tag_video.videos_id JOIN tag ON tag.tagname = ? AND tag.id = tag_video.tags_id AND tag.type = 2 WHERE status = 0 ORDER BY video.file", getRowMapper(), column);
    }

    private final class VideoRowMapper implements RowMapper<Video> {

        @Override
        public Video mapRow(ResultSet resultSet, int i) throws SQLException {
            final Video video = new Video();
                video.setId(resultSet.getLong("id"));
                video.setTitle(resultSet.getString("title"));
                video.setFile(resultSet.getString("file"));
                video.setDuration(resultSet.getLong("duration"));
                video.setPubDate(resultSet.getDate("pubDate"));
                video.setRecommend(resultSet.getInt("recommend"));
                video.setSort(resultSet.getLong("sort"));
                video.setShootTime(resultSet.getDate("shootTime"));
            return video;
        }
    }
}
