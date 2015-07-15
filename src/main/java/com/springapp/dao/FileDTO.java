package com.springapp.dao;

import org.springframework.web.multipart.MultipartFile;

public class FileDTO {
    private String name, pwd, title, content, fileName;
    private MultipartFile uploadfile;
 
    public String getName() {
        return name;
    }
 
    public void setName(String name) {
        this.name = name;
    }
 
    public String getPwd() {
        return pwd;
    }
 
    public void setPwd(String pwd) {
        this.pwd = pwd;
    }
 
    public String getTitle() {
        return title;
    }
 
    public void setTitle(String title) {
        this.title = title;
    }
 
    public String getContent() {
        return content;
    }
 
    public void setContent(String content) {
        this.content = content;
    }
 
    public String getFileName() {
        return fileName;
    }
 
    public void setFileName(String fileName) {
        this.fileName = fileName;
    }
 
    public MultipartFile getUploadfile() {
        return uploadfile;
    }
 
    public void setUploadfile(MultipartFile uploadfile) {
        this.uploadfile = uploadfile;
    }
    
    public MultipartFile getFile() {
        return uploadfile;
    }
 
    public void setFile(MultipartFile uploadfile) {
        this.uploadfile = uploadfile;
    }
    
}