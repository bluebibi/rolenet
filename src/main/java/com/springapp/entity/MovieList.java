package com.springapp.entity;

public class MovieList {

    int id;
    String name;
    int year;
    String director;
    String synopsis;
    public String getSynopsis() {
		return synopsis;
	}
	public void setSynopsis(String synopsis) {
		this.synopsis = synopsis;
	}
	int spectators;
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
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public int getSpectators() {
		return spectators;
	}
	public void setSpectators(int spectators) {
		this.spectators = spectators;
	}
    
    
}