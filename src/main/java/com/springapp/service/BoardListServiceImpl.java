package com.springapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springapp.dao.BoardListMapper;
import com.springapp.entity.BoardList;

@Service
public class BoardListServiceImpl implements BoardListService {
	
	@Autowired
	private BoardListMapper boardListMapper;

	@Override
	public List<BoardList> list() {
		// TODO Auto-generated method stub
		return boardListMapper.list();
	}

	@Override
	public BoardList selectAllBoardContents(int uid) {
		return boardListMapper.selectBoardContentsByID(uid);
		
	}
	

	//@Override
	//public 
/*
	@Override
	public BoardList selectBoardList(int id) {
		// TODO Auto-generated method stub
		return null;
	}
	*/
	
}
