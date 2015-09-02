package com.springapp.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.springapp.entity.MovieList;

public interface MovieListMapper {

	@Select("SELECT * FROM movies")
	List<MovieList> list();
	
	@Select("SELECT * FROM movies WHERE id >= #{id_1} AND id < #{id_2}")
	List<MovieList> list_jangwon(@Param("id_1") int id_1, @Param("id_2") int id_2);
	
	@Select("SELECT * FROM movies LIMIT #{idx}, #{offset}")
	List<MovieList> list_limit(@Param("idx") int idx, @Param("offset") int offset);
	

	@Select("SELECT * FROM movies WHERE id = #{id}")
	MovieList selectMovieContentsByID(@Param("id") int id);

	@Select("SELECT * FROM movies WHERE name = #{name}")
	MovieList selectMovieByName(@Param("name") String name);

	@Select("SELECT * FROM movies ORDER BY year DESC LIMIT 5")
	List<MovieList> LastList();
	
	@Select("SELECT * FROM movies ORDER BY year DESC LIMIT 15")
	List<MovieList> LastList15();
	
	@Select("SELECT * FROM movies ORDER BY spectators DESC LIMIT 15")
	List<MovieList> LastList15bySpectators();
	
	@Select("select count(*) from movies")
	int movieCount();
	
	@Select("select * from movies where year > 1900 and year <= 2000")
	List<MovieList> year2000();
	
	@Select("select * from movies where year > 2000 and year <= 2005")
	List<MovieList> year2005();
	
	@Select("select * from movies where year > 2005 and year <= 2010")
	List<MovieList> year2010();
	
	@Select("select * from movies where year > 2010 and year <= 2015")
	List<MovieList> year2015();
	
	@Select("select * from movies order by hit desc limit 1")
	MovieList selectMovieByHit();
	
	@Update("UPDATE movies SET hit= hit + 1 where id = #{id}")
	void addHit(@Param("id") int id);
	
	@Update("UPDATE movies SET hit= hit + 1 where name = #{name}")
	void addHitByName(@Param("name") String name);

	@Select("SELECT id, director, count(director) as count,sum(spectators) as sumS, avg(diameter) as avgD, avg(pathlength) as avgP, avg(clustering) as avgC, avg(density) as avgDE FROM 9th.movies group by director order BY movies.director asc")
	List<MovieList> dist();

	@Select("SELECT * from 9th.movies where director = (SELECT director from 9th.movies where id=#{id})")
	List<MovieList> selectMovieByDirector2(@Param("id") int id);

	@Select("SELECT * from movies where director = #{director}")
	List<MovieList> selectMovieByDirector(@Param("director") String director);
	
}
