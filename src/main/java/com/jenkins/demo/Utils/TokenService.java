package com.jenkins.demo.Utils;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import com.jenkins.demo.model.Po.User;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * TODO
 *
 * @author WUBX
 * @date 2023/5/19 14:29
 */
@Service
public class TokenService {

    private static final long EXPIRE_TIME=60*1000*60*2;

    public String getToken(User user) {
        Date date = new Date(System.currentTimeMillis() + EXPIRE_TIME);
        String token="";
        token= JWT.create()
                .withAudience(String.valueOf(user.getUserId()))
                .withClaim("userId",user.getUserId())
                .withClaim("userName",user.getUserName())
                .withClaim("password",user.getPassword())// 将 user保存到 token 里面
                .withExpiresAt(date) //五分钟后token过期
                .sign(Algorithm.HMAC256(user.getPassword())); // 以 password 作为 token 的密钥
        return token;
    }

}
