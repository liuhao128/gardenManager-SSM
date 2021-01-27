package com.qf.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 作者：SmallWood
 * 时间：2021/1/14 14:10
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ResultData<T> {
    private Integer code;
    private String msg;
    private T data;
    private Integer count;

    public ResultData(Integer code, String msg){
        this.code = code;
        this.msg = msg;
    }
}
