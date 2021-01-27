package com.qf.controller;

import com.qf.pojo.ResultData;
import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/**
 * 作者：SmallWood
 * 时间：2021/1/15 9:56
 */
@Controller
@RequestMapping("/file")
public class FileController {

    @RequestMapping("/upload")
    @ResponseBody
    public ResultData upload(MultipartFile file, HttpServletRequest request){
        //获取文件名
        String originalFilename = file.getOriginalFilename();
        //获取UUID
        String uuid = UUID.randomUUID().toString().replace("-", "");
        //获取文件扩展名
        String extension = FilenameUtils.getExtension(originalFilename);
        //拼接得到新的文件名
        String newFile = uuid + "." + extension;
        //获取真实路径
        String realPath = request.getServletContext().getRealPath("/upload");
        //判断文件真实路径是否为空,为空则创建
        File file1 = new File(realPath);
        if (!file1.exists()) {
            file1.mkdirs();
        }
        //获取文件最终路径
        String filePath = realPath + "\\" + newFile;
        try {
            //文件上传到本地
            file.transferTo(new File(filePath));
        } catch (IOException e) {
            e.printStackTrace();
        }
        //获取保存在数据库的路径
        String savePath = realPath.substring(realPath.lastIndexOf("\\upload")) + "\\" + newFile;
        ResultData resultData = new ResultData(0,"上传成功",savePath,1);
        return resultData;
//        Map<String,Object> map = new HashMap<>();
//        map.put("code",0);
//        map.put("msg","上传成功");
//        map.put("data",savePath);
//        return map;
    }

}
