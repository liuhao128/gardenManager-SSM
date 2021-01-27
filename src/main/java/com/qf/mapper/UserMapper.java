package com.qf.mapper;

import com.qf.pojo.User;

/**
 * 作者：SmallWood
 * 时间：2021/1/15 17:07
 */
public interface UserMapper {
    User selectByName(String username);
}
