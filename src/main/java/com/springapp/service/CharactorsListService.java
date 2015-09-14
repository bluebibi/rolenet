package com.springapp.service;

import java.util.List;


import com.springapp.entity.CharactorsList;

public interface CharactorsListService {
	List<CharactorsList> selectNaverRoleByMovieId(int id);
	List<CharactorsList> selectBetweenRoleByMovieId(int id);
	List<CharactorsList> selectDegreeRoleByMovieId(int id);
<<<<<<< HEAD
	int maxCluster(int id);
	List<CharactorsList> selectClusterCharactors(int cluster, int id);
	List<CharactorsList> selectHeroByActor(String actor);

=======
	List<CharactorsList> selectHeroByActor(String actor);
>>>>>>> dbb4e4388db0443d2523185f04d64bf5ba9a8aea
}
