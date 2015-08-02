package com.springapp.entity;

public class MovieList {

    int id;
    String name;
    int year;
    String director;
    String synopsis;
    int spectators;
	int diameter;
    double pathlength;
    double clustering;
    double density;
    int hit;
	int count;
	int sumS;
	double avgD;
	double avgP;
	double avgC;
	double avgDE;
	int ordernum;
	public void setOrdernum(int ordernum) {
		this.ordernum = ordernum;
	}
	public int getOrdernum() {
		return ordernum;
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
	public String getSynopsis() {
		return synopsis;
	}
	public void setSynopsis(String synopsis) {
		this.synopsis = synopsis;
	}
	public int getSpectators() {
		return spectators;
	}
	public void setSpectators(int spectators) {
		this.spectators = spectators;
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
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
 
    

	public int getCount() {		return count;	}
	public void setCount(int count) {		this.count = count;	}

	public int getSumS() {		return sumS;	}
	public void setSumS(int sumS) {		this.sumS = sumS;	}

	public double getAvgD() {		return avgD;	}
	public void setAvgD(double avgD) {		this.avgD = avgD;	}

	public double getAvgC() {		return avgC;	}
	public void setAvgC(double avgC) {		this.avgC = avgC;	}

	public double getAvgP() {		return avgP;	}
	public void setAvgP(double avgP) {		this.avgP = avgP;	}

	public double getAvgDE() {		return avgDE;	}
	public void setAvgDE(double avgDE) {		this.avgDE = avgDE;	}
}