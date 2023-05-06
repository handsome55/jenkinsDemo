package com.jenkins.demo.Controller;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/demo")
public class DemoController {

    @RequestMapping("/hello")
    public String hello(){
        return "hello world!";
    }

    @RequestMapping("/testGit")
    public String git(){
        return "test git11111111111";
    }


}
