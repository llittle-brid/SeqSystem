package entity;

import java.util.Date;

/**
 * Created by DELL on 2017/11/28.
 *
 * @author MJY
 */
public class UserEntity {
    private int id_user;
    private String password;
    private String name;
    private String gender;
    private String address;
    private String introduce;
    private java.sql.Date dob;
    private String mail;
    private String qq;
    private String tel;
    private int status;
    public int getId_user() {
        return id_user;
    }

    public void setId_user(int id_user) {
        this.id_user = id_user;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    public java.sql.Date getDob() {
        return dob;
    }

    public void setDob(java.sql.Date dob) {
        this.dob = dob;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public UserEntity() {
        this.id_user = id_user;
        this.password = password;
        this.name = name;
        this.gender = gender;
        this.address = address;
        this.introduce = introduce;
        this.dob = dob;
        this.mail = mail;
        this.qq = qq;
        this.tel = tel;
        this.status = status;
    }
}
