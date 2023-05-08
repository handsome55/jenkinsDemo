package com.jenkins.demo.Service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.jenkins.demo.Mapper.ProductMapper;
import com.jenkins.demo.Mapper.UserProFabulousMapper;
import com.jenkins.demo.Service.ProductService;
import com.jenkins.demo.model.Po.Product;
import com.jenkins.demo.model.Po.UserProFabulous;
import org.redisson.Redisson;
import org.redisson.api.RLock;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private UserProFabulousMapper userProFabulousMapper;

    @Autowired
    private ProductMapper productMapper;

    @Autowired
    private RedisTemplate redisTemplate;

    @Autowired
    private Redisson redisson;

    private static final String redis_key="product";

    @Override
    public Integer insertProduct(Product product) {
        UserProFabulous userProFabulous = new UserProFabulous();
        Long proId= Long.valueOf((int)(1+Math.random()*15));
        userProFabulous.setUserId(1L);
        userProFabulous.setProductId(proId);
        userProFabulous.setNum(1);
        userProFabulous.setStatus("1");
        userProFabulous.setCreateTime(LocalDateTime.now());
        String value=redis_key+"_"+proId;
        int insert = userProFabulousMapper.insert(userProFabulous);
        RLock lock = redisson.getLock("product_redis");
        try {
            lock.lock();
            Double score = redisTemplate.opsForZSet().score(redis_key, value);
            if(StringUtils.isEmpty(score)){
                redisTemplate.opsForZSet().add(redis_key,value,1l);
            }else {
                score=score+1L;
                redisTemplate.opsForZSet().add(redis_key,value,score);
            }
        } finally {
            lock.unlock();
        }
        return insert;
    }

    @Override
    public List<Product> selectPageProduct(Integer num, Integer size) {
        //集合内成员个数相似于size
        Long nums = redisTemplate.opsForZSet().zCard(redis_key);
        if (nums<1){
            return null;
        }
        Set<String> range = redisTemplate.opsForZSet().reverseRange(redis_key, 0, 4);
        List<Product> productList = new ArrayList<>();
        range.forEach(item->{
            Product product = productMapper.selectById(item.split("_")[1]);
            Double score = redisTemplate.opsForZSet().score(redis_key, item);
            product.setFabulous(score.longValue());
            productList.add(product);
        });
        return productList;
    }

    @Override
    public void removeRedis() {
        redisTemplate.delete(redis_key);
    }
}
