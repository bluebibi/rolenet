package com.springapp.entity;

public class BoardList {

    int uid;  //글번호
    String ugroup;  //글분류
    String utitle;  //글제목
    String ucontent;  //글내용
    String uauthor;  //작성자
    String udate;  //작성일
    
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUgroup() {
		return ugroup;
	}
	public void setUgroup(String ugroup) {
		this.ugroup = ugroup;
	}
	public String getUtitle() {
		return utitle;
	}
	public void setUtitle(String utitle) {
		this.utitle = utitle;
	}
	public String getUcontent() {
		return ucontent;
	}
	public void setUcontent(String ucontent) {
		this.ucontent = ucontent;
	}
	public String getUauthor() {
		return uauthor;
	}
	public void setUauthor(String uauthor) {
		this.uauthor = uauthor;
	}
	public String getUdate() {
		return udate;
	}
	public void setUdate(String udate) {
		this.udate = udate;
	}
    
    
}