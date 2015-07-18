package com.springapp.service;


import com.springapp.entity.UserMovieList;


import java.util.List;

/**
 * Created by kth on 15. 7. 16..
 */
public interface UserMovieListService {
    List<UserMovieList> list();

    UserMovieList selectMovieById(int id);

    UserMovieList selectMovieByName(String name);

    int movieCount();

    void insertUserMovie(int id, String director, String synopsis, String name);

    Integer topNum();
}
