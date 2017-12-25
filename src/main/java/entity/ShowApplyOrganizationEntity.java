package entity;

import java.sql.Date;

public class ShowApplyOrganizationEntity {
    private String name;
    private String tel;
    private Date date;
    private String message;
    private String org_name;
    private String state;
    private int id_user;
    private int id_org_apply;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getOrg_name() {
        return org_name;
    }

    public void setOrg_name(String org_name) {
        this.org_name = org_name;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public int getId_user() {
        return id_user;
    }

    public void setId_user(int id_user) {
        this.id_user = id_user;
    }

    public int getId_org_apply() {
        return id_org_apply;
    }

    public void setId_org_apply(int id_org_apply) {
        this.id_org_apply = id_org_apply;
    }

    public ShowApplyOrganizationEntity() {
        this.name = name;
        this.tel = tel;
        this.date = date;
        this.message = message;
        this.org_name = org_name;
        this.state = state;
        this.id_user = id_user;
        this.id_org_apply = id_org_apply;
    }
}
