package com.yidumen.web.entity;

import java.io.Serializable;
import java.util.List;

/**
 *
 * @author 蔡迪旻<yidumen.com>
 */
public class Sutra implements Serializable {

    private Long id;

    /**
     * 章节标识
     */
    private String partIdentifier;

    /**
     * 标题
     */
    private String title;

    /**
     * 左值
     *
     * http://blog.csdn.net/MONKEY_D_MENG/article/details/6647488
     */
    private long leftValue;

    /**
     * 右值
     *
     * http://blog.csdn.net/MONKEY_D_MENG/article/details/6647488
     */
    private long rightValue;

    private List<Tag> tags;

    private Video video;

    /**
     * 佛经内容
     */
    private String content;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getPartIdentifier() {
        return partIdentifier;
    }

    public void setPartIdentifier(String partIdentifier) {
        this.partIdentifier = partIdentifier;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public long getLeftValue() {
        return leftValue;
    }

    public void setLeftValue(long leftValue) {
        this.leftValue = leftValue;
    }

    public long getRightValue() {
        return rightValue;
    }

    public void setRightValue(long rightValue) {
        this.rightValue = rightValue;
    }

    public List<Tag> getTags() {
        return tags;
    }

    public void setTags(List<Tag> tags) {
        this.tags = tags;
    }

    public Video getVideo() {
        return video;
    }

    public void setVideo(Video video) {
        this.video = video;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

}
