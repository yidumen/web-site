package com.yidumen.web.view.controller;

import org.springframework.mobile.device.Device;

/**
 *
 * @author 蔡迪旻
 */
public final class Util {

    public static String responsePage(Device device, String path) {
        return device.isNormal() ? path : "mobile/" + path;
    }
}
