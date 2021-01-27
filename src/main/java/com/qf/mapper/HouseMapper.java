package com.qf.mapper;

import com.qf.pojo.House;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 作者：SmallWood
 * 时间：2021/1/15 20:09
 */
public interface HouseMapper {

    //查询全部
    List<House> selectAll(@Param("keywords1") String keywords1, @Param("keywords2") String keywords2);

    //添加一条数据
    int addOne(House house);

    //删除一条数据
    int deleteOne(int id);

    //查询一条数据
    House selectOne(int id);

    //修改一条数据
    int updateOne(House house);

}
