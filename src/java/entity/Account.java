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
public class Account {
    private int uID;
    private String fullName;
    private String email;
    private String pass;
    private String phone;
    private int isAdmin;

    public Account() {
    }

    public Account(int uID, String fullName, String email, String pass, String phone, int isAdmin) {
        this.uID = uID;
        this.fullName = fullName;
        this.email = email;
        this.pass = pass;
        this.phone = phone;
        this.isAdmin = isAdmin;
    }

    public int getuID() {
        return uID;
    }

    public void setuID(int uID) {
        this.uID = uID;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    @Override
    public String toString() {
        return "Account{" + "uID=" + uID + ", fullName=" + fullName + ", email=" + email + ", pass=" + pass + ", phone=" + phone + ", isAdmin=" + isAdmin + '}';
    }

    
}
