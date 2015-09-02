package com.springapp.entity;

public class CharactorsList {
	int id;
	String name;
	int movie_id;
	int betweenRole;
	int degreeRole;
	int naverRole;
	String charactorsURL;
	String actor;

	public String getActor() {
		return actor;
	}

	public void setActor(String actor) {
		this.actor = actor;
	}

	public String getCharactorsURL() {
		return charactorsURL;
	}

	public void setCharactorsURL(String charactorsURL) {
		this.charactorsURL = charactorsURL;
	}

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
	public int getMovie_id() {
		return movie_id;
	}
	public void setMovie_id(int movie_id) {
		this.movie_id = movie_id;
	}
	public int getBetweenRole() {
		return betweenRole;
	}
	public void setBetweenRole(int betweenRole) {
		this.betweenRole = betweenRole;
	}
	public int getDegreeRole() {
		return degreeRole;
	}
	public void setDegreeRole(int degreeRole) {
		this.degreeRole = degreeRole;
	}
	public int getNaverRole() {
		return naverRole;
	}
	public void setNaverRole(int naverRole) {
		this.naverRole = naverRole;
	}

}
