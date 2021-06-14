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
    private String title;
    private String Director;
    private String poster_path;
    private String path;
    private String cate;
    private String cateOfCate;

    public Movie() {
    }

    public Movie(int ID, String name, String Discription, String title, String Director, String poster_path, String path, String cate, String cateOfCate) {
        this.ID = ID;
        this.name = name;
        this.Discription = Discription;
        this.title = title;
        this.Director = Director;
        this.poster_path = poster_path;
        this.path = path;
        this.cate = cate;
        this.cateOfCate = cateOfCate;
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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
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

    public String getCate() {
        return cate;
    }

    public void setCate(String cate) {
        this.cate = cate;
    }

    public String getCateOfCate() {
        return cateOfCate;
    }

    public void setCateOfCate(String cateOfCate) {
        this.cateOfCate = cateOfCate;
    }

    @Override
    public String toString() {
        return "Movie{" + "ID=" + ID + ", name=" + name + ", Discription=" + Discription + ", title=" + title + ", Director=" + Director + ", poster_path=" + poster_path + ", path=" + path + ", cate=" + cate + ", cateOfCate=" + cateOfCate + '}';
    }

    
}
