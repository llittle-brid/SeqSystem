package entity;

import java.sql.Date;

public class ShowApplyOrganizationEntity {
    private String name;
    private String tel;
    private Date date;
    private String message;
    private String org_name;

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

    public ShowApplyOrganizationEntity() {
        this.name = name;
        this.tel = tel;
        this.date = date;
        this.message = message;
        this.org_name = org_name;
    }
}
