/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import context.DBContext;
import entity.Account;
import entity.Movie;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author phanh
 */
public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public Account login(String email, String pass) {
        String query = "select * from Account\n"
                + "where [email] = ?"
                + " and [pass] = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Account checkAccountExist(String email) {
        String query = "select * from Account\n"
                + "where [email] = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public List<Account> getAllAccount(){
        List<Account> list = new ArrayList<>();
        String sql = "select * from Account";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void editProfileUser(String id, String fullName, String email, String phone) {
        String query = "update Account\n"
                + "set [fullName] = ?,\n"
                + "[email] = ?,\n"
                + "[phone] = ?\n"
                + "where [uID] = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, fullName);
            ps.setString(2, email);
            ps.setString(3, phone);
            ps.setString(4, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public String findAccountByEmail(String email) {
        String query = "select [email] from Account\n"
                + "where [email] = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getString(1);
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void signup(String fullName, String email, String pass, String phone) {
        String query = "insert into Account\n"
                + "values(?, ?, ?, ?, 0)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, fullName);
            ps.setString(2, email);
            ps.setString(3, pass);
            ps.setString(4, phone);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<Movie> getAllMovie() {
        List<Movie> list = new ArrayList<>();
        String query = "select * from Movie_List\n"
                + "where [cate] = 'Phim'";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Movie(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9)));
            }
        } catch (Exception e) {
        }

        return list;
    }
    
    public List<Movie> getAllM() {
        List<Movie> list = new ArrayList<>();
        String query = "select * from Movie_List\n";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Movie(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9)));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public List<Movie> getAllTVShows() {
        List<Movie> list = new ArrayList<>();
        String query = "select * from Movie_List\n"
                + "where [cate] = 'TV Shows'";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Movie(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9)));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public Movie getMovieById(String id) {
        String query = "select * from Movie_List\n"
                + "where id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Movie(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Movie getLast() {
        String query = "select top 1 * from Movie_List\n"
                + "order by id desc";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Movie(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Movie> getAllTVShowsByCate(String cate) {
        List<Movie> list = new ArrayList<>();
        String query = "select * from Movie_List\n"
                + "where [cateOfCate] = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, cate);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Movie(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9)));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public Movie getLastTVShow() {
        String query = "select top 1 * from Movie_List\n"
                + "where [cate] = 'TV Shows'\n"
                + "order by id desc";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Movie(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Movie> getAllMovieByCate(String cate) {
        List<Movie> list = new ArrayList<>();
        String query = "select * from Movie_List\n"
                + "where [cateOfCate] = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, cate);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Movie(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9)));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public Movie getLastMovie() {
        String query = "select top 1 * from Movie_List\n"
                + "where [cate] = 'Phim'\n"
                + "order by id desc";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Movie(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void updatePassword(String email, String pass) {
        String query = "update Account\n"
                + "set [pass] = ?\n"
                + "where [email] = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(2, email);
            ps.setString(1, pass);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public List<List<Movie>> searchByName (String name) {
        List<Movie> listM = new ArrayList<>();
        List<Movie> listTV = new ArrayList<>();
        List<List<Movie>> list = new ArrayList<>();
        String query = "SELECT * FROM Movie_List WHERE Movie_name like  ? ";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "[" + name + "]" + "[A-za-z ]%");
            rs = ps.executeQuery();
            while ( rs.next() ) {
                if ( rs.getString(8).equals("Phim") ) {
                    listM.add(new Movie(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9)));
                } else {
                    listTV.add(new Movie(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9)));
                }
            }
            list.add(listM);
            list.add(listTV);
        } catch ( Exception e ) {
        }
        return list;
    }

    public List<Movie> searchBycateOfCate (List<Movie> list, String cateOfCate) {
        List<Movie> moviesBycateOfCate = new ArrayList<>();
        for ( Movie movie : list ) {
            if ( movie.getCateOfCate().equals(cateOfCate) ) {
                moviesBycateOfCate.add(movie);
            }
        }
        return moviesBycateOfCate;
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
        List<Movie> list = dao.getAllM();
        for(Movie acc: list){
            System.out.println(acc);
        }
    }
}
