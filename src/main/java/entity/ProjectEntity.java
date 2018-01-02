package entity;

import java.sql.Date;
import java.util.List;

public class ProjectEntity {
    private int id_Project;
    private String name;
    private Date date;
    private String document_Name;
    private int state;
    private int id_Organization;
    private String intro;
    private String orgName;

    private int id_User;
    private String username;
    private  int rank;

    public ProjectEntity() {
    }

    public ProjectEntity(int id_Project, String name, Date date, String document_Name, int state, int id_Organization, String intro, String orgName,int id_User,int rank) {
        this.id_Project = id_Project;
        this.name = name;
        this.date = date;
        this.document_Name = document_Name;
        this.state = state;
        this.id_Organization = id_Organization;
        this.intro = intro;
        this.orgName = orgName;
        this.id_User = id_User;
        this.rank = rank;
    }

    public int getId_Project() {
        return id_Project;
    }

    public void setId_Project(int id_Project) {
        this.id_Project = id_Project;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getDocument_Name() {
        return document_Name;
    }

    public void setDocument_Name(String document_Name) {
        this.document_Name = document_Name;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public int getId_Organization() {
        return id_Organization;
    }

    public void setId_Organization(int id_Organization) {
        this.id_Organization = id_Organization;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    public String getOrgName() {
        return orgName;
    }

    public void setOrgName(String orgName) {
        this.orgName = orgName;
    }

    public int getId_User() {
        return id_User;
    }

    public void setId_User(int id_User) {
        this.id_User = id_User;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getRank() {
        return rank;
    }

    public void setRank(int rank) {
        this.rank = rank;
    }
}
