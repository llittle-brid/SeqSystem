package entity;

import java.sql.Timestamp;

public class ApplyOrganizationEntity {
    private int id_org_apply;
    private int id_user;
    private String org_name;
    private Timestamp date;
    private String message;
    private String tel;

    public int getId_org_apply() {
        return id_org_apply;
    }

    public void setId_org_apply(int id_org_apply) {
        this.id_org_apply = id_org_apply;
    }

    public int getId_user() {
        return id_user;
    }

    public void setId_user(int id_user) {
        this.id_user = id_user;
    }

    public String getOrg_name() {
        return org_name;
    }

    public void setOrg_name(String org_name) {
        this.org_name = org_name;
    }

    public Timestamp getDate() {
        return date;
    }

    public void setDate(Timestamp date) {
        this.date = date;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public ApplyOrganizationEntity(int id_org_apply, int id_user, String org_name, Timestamp date, String message, String tel) {
        this.id_org_apply = id_org_apply;
        this.id_user = id_user;
        this.org_name = org_name;
        this.date = date;
        this.message = message;
        this.tel = tel;
    }

    public ApplyOrganizationEntity() {
    }
}
