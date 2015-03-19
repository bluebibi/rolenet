package com.springapp.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.springapp.entity.MovieList;

public interface MovieListService {

	List<MovieList> list();
	public MovieList selectMovieById(int id);
	public MovieList selectMovieByName(String name);
	public List<MovieList> LastList();
	public int movieCount();
	public void addHit(int id);
	public void addHitByName(String name);
	public MovieList selectMovieByHit();
}