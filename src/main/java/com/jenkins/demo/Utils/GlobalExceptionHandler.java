package com.jenkins.demo.Utils;

import com.jenkins.demo.Enums.ResultCode;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestControllerAdvice;

/**
 * TODO
 *
 * @author WUBX
 * @date 2023/5/19 14:48
 */
@RestControllerAdvice
public class GlobalExceptionHandler {
    @ResponseBody
    @ExceptionHandler(Exception.class)
    public R<?> handleException(Exception e) {
        return R.failure(ResultCode.FAILURE,e.getMessage());
    }
}
