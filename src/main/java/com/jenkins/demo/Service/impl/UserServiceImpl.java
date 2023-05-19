package com.jenkins.demo.Service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.jenkins.demo.Mapper.UserMapper;
import com.jenkins.demo.Service.IUserService;
import com.jenkins.demo.model.Po.User;
import com.mysql.cj.util.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;

/**
 * TODO
 *
 * @author WUBX
 * @date 2023/5/19 14:22
 */
@Service
public class UserServiceImpl implements IUserService {

    @Autowired
    private UserMapper userMapper;
    @Override
    public User selectByUser(User user) {
        LambdaQueryWrapper<User> wrapper = new LambdaQueryWrapper<>();
        wrapper.eq(User::getUserName,user.getUserName())
               .eq(User::getPassword,user.getPassword());
        User user1 = userMapper.selectOne(wrapper);
        if (!ObjectUtils.isEmpty(user1)){
            return user1;
        }
        return null;
    }

    @Override
    public User getUser(Integer userId) {
        return userMapper.selectById(userId);
    }
}
