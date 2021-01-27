package com.qf.service.impl;

import com.qf.mapper.UserMapper;
import com.qf.pojo.ResultData;
import com.qf.pojo.User;
import com.qf.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 作者：SmallWood
 * 时间：2021/1/15 17:15
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper userMapper;

    @Override
    public ResultData selectByName(String username, String password) {
        User user = userMapper.selectByName(username);
        ResultData resultData = new ResultData();
        System.out.println(user);
        if (user != null) {
            if (user.getPassword().equals(password)){
                resultData.setMsg("登录成功");
                resultData.setCode(0);
                return resultData;
            }
        }
        resultData.setMsg("登录失败");
        resultData.setCode(500);
        return resultData;
    }
}
