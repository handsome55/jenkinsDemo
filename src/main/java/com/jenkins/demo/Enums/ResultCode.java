package com.jenkins.demo.Enums;

import org.springframework.util.ObjectUtils;

/**
 * TODO
 *
 * @author WUBX
 * @date 2023/5/19 14:51
 */
public enum ResultCode {
    SUCCESS(200,"成功"),
    FAILURE(500,"失败"),
    ERROR(10000,"未知原因出错"),
    SERVICE_ERROR(50000,"服务器异常");

    ResultCode(Integer code, String message) {
        this.code = code;
        this.message = message;
    }

    private Integer code;
    private String message;

    public Integer code() {
        return this.code;
    }

    public String message() {
        return this.message;
    }

    public static ResultCode of(String message) {
        if (ObjectUtils.isEmpty(message)) {
            throw new RuntimeException("参数错误");
        }
        for (ResultCode resultCode : values()) {
            if (resultCode.message.equals(message)) {
                return resultCode;
            }
        }
        return ERROR;
    }
}
