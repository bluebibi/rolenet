package com.springapp.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.springapp.entity.Member;
import com.springapp.entity.MovieList;

public interface MemberListService {
	public List<Member> list();
	MovieList selectMemberByID(@Param("id") int id);
	public int memberCount();
	public void insertMember();
}
