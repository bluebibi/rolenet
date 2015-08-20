package com.springapp.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.springapp.entity.MovieList;

public interface MovieListMapper {

	@Select("SELECT * FROM movies")
	public List<MovieList> list();
	
	@Select("SELECT * FROM movies WHERE id >= #{id_1} AND id < #{id_2}")
	public List<MovieList> list_jangwon(@Param("id_1") int id_1, @Param("id_2") int id_2);
	
	@Select("SELECT * FROM movies LIMIT #{idx}, #{offset}")
	public List<MovieList> list_limit(@Param("idx") int idx, @Param("offset") int offset);
	

	@Select("SELECT * FROM movies WHERE id = #{id}")
	MovieList selectMovieContentsByID(@Param("id") int id);

	@Select("SELECT * FROM movies WHERE name = #{name}")
	MovieList selectMovieByName(@Param("name") String name);

	@Select("SELECT * FROM movies ORDER BY year DESC LIMIT 5")
	public List<MovieList> LastList();
	
	@Select("SELECT * FROM movies ORDER BY year DESC LIMIT 15")
	public List<MovieList> LastList15();
	
	@Select("SELECT * FROM movies ORDER BY spectators DESC LIMIT 15")
	public List<MovieList> LastList15bySpectators();
	
	@Select("select count(*) from movies")
	public int movieCount();
	
	@Select("select * from movies where year > 1900 and year <= 2000")
	public List<MovieList> year2000();
	
	@Select("select * from movies where year > 2000 and year <= 2005")
	public List<MovieList> year2005();
	
	@Select("select * from movies where year > 2005 and year <= 2010")
	public List<MovieList> year2010();
	
	@Select("select * from movies where year > 2010 and year <= 2015")
	public List<MovieList> year2015();
	
	@Select("select * from movies order by hit desc limit 1")
	public MovieList selectMovieByHit();
	
	@Update("UPDATE movies SET hit= hit + 1 where id = #{id}")
	public void addHit(@Param("id") int id);
	
	@Update("UPDATE movies SET hit= hit + 1 where name = #{name}")
	public void addHitByName(@Param("name") String name);

	@Select("SELECT director, count(director) as count,sum(spectators) as sumS, avg(diameter) as avgD, avg(pathlength) as avgP, avg(clustering) as avgC, avg(density) as avgDE FROM 9th.movies group by director order BY movies.director asc")
	public List<MovieList> Dlist();

	@Select("SELECT * from 9th.movies where director = #{director}")
	public List<MovieList> selectMovieByDirector(@Param("director") String director);
	
	
	
}
