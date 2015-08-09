package com.yidumen.web.entity;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.yidumen.web.constant.VideoStatus;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.Objects;
import java.util.Set;

/**
 * @author 蔡迪旻yidumen.com>
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
public class Video implements Serializable {

    private Long id;

    private long sort;

    /**
     * 视频名称
     */
    private String title;
    /**
     * 视频文件编号
     */
    private String file;

    /**
     * 不同清晰度的视频信息
     */
    private Set<VideoInfo> extInfo;

    private Set<Tag> tags;

    private String descrpition;
    private String note;
    private String grade;
    private Long duration;

    /**
     * 视频拍摄时间
     */
    private java.sql.Date shootTime;

    /**
     * 视频状态，可取的值：发布、审核、存档
     */
    private VideoStatus status;

    private int recommend;

    private Date pubDate;

    private List<Comment> comments;

    public Long getId() {
        return id;
    }

    public void setId(final Long id) {
        this.id = id;
    }

    /**
     * 视频发布顺序号，在页面中显示时它紧跟在名称后面为用户提示视频的索引号
     *
     * @return 表示发布索引号的长整型数据
     */
    public long getSort() {
        return sort;
    }

    public void setSort(long sort) {
        this.sort = sort;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(final String title) {
        this.title = title;
    }

    public String getFile() {
        return file;
    }

    public void setFile(final String file) {
        this.file = file;
    }

    public VideoStatus getStatus() {
        return status;
    }

    public void setStatus(final VideoStatus status) {
        this.status = status;
    }

    public Long getDuration() {
        return duration;
    }

    public void setDuration(Long duration) {
        this.duration = duration;
    }

    public java.sql.Date getShootTime() {
        return shootTime;
    }

    public void setShootTime(java.sql.Date shootTime) {
        this.shootTime = shootTime;
    }

    public Set<VideoInfo> getExtInfo() {
        return extInfo;
    }

    public void setExtInfo(Set<VideoInfo> extInfo) {
        this.extInfo = extInfo;
    }

    public Set<Tag> getTags() {
        return tags;
    }

    public void setTags(Set<Tag> tags) {
        this.tags = tags;
    }


    /**
     * 视频发布日期.<br>
     * 这个属性的意义有两层：<br>
     * 1. 当发布日期在当前日期之后，说明这是计划发布的日期，系统将在指定时间自动进行发布工作；<br>
     * 2. 如果发布日期在当前日期之前，说明这是已发布（或以前发布过）的视频。
     *
     * @return 发布日期
     */
    public Date getPubDate() {
        return pubDate;
    }

    public void setPubDate(Date pubDate) {
        this.pubDate = pubDate;
    }

    public String getDescrpition() {
        return descrpition;
    }

    public void setDescrpition(String descrpition) {
        this.descrpition = descrpition;
    }

    public int getRecommend() {
        return recommend;
    }

    public void setRecommend(int recommend) {
        this.recommend = recommend;
    }

    public List<Comment> getComments() {
        return comments;
    }

    public void setComments(List<Comment> comments) {
        this.comments = comments;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 47 * hash + Objects.hashCode(this.id);
        hash = 47 * hash + Objects.hashCode(this.title);
        hash = 47 * hash + Objects.hashCode(this.file);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Video other = (Video) obj;
        if (!Objects.equals(this.id, other.id)) {
            return false;
        }
        if (!Objects.equals(this.file, other.file)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return title + ": {file:" + file + ", sort:" + sort + ", recommend:" + recommend + "}";
    }
}
