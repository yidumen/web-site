package com.yidumen.web.entity;

import java.io.Serializable;
import java.sql.Date;

/**
 *
 * @author 蔡迪旻 <yidumen.com>
 */
public class UserMessage implements Serializable {

    private Long id;

    private String content;
    
    private Date sendTime;
    
    private Account sender;
    
    private Account target;
    
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getSendTime() {
        return sendTime;
    }

    public void setSendTime(Date sendTime) {
        this.sendTime = sendTime;
    }

    public Account getSender() {
        return sender;
    }

    public void setSender(Account sender) {
        this.sender = sender;
    }

    public Account getTarget() {
        return target;
    }

    public void setTarget(Account target) {
        this.target = target;
    }

}
