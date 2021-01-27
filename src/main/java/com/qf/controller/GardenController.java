package com.qf.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qf.pojo.Garden;
import com.qf.pojo.ResultData;
import com.qf.service.GardenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 作者：SmallWood
 * 时间：2021/1/14 17:35
 */
@RestController
@RequestMapping("/gardens")
public class GardenController {

    @Autowired
    GardenService gardenService;

    @GetMapping
    public ResultData selectAll (Integer page, Integer limit, String keywords1, String keywords2) {
        //开启分页信息
        PageHelper.startPage(page,limit);
        //调用service方法
        List<Garden> gardenList = gardenService.selectAll(keywords1, keywords2);
        //创建一个分页信息类
        PageInfo<Garden> pageInfo = new PageInfo<>(gardenList);
        //返回结果集
        ResultData resultData = new ResultData(0,"成功",gardenList,Integer.parseInt(String.valueOf(pageInfo.getTotal())));
        return resultData;
    }

    @PostMapping
    public ResultData addOne(@RequestBody Garden garden){
        //调用添加的service方法
        gardenService.addOne(garden);
        ResultData resultData = new ResultData(0,"成功");
        return resultData;
    }

    @DeleteMapping("{id}")
    public ResultData deleteOne(@PathVariable int id){
        gardenService.deleteOne(id);
        ResultData resultData = new ResultData(0,"成功");
        return resultData;
    }

    @GetMapping("{id}")
    public ResultData selectOne(@PathVariable int id){
        Garden garden = gardenService.selectOne(id);
        ResultData resultData = new ResultData(0,"成功",garden,1);
        return resultData;
    }

    @PutMapping
    public ResultData updateOne(@RequestBody Garden garden){
        gardenService.updateOne(garden);
        ResultData resultData = new ResultData(0,"成功");
        return resultData;
    }
}
