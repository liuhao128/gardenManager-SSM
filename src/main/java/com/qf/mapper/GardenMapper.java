package com.qf.mapper;

import com.qf.pojo.Garden;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 作者：SmallWood
 * 时间：2021/1/14 17:32
 */
public interface GardenMapper {
    //查询全部
    List<Garden> selectAll(@Param("keywords1") String keywords1, @Param("keywords2") String keywords2);

    //添加一条数据
    int addOne(Garden garden);

    //删除一条数据
    int deleteOne(int id);

    //查询一条数据
    Garden selectOne(int id);

    //修改一条数据
    int updateOne(Garden garden);


}
