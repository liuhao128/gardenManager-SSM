package com.qf.service.impl;

import com.qf.mapper.GardenMapper;
import com.qf.pojo.Garden;
import com.qf.service.GardenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 作者：SmallWood
 * 时间：2021/1/14 17:25
 */
@Service
public class GardenServiceImpl implements GardenService {

    @Autowired
    GardenMapper gardenMapper;

    @Override
    public List<Garden> selectAll( String keywords1, String keywords2) {
//        int cPage=1;
//        if (currentPage != null) {
//            cPage = Integer.parseInt(currentPage);
//        }
//        int pSize = 3;
//        if (pageSize != null) {
//            pSize = Integer.parseInt(pageSize);
//        }
        List<Garden> gardenList = gardenMapper.selectAll(keywords1,keywords2);
        return gardenList;
    }

    @Override
    public int addOne(Garden garden) {
        return gardenMapper.addOne(garden);
    }

    @Override
    public int deleteOne(int id) {
        return gardenMapper.deleteOne(id);
    }

    @Override
    public Garden selectOne(int id) {
        return gardenMapper.selectOne(id);
    }

    @Override
    public int updateOne(Garden garden) {
        return gardenMapper.updateOne(garden);
    }

//    @Override
//    public PageBean<Garden> selectByLimit(String keywords, String currentPage, String pageSize) {
//
//        return null;
//    }

    @Override
    public int addGardens(List<String[]> datas) {
        return 0;
    }

    @Override
    public List<String[]> exportBooks() {
        return null;
    }
}
