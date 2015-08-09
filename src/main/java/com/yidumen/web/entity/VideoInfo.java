package com.yidumen.web.entity;

import com.yidumen.web.constant.VideoResolution;

import java.io.Serializable;

/**
 *
 * @author 蔡迪旻<yidumen.com>
 */
public class VideoInfo implements Serializable {

    private Long id;

    private Video video;

    private VideoResolution resolution;

    private int width;

    private int height;

    private String fileSize;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Video getVideo() {
        return video;
    }

    public void setVideo(Video video) {
        this.video = video;
    }

    public VideoResolution getResolution() {
        return resolution;
    }

    public void setResolution(VideoResolution resolution) {
        this.resolution = resolution;
    }

    public int getWidth() {
        return width;
    }

    public void setWidth(int width) {
        this.width = width;
    }

    public int getHeight() {
        return height;
    }

    public void setHeight(int height) {
        this.height = height;
    }

    public String getFileSize() {
        return fileSize;
    }

    public void setFileSize(String fileSize) {
        this.fileSize = fileSize;
    }

}
