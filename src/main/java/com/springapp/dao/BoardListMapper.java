package com.springapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import com.springapp.entity.BoardList;


public interface BoardListMapper {

	final String INSERT = 
			"INSERT INTO board (ugroup,utitle,ucontent,uauthor,udate) VALUES( #{ugroup}, #{utitle},"+
					"#{ucontent}, #{uauthor}, #{udate})";

	@Select("SELECT * FROM board")
	public List<BoardList> list();
	
	
	@Select("SELECT * FROM board WHERE uid=#{uid}")
		BoardList selectBoardContentsByID(@Param("uid") int uid);



/*
	public ArrayList<BoardList> getSearchedList(@Param("page") int page,
			@Param("rowsPerPage") int rowsPerPage,
			@Param("likeThis") String strSearchThis);

	@Insert(INSERT)
	//@Options(useGeneratedKeys = true, keyProperty = "id")
	void insertBoard (BoardList boardlist);
	*/
}
