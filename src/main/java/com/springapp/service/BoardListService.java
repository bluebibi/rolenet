package com.springapp.service;

import java.util.List;

import com.springapp.entity.BoardList;

public interface BoardListService {

	List<BoardList> list();

	BoardList selectAllBoardContents(int uid);
	
	//BoardList selectBoardList(int id);
	
	//BoardList selectCharactorsById(int id);
}