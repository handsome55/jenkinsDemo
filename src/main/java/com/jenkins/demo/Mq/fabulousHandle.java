package com.jenkins.demo.Mq;

import com.jenkins.demo.Config.fabulousMqConfig;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

/**
 * TODO
 *
 * @author WUBX
 * @date 2023/5/17 9:42
 */
@Component
public class fabulousHandle {

    @Autowired
    private RedisTemplate redisTemplate;

    public static final String redis_mq_key="mqProduct";

    @RabbitListener(queues = fabulousMqConfig.QUEUE_NAME)
    public void msg(Long proId){
        String value=redis_mq_key+"_"+proId;
        Double score = redisTemplate.opsForZSet().score(redis_mq_key, value);
        if(StringUtils.isEmpty(score)){
            redisTemplate.opsForZSet().add(redis_mq_key,value,1L);
        }else {
            score=score+1L;
            redisTemplate.opsForZSet().add(redis_mq_key,value,score);
        }
    }
}
