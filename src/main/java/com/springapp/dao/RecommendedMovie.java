package com.springapp.dao;


import com.springapp.entity.Recommend;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * Created by kth on 15. 8. 11..
 */
public interface RecommendedMovie {

    @Select("SELECT * FROM recommendedMovie WHERE movie_id = #{id}")
    Recommend selectMovieContentsByID(@Param("id") int id);

    @Select("SELECT * FROM recommendedMovie WHERE movie_id != #{id} and cluster = #{cluster}")
    List<Recommend> list(@Param("id") int id, @Param("cluster") int cluster);
}
