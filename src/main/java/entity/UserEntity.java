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
    private byte gender;
    private String address;
    private String introduce;
    private java.sql.Date dob;
    private String mail;
    private String qq;
    private String tel;
    private String photo;

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

    public byte getGender() {
        return gender;
    }

    public void setGender(byte gender) {
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

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public UserEntity(int id_user, String password, String name, byte gender, String address, String introduce, java.sql.Date dob, String mail, String qq, String tel, String photo) {
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
        this.photo = photo;
    }

    public UserEntity() {
    }
}
