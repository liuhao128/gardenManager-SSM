package com.qf.service;

import com.qf.mapper.UserMapper;
import com.qf.pojo.ResultData;
import com.qf.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 作者：SmallWood
 * 时间：2021/1/15 17:12
 */
public interface UserService {

   ResultData selectByName(String username, String password);

}
