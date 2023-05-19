package com.jenkins.demo.model.Po;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * TODO
 *
 * @author WUBX
 * @date 2023/5/19 14:18
 */
@Data
@TableName("user")
public class User implements Serializable {

    @TableId
    private Integer userId;

    private String userName;

    private String password;
}
