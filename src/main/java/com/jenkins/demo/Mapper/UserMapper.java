package com.jenkins.demo.Mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.jenkins.demo.model.Po.User;
import org.apache.ibatis.annotations.Mapper;

/**
 * TODO
 *
 * @author WUBX
 * @date 2023/5/19 14:26
 */
@Mapper
public interface UserMapper extends BaseMapper<User> {
}
