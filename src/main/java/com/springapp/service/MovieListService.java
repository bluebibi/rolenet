package com.springapp.service;

import java.util.List;

import com.springapp.entity.MovieList;

public interface MovieListService {

    List<MovieList> list();

    MovieList selectMovieById(int id);

    MovieList selectMovieByName(String name);

    List<MovieList> LastList();

    List<MovieList> LastList15();

    int movieCount();

    void addHit(int id);

    void addHitByName(String name);

    MovieList selectMovieByHit();

    List<MovieList> year2000();

    List<MovieList> year2005();

    List<MovieList> year2010();

    List<MovieList> year2015();

    List<MovieList> Dlist();

    List<MovieList> selectMovieByDirector(String director);

    List<MovieList> LastList15bySpectators();
}