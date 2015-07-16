package com.springapp.entity;

/**
 * Created by kth on 15. 7. 16..
 */
public class UserMovieList {
    int id;
    String name;
    String director;
    String synopsis;
    int diameter;
    double pathlength;
    double clustering;
    double density;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public String getSynopsis() {
        return synopsis;
    }

    public void setSynopsis(String synopsis) {
        this.synopsis = synopsis;
    }

    public int getDiameter() {
        return diameter;
    }

    public void setDiameter(int diameter) {
        this.diameter = diameter;
    }

    public double getPathlength() {
        return pathlength;
    }

    public void setPathlength(double pathlength) {
        this.pathlength = pathlength;
    }

    public double getClustering() {
        return clustering;
    }

    public void setClustering(double clustering) {
        this.clustering = clustering;
    }

    public double getDensity() {
        return density;
    }

    public void setDensity(double density) {
        this.density = density;
    }

}
