package com.jenkins.demo.Service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.jenkins.demo.model.Po.Product;

import java.util.List;

public interface ProductService {

    Integer insertProduct(Product product);

    List<Product> selectPageProduct(Integer num, Integer size);

    void removeRedis();

    Integer insertMqProduct(Product product);
}
