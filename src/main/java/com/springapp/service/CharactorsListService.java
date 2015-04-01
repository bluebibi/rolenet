package com.springapp.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.springapp.entity.CharactorsList;

public interface CharactorsListService {
	List<CharactorsList> selectNaverRoleByMovieId(@Param("id") int id);
	List<CharactorsList> selectBetweenRoleByMovieId(@Param("id") int id);
	List<CharactorsList> selectDegreeRoleByMovieId(@Param("id") int id);
}
