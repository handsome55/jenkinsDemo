package com.jenkins.demo.Controller;


import com.jenkins.demo.Utils.LoginToken;
import com.jenkins.demo.Utils.UserInfo;
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
        System.out.println(UserInfo.getUserName());

        return "test git11111111111";

    }


}
