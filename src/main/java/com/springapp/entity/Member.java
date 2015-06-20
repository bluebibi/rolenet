package com.springapp.entity;

public class Member {
	char id;
	char pass;
	char nick;
	char email;
	char regist_day;
	char country;
	public char getId() {
		return id;
	}
	public void setId(char id) {
		this.id = id;
	}
	public char getPass() {
		return pass;
	}
	public void setPass(char pass) {
		this.pass = pass;
	}
	public char getNick() {
		return nick;
	}
	public void setNick(char nick) {
		this.nick = nick;
	}
	public char getEmail() {
		return email;
	}
	public void setEmail(char email) {
		this.email = email;
	}
	public char getRegist_day() {
		return regist_day;
	}
	public void setRegist_day(char regist_day) {
		this.regist_day = regist_day;
	}
	public char getCountry() {
		return country;
	}
	public void setCountry(char country) {
		this.country = country;
	}

}
