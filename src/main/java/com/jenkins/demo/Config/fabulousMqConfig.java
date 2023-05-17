package com.jenkins.demo.Config;

import org.springframework.amqp.core.*;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * TODO
 *
 * @author WUBX
 * @date 2023/5/17 9:44
 */
@Configuration
public class fabulousMqConfig {

    private static final String CHANGE_NAME="fabulous_change_name";

    public static final String QUEUE_NAME="fabulous_queue_name";

    private static final String BING_KEY="fabulous_bind_key";

    @Bean("fabulousChangeName")
    public Exchange topicChange(){
        return ExchangeBuilder.topicExchange(CHANGE_NAME).durable(true).build();
    }

    @Bean("fabulousQueueName")
    public Queue topicQueue(){
        return QueueBuilder.durable(QUEUE_NAME).build();
    }

    @Bean
    public Binding itemQueueChange(@Qualifier("fabulousChangeName") Exchange exchange,
                                   @Qualifier("fabulousQueueName") Queue queue){
        return BindingBuilder.bind(queue).to(exchange).with(BING_KEY).noargs();
    }
}
