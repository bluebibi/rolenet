package com.springapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.springapp.entity.MovieList;

public interface MovieListMapper {

	@Select("SELECT * FROM movies")
	public List<MovieList> list();

	@Select("SELECT * FROM movies WHERE id = #{id}")
	MovieList selectMovieContentsByID(@Param("id") int id);
	
	@Select("SELECT * FROM movies WHERE name = #{name}")
	MovieList selectMovieByName(@Param("name") String name);

}
