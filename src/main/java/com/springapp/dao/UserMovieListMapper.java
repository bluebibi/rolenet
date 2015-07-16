package com.springapp.dao;

import com.springapp.entity.UserMovieList;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * Created by kth on 15. 7. 16..
 */
public interface UserMovieListMapper {

    @Select("SELECT * FROM userMovies")
    List<UserMovieList> list();

    @Select("SELECT * FROM userMovies WHERE id = #{id}")
    UserMovieList selectMovieContentsByID(@Param("id") int id);

    @Select("SELECT * FROM userMovies WHERE name = #{name}")
    UserMovieList selectMovieByName(@Param("name") String name);


    @Select("select count(*) from userMovies")
    int movieCount();

    @Select("SELECT MAX(id) FROM userMovies")
    Integer topNum();

    @Insert("insert into userMovies(id,director,synopsis,name) values(#{id},#{director},#{synopsis},#{name})")
    void insertUserMovie(@Param("id") int id,@Param("director") String director, @Param("synopsis") String synopsis, @Param("name") String name);



}
