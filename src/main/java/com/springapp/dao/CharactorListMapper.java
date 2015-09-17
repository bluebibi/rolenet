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
	@Select("SELECT max(cluster) FROM   9th.charactors WHERE  cluster=(SELECT MAX(cluster) FROM 9th.charactors WHERE movie_id = #{id}) and movie_id = #{id};")
	int maxCluster(@Param("id") int id);
	@Select("SELECT * FROM charactors where cluster = #{cluster} and movie_id = #{id}")
	List<CharactorsList> selectClusterCharactors(@Param("cluster") int cluster, @Param("id") int id);
	@Select("SELECT * FROM charactors WHERE actor=#{actor}")
	List<CharactorsList> selectHeroByActor(@Param("actor") String actor);
}
