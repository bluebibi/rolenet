package com.springapp.service;

import com.springapp.entity.Recommend;

import java.util.List;

/**
 * Created by kth on 15. 8. 11..
 */
public interface RecommendMovieService {
    Recommend selectMovieContentsByID(int id);
    List<Recommend> list(int id, int cluster);
}
