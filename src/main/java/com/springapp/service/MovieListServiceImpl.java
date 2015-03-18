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
		// TODO Auto-generated method stub
		return movieListMapper.list();
	}
	
	@Override
	public MovieList selectMovieById(int id){
		return movieListMapper.selectMovieContentsByID(id);
	}
	
	@Override
	public MovieList selectMovieByName(String name){
		System.out.println(name + "한글깨짐??");
		return movieListMapper.selectMovieByName(name);
	}
}
