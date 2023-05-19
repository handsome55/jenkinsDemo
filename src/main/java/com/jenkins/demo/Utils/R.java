package com.jenkins.demo.Utils;

import com.jenkins.demo.Enums.ResultCode;
import lombok.Data;
import org.springframework.util.StringUtils;

import static com.jenkins.demo.Enums.ResultCode.FAILURE;
import static com.jenkins.demo.Enums.ResultCode.SUCCESS;

/**
 * TODO
 *
 * @author WUBX
 * @date 2023/5/19 14:49
 */
@Data
public class R<T>{

    /**
     * 错误码
     */
    private Integer code;

    /**
     * 错误消息
     */
    private String msg;

    /**
     * 内容
     */
    private T data;

    public static <U> R<U> toResult(int rows) {
        return rows > 0 ? R.success() : R.failure();
    }


    public static <U> R<U> success() {
        return of(SUCCESS, null, null);
    }

    public static <U> R<U> success(U data) {
        return of(SUCCESS, null, data);
    }

    public static <U> R<U> failure() {
        return of(FAILURE, null, null);
    }

    public static <U> R<U> failure(ResultCode resultCode) {
        return of(resultCode, null, null);
    }

    public static <U> R<U> failure(ResultCode resultCode, String detail) {
        return of(resultCode, detail, null);
    }

    public static <U> R<U> of(ResultCode resultCode, String detail, U data) {
        R<U> result = new R<>();
        result.code = resultCode.code();
        if (StringUtils.isEmpty(detail)) {
            result.msg = resultCode.message();
        } else {
            //覆盖消息
            result.msg = detail;
        }
        result.data = data;
        return result;
    }
}
