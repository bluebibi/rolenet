package com.springapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.springapp.entity.CharactorsList;

public interface CharactorListMapper {
	@Select("select * from charactors where movie_id=#{id} and naverRole=1")
	List<CharactorsList> selectNaverRoleByMovieId(@Param("id") int id);
	@Select("select * from charactors where movie_id=#{id} and betweenRole=1")
	List<CharactorsList> selectBetweenRoleByMovieId(@Param("id") int id);
	@Select("select * from charactors where movie_id=#{id} and degreeRole=1")
	List<CharactorsList> selectDegreeRoleByMovieId(@Param("id") int id);
	@Select("slect * from charactors where id = #{id}")
	CharactorsList selectById(@Param("id") int id);
}
