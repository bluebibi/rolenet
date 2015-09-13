package com.springapp.service;


import com.springapp.entity.UserMovieList;


import java.util.List;

/**
 * Created by kth on 15. 7. 16..
 */
public interface UserMovieListService {
    List<UserMovieList> list();

    public UserMovieList selectMovieById(int id);

    public UserMovieList selectMovieByName(String name);


    public int movieCount();

    public void insertUserMovie(int id,String director, String synopsis,String name);

    public Integer topNum();
}
