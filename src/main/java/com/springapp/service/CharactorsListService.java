package com.springapp.service;

import java.util.List;


import com.springapp.entity.CharactorsList;

public interface CharactorsListService {
	List<CharactorsList> selectNaverRoleByMovieId(int id);
	List<CharactorsList> selectBetweenRoleByMovieId(int id);
	List<CharactorsList> selectDegreeRoleByMovieId(int id);
	int maxCluster(int id);
	List<CharactorsList> selectClusterCharactors(int cluster, int id);
	List<CharactorsList> selectHeroByActor(String actor);

}
