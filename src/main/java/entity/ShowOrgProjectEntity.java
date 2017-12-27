package entity;

import java.util.Date;

public class ShowOrgProjectEntity {
    private int id_project;
    private String project_name;
    private Date date;
    private String document_name;
    private int state;
    private int id_organization;
    private String intro;
    private int id_user;
    private int rank;
    private String user_name;
    private String tel;
    private String mail;

    public int getId_project() {
        return id_project;
    }

    public void setId_project(int id_project) {
        this.id_project = id_project;
    }

    public String getProject_name() {
        return project_name;
    }

    public void setProject_name(String project_name) {
        this.project_name = project_name;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getDocument_name() {
        return document_name;
    }

    public void setDocument_name(String document_name) {
        this.document_name = document_name;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public int getId_organization() {
        return id_organization;
    }

    public void setId_organization(int id_organization) {
        this.id_organization = id_organization;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    public int getId_user() {
        return id_user;
    }

    public void setId_user(int id_user) {
        this.id_user = id_user;
    }

    public int getRank() {
        return rank;
    }

    public void setRank(int rank) {
        this.rank = rank;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public ShowOrgProjectEntity(int id_project, String project_name, Date date, String document_name, int state, int id_organization, String intro, int id_user, int rank, String user_name, String tel, String mail) {
        this.id_project = id_project;
        this.project_name = project_name;
        this.date = date;
        this.document_name = document_name;
        this.state = state;
        this.id_organization = id_organization;
        this.intro = intro;
        this.id_user = id_user;
        this.rank = rank;
        this.user_name = user_name;
        this.tel = tel;
        this.mail = mail;
    }

    public ShowOrgProjectEntity() {
    }
}
