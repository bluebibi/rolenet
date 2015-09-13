package com.springapp.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.springapp.entity.CharactorsList;

public interface CharactorsListService {
	List<CharactorsList> selectNaverRoleByMovieId(int id);
	List<CharactorsList> selectBetweenRoleByMovieId(int id);
	List<CharactorsList> selectDegreeRoleByMovieId(int id);
	List<CharactorsList> selectHeroByActor(String actor);
}
