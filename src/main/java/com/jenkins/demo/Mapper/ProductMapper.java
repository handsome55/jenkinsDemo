package com.jenkins.demo.Mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.jenkins.demo.model.Po.Product;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ProductMapper extends BaseMapper<Product> {
}
