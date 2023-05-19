package com.jenkins.demo.Controller;

import com.jenkins.demo.Enums.ResultCode;
import com.jenkins.demo.Service.IUserService;
import com.jenkins.demo.Utils.PassToken;
import com.jenkins.demo.Utils.R;
import com.jenkins.demo.Utils.TokenService;
import com.jenkins.demo.model.Po.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

/**
 * TODO
 *
 * @author WUBX
 * @date 2023/5/19 14:54
 */
@RestController
@RequestMapping("/login")
public class LoginController {

    @Autowired
    private IUserService userService;

    @Autowired
    private TokenService tokenService;

    @PostMapping
    @PassToken
    public R<?> login(@RequestBody User user){
        // 获取登陆用户信息
        User user1 = userService.selectByUser(user);
        // 从jwt存储的用户信息获取 BaseUserInfo.getUserName()
        if (ObjectUtils.isEmpty(user1)){
            return R.failure(ResultCode.of("用户名或密码错误"));
        }else {
            Map<String,Object> data = new HashMap<>();
            data.put("user",user1);
            data.put("token",tokenService.getToken(user1));
            return R.success(data);
        }
    }
}
