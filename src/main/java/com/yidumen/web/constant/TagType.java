package com.yidumen.web.constant;

/**
 *
 * @author cdm
 */
public enum TagType {
    CONTENT, GROUP, COLUMN;
    public static TagType getByOrdinal(int ordinal) {
        for (TagType tagType : TagType.values()) {
            if (ordinal == tagType.ordinal()) {
                return tagType;
            }
        }
        return null;
    }
}
