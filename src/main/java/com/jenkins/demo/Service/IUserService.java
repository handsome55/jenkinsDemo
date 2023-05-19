package com.jenkins.demo.Service;

import com.jenkins.demo.model.Po.User;

/**
 * TODO
 *
 * @author WUBX
 * @date 2023/5/19 14:20
 */
public interface IUserService {

    User selectByUser(User user);

    User getUser(Integer userId);
}
