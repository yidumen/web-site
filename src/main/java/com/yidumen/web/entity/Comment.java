package com.yidumen.web.entity;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

/**
 *
 * @author 蔡迪旻 <yidumen.com>
 */
public class Comment implements Serializable {

    private Long id;
    
    private String author;

    private String content;

    private String ipAdress;

    private Date createTime;

    private Comment comment;

    private List<Comment> reply;

    private Video video;

    private Account fromUser;

    private Account toUser;

    private boolean readed;
    
    private List<Account> agreedAccount;

    /**获取唯一标识
     * @return 
     */
    public Long getId() {
        return id;
    }

    /**
     * 设置唯一标识，该方法不能手动使用
     * @param id 
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * 获取评论的作者名，当用户为游客时有效
     * @return 
     */
    public String getAuthor() {
        return author;
    }

    /**
     * 设置评论的作者名，当用户为游客时，由网站后台逻辑自动生成
     * @param author 
     */
    public void setAuthor(String author) {
        this.author = author;
    }

    /**
     * 获取评论内容
     * @return 
     */
    public String getContent() {
        return content;
    }

    /**
     * 设置评论内容，可绑定到输入型控件
     * @param content
     */
    public void setContent(String content) {
        this.content = content;
    }

    /**
     * 获取用户评论时所使用的IP
     * @return 
     */
    public String getIpAdress() {
        return ipAdress;
    }

    public void setIpAdress(String ipAdress) {
        this.ipAdress = ipAdress;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * 获取对应的父评论，如果为null则该实例是一则评论，否则为一条回复.
     * 回复之下也可以有回复
     * @return 所回复的评论，如果为null则表示它是用户直接发表的评论而非某一评论的回复
     */
    public Comment getComment() {
        return comment;
    }

    /**
     * 设置对应的评论，如果该实例为某一评论的回复则应该设置这个属性
     * @param comment 所回复的评论对象
     */
    public void setComment(Comment comment) {
        this.comment = comment;
    }

    public List<Comment> getReply() {
        return reply;
    }

    public void setReply(List<Comment> reply) {
        this.reply = reply;
    }

    public Video getVideo() {
        return video;
    }

    public void setVideo(Video video) {
        this.video = video;
    }

    public Account getToUser() {
        return toUser;
    }

    public void setToUser(Account toUser) {
        this.toUser = toUser;
    }

    public boolean isReaded() {
        return readed;
    }

    public void setReaded(boolean readed) {
        this.readed = readed;
    }

    public Account getFromUser() {
        return fromUser;
    }

    public void setFromUser(Account fromUser) {
        this.fromUser = fromUser;
    }

    public List<Account> getAgreedAccount() {
        return agreedAccount;
    }

    public void setAgreedAccount(List<Account> agreedAccount) {
        this.agreedAccount = agreedAccount;
    }
}
