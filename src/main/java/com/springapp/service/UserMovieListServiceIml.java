package com.springapp.service;

/**
 * Created by kth on 15. 7. 16..
 */
import java.util.List;

import com.springapp.dao.UserMovieListMapper;
import com.springapp.entity.UserMovieList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class UserMovieListServiceIml implements UserMovieListService {
    @Autowired
    private UserMovieListMapper usermovieListMapper;

    public List<UserMovieList> list(){
        return usermovieListMapper.list();
    }

    @Override
    public UserMovieList selectMovieById(int id){
        return usermovieListMapper.selectMovieContentsByID(id);

    }

    @Override
    public UserMovieList selectMovieByName(String name){
        return  usermovieListMapper.selectMovieByName(name);
    }

    @Override
    public int movieCount(){
        return usermovieListMapper.movieCount();

    }

    @Override
    public void insertUserMovie(int id,String director, String synopsis,String name){
        System.out.println("name = " + name);
        System.out.println("director = " + director);
        System.out.println("synopsis = " + synopsis);
        usermovieListMapper.insertUserMovie(id,director,synopsis,name);
    }

    @Override
    public Integer topNum(){
        Integer k = usermovieListMapper.topNum();
        if(k == null){
            return 0;
        } else{
            return k;
        }
    }
}
