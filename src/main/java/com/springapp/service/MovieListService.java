package com.springapp.service;

import java.util.List;

import com.springapp.entity.MovieList;

public interface MovieListService {

	List<MovieList> list();
	public MovieList selectMovieById(int id);
	public MovieList selectMovieByName(String name);
	public List<MovieList> LastList();
	public List<MovieList> LastList15();
	public int movieCount();
	public void addHit(int id);
	public void addHitByName(String name);
	public MovieList selectMovieByHit();
	public List<MovieList> year2000();
	public List<MovieList> year2005();
	public List<MovieList> year2010();
	public List<MovieList> year2015();
	public List<MovieList> Dlist();
	public List<MovieList> selectMovieByDirector(String director);
	public List<MovieList> LastList15bySpectators();
}