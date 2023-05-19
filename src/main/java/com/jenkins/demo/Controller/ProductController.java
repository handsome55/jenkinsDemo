package com.jenkins.demo.Controller;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.jenkins.demo.Service.ProductService;
import com.jenkins.demo.Utils.LoginToken;
import com.jenkins.demo.Utils.PassToken;
import com.jenkins.demo.model.Po.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private ProductService productService;

    @GetMapping("/rank")
    @PassToken
    public List<Product> selectPage(Integer num, Integer size){
       return productService.selectPageProduct(num,size);
    }


    @PostMapping("/insert")
    public Integer insert(Product product){

        return productService.insertProduct(product);
    }

    /**
     *
     *
     * 清理redis缓存
     */
    @GetMapping("/remove")
    public String remove(){
        productService.removeRedis();
        return "清理成功！";
    }
}
