package com.yidumen.web.constant;

/**
 *
 * @author cdm
 */
public enum AccountGroup {

    ADMIN("管理员"), STAFF("志愿者"), USER("普通用户");
    private final String name;

    private AccountGroup(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

}
