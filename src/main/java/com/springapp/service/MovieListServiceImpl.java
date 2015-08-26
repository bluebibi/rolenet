package com.springapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springapp.dao.MovieListMapper;
import com.springapp.entity.MovieList;

@Service
public class MovieListServiceImpl implements MovieListService {

	@Autowired
	private MovieListMapper movieListMapper;

	@Override
	public List<MovieList> list() {
		return movieListMapper.list();
	}

	@Override
	public MovieList selectMovieById(int id) {
		return movieListMapper.selectMovieContentsByID(id);
	}

	@Override
	public MovieList selectMovieByName(String name) {
		return movieListMapper.selectMovieByName(name);
	}

	@Override
	public List<MovieList> LastList() {
		return movieListMapper.LastList();
	}

	@Override
	public int movieCount() {
		return movieListMapper.movieCount();
	}

	@Override
	public void addHit(int id) {
		movieListMapper.addHit(id);
	}

	@Override
	public void addHitByName(String name) {
		movieListMapper.addHitByName(name);
	}

	@Override
	public MovieList selectMovieByHit() {
		return movieListMapper.selectMovieByHit();
	}

	@Override
	public List<MovieList> LastList15() {
		return movieListMapper.LastList15();
	}

	@Override
	public List<MovieList> year2000() {
		return movieListMapper.year2000();
	}

	@Override
	public List<MovieList> year2005() {
		return movieListMapper.year2005();
	}

	@Override
	public List<MovieList> year2010() {
		return movieListMapper.year2010();
	}

	@Override
	public List<MovieList> year2015() {
		return movieListMapper.year2015();
	}

	@Override
	public List<MovieList> Dlist() {
		return movieListMapper.Dlist();
	}

	@Override
	public List<MovieList> selectMovieByDirector(String director) {
		return movieListMapper.selectMovieByDirector(director);
	}

	@Override
	public List<MovieList> selectMovieByDirector(String director, int id) {
		return movieListMapper.selectMovieByDirector(director,id);
	}

	@Override
	public List<MovieList> LastList15bySpectators() {
		return movieListMapper.LastList15bySpectators();
	}

	@Override
	public List<MovieList> list_jangwon(int id_1,int id_2) {
		// TODO Auto-generated method stub
		return movieListMapper.list_jangwon(id_1, id_2);
	}

	@Override
	public List<MovieList> list_limit(int idx, int offset) {
		// TODO Auto-generated method stub
		return movieListMapper.list_limit(idx, offset);
	}


}