package com.qf.controller;

import com.qf.pojo.ResultData;
import com.qf.pojo.User;
import com.qf.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 作者：SmallWood
 * 时间：2021/1/15 17:17
 */
@RestController
@RequestMapping("/users")
public class UserController {

    @Autowired
    UserService userService;

    @GetMapping
    public ResultData selectByName(String username, String password){
        System.out.println(username);
        System.out.println(password);
        ResultData resultData = userService.selectByName(username, password);
        return resultData;
    }

}
