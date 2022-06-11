package com.courseware.courseware.manage.controller;


import com.courseware.courseware.manage.base.Result;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/**
 * @author ltf
 */
@Slf4j
@RestController
public class TemplateInfoController {
    private static final Logger LOGGER = LoggerFactory.getLogger(TemplateInfoController.class);


    @Value("${spring.upload.path}")
    private String path;

    @Value("${spring.file.domain}")
    private String domainUrl;



    @PostMapping("/uploadOther")
    @ResponseBody
    public Result uploadOther(@RequestParam("file") MultipartFile file) {
        Result result = new Result();
        result.setCode(200);
        if (file.isEmpty()) {
            result.setCode(400);
            result.setMessage("上传失败，请选择文件");
            return result;
        }
        String fileName = file.getOriginalFilename();
        String ext = fileName.substring(fileName.lastIndexOf("."), fileName.length()).toLowerCase();
        fileName = UUID.randomUUID().toString()+ext;
        File dest = new File(path + fileName);
        try {
            file.transferTo(dest);
            LOGGER.info("上传成功");
            Map<String,String> map =  new HashMap<>();
            map.put("url",fileName);
            result.setEntity(map);
            return result;
        } catch (IOException e) {
            LOGGER.error(e.toString(), e);
            result.setCode(500);
            result.setMessage("上传失败！");
        }
        return result;
    }

    @GetMapping("/download")
    public String download(String fileName, HttpServletResponse response) {
        File file = new File(path+fileName);
        if (file.exists()) {
            response.setContentType("application/force-download");// 设置强制下载不打开
            response.addHeader("Content-Disposition", "attachment;fileName=" + fileName);// 设置文件名
            byte[] buffer = new byte[1024];
            FileInputStream fis = null;
            BufferedInputStream bis = null;
            try {
                fis = new FileInputStream(file);
                bis = new BufferedInputStream(fis);
                OutputStream os = response.getOutputStream();
                int i = bis.read(buffer);
                while (i != -1) {
                    os.write(buffer, 0, i);
                    i = bis.read(buffer);
                }
                return "下载成功";
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                if (bis != null) {
                    try {
                        bis.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (fis != null) {
                    try {
                        fis.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
        return "下载失败";
    }

}
