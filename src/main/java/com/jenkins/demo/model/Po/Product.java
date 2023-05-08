package com.jenkins.demo.model.Po;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("product")
public class Product {

    @TableField
    private Long id;

    private String productName;

    private Long fabulous;


}
