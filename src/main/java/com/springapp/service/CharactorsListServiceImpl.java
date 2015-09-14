package com.springapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springapp.dao.CharactorListMapper;
import com.springapp.entity.CharactorsList;
@Service
public class CharactorsListServiceImpl implements CharactorsListService {
	
	@Autowired
	private CharactorListMapper charactorListMapper;

	@Override
	public List<CharactorsList> selectNaverRoleByMovieId(int id) {	
		return charactorListMapper.selectNaverRoleByMovieId(id);
	}

	@Override
	public List<CharactorsList> selectBetweenRoleByMovieId(int id) {
		return charactorListMapper.selectBetweenRoleByMovieId(id);
	}

	@Override
	public List<CharactorsList> selectDegreeRoleByMovieId(int id) {
		return charactorListMapper.selectDegreeRoleByMovieId(id);
	}

	@Override
	public int maxCluster(int id) {
		return charactorListMapper.maxCluster(id);
	}

	@Override
	public List<CharactorsList> selectClusterCharactors(int cluster, int id) {
		return charactorListMapper.selectClusterCharactors(cluster,id);
	}
	@Override
	public List<CharactorsList> selectHeroByActor(String actor) {
		return charactorListMapper.selectHeroByActor(actor);
	}


}
