/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author phanh
 */
public class Movie {
    private int ID;
    private String name;
    private String Discription;
    private String Director;
    private String poster_path;
    private String path;
    private int cateID;

    public Movie() {
    }

    public Movie(int ID, String name, String Discription, String Director, String poster_path, String path, int cateID) {
        this.ID = ID;
        this.name = name;
        this.Discription = Discription;
        this.Director = Director;
        this.poster_path = poster_path;
        this.path = path;
        this.cateID = cateID;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDiscription() {
        return Discription;
    }

    public void setDiscription(String Discription) {
        this.Discription = Discription;
    }

    public String getDirector() {
        return Director;
    }

    public void setDirector(String Director) {
        this.Director = Director;
    }

    public String getPoster_path() {
        return poster_path;
    }

    public void setPoster_path(String poster_path) {
        this.poster_path = poster_path;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public int getCateID() {
        return cateID;
    }

    public void setCateID(int cateID) {
        this.cateID = cateID;
    }

    @Override
    public String toString() {
        return "Movie{" + "ID=" + ID + ", name=" + name + ", Discription=" + Discription + ", Director=" + Director + ", poster_path=" + poster_path + ", path=" + path + ", cateID=" + cateID + '}';
    }

    
}
