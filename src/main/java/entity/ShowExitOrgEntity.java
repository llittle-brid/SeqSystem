package entity;

import java.sql.Date;

public class ShowExitOrgEntity {
    private String name;
    private int id_organization;
    private Date time;
    private String user_name;
    private int num_user;
    private int num_project;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getId_organization() {
        return id_organization;
    }

    public void setId_organization(int id_organization) {
        this.id_organization = id_organization;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public int getNum_user() {
        return num_user;
    }

    public void setNum_user(int num_user) {
        this.num_user = num_user;
    }

    public int getNum_project() {
        return num_project;
    }

    public void setNum_project(int num_project) {
        this.num_project = num_project;
    }

    public ShowExitOrgEntity() {
        this.name = name;
        this.id_organization = id_organization;
        this.time = time;
        this.user_name = user_name;
        this.num_user = num_user;
        this.num_project = num_project;
    }
}
