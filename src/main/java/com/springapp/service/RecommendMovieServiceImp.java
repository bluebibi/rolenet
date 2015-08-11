package com.springapp.service;

import com.springapp.dao.RecommendedMovie;
import com.springapp.entity.Recommend;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by kth on 15. 8. 11..
 */
@Service
public class RecommendMovieServiceImp implements RecommendMovieService {

    @Autowired
    RecommendedMovie recommendedMovie;
    @Override
    public Recommend selectMovieContentsByID(int id) {
        return recommendedMovie.selectMovieContentsByID(id);
    }

    @Override
    public List<Recommend> list(int id, int cluster) {
        return recommendedMovie.list(id,cluster);
    }
}
