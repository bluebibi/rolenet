package com.springapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.springapp.entity.MovieList;

public interface MovieListMapper {

	@Select("SELECT * FROM movies")
	public List<MovieList> list();

	@Select("SELECT * FROM movies WHERE id = #{id}")
	MovieList selectMovieContentsByID(@Param("id") int id);

	@Select("SELECT * FROM movies WHERE name = #{name}")
	MovieList selectMovieByName(@Param("name") String name);

	@Select("SELECT * FROM movies ORDER BY id DESC LIMIT 5")
	public List<MovieList> LastList();
	
	@Select("select count(*) from movies")
	public int movieCount();
	
	@Select("select * from movies order by hit desc limit 1")
	public MovieList selectMovieByHit();
	
	@Update("UPDATE movies SET hit= hit + 1 where id = #{id}")
	public void addHit(@Param("id") int id);
	
	@Update("UPDATE movies SET hit= hit + 1 where id = #{name}")
	public void addHitByName(@Param("name") String name);
}
