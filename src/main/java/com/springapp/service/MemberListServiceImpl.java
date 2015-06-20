package com.springapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springapp.dao.MemberMapper;
import com.springapp.entity.Member;
import com.springapp.entity.MovieList;

@Service
public class MemberListServiceImpl implements MemberListService {

	@Autowired
	private MemberMapper memberMapper;

	@Override
	public List<Member> list() {
		return memberMapper.list();
	}

	@Override
	public MovieList selectMemberByID(int id) {
		return memberMapper.selectMemberByID(id);
	}

	@Override
	public int memberCount() {
		return memberMapper.memberCount();
	}

	@Override
	public void insertMember() {
		memberMapper.insertMember();
	}
}
