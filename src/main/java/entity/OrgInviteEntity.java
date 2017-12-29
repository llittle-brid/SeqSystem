package entity;

import java.util.Date;

public class OrgInviteEntity {
    private int ID_ORG_USER_APPLY;
    private int ID_ORGANIZATION;
    private int ID_USER;
    private Date DATE;
    private String MESSAGE;
    private int STATE;
    private String USER_NAME;
    private String ORG_NAME;

    public int getID_ORG_USER_APPLY() {
        return ID_ORG_USER_APPLY;
    }

    public void setID_ORG_USER_APPLY(int ID_ORG_USER_APPLY) {
        this.ID_ORG_USER_APPLY = ID_ORG_USER_APPLY;
    }

    public int getID_ORGANIZATION() {
        return ID_ORGANIZATION;
    }

    public void setID_ORGANIZATION(int ID_ORGANIZATION) {
        this.ID_ORGANIZATION = ID_ORGANIZATION;
    }

    public int getID_USER() {
        return ID_USER;
    }

    public void setID_USER(int ID_USER) {
        this.ID_USER = ID_USER;
    }

    public Date getDATE() {
        return DATE;
    }

    public void setDATE(Date DATE) {
        this.DATE = DATE;
    }

    public String getMESSAGE() {
        return MESSAGE;
    }

    public void setMESSAGE(String MESSAGE) {
        this.MESSAGE = MESSAGE;
    }

    public int getSTATE() {
        return STATE;
    }

    public void setSTATE(int STATE) {
        this.STATE = STATE;
    }

    public String getUSER_NAME() {
        return USER_NAME;
    }

    public void setUSER_NAME(String USER_NAME) {
        this.USER_NAME = USER_NAME;
    }

    public String getORG_NAME() {
        return ORG_NAME;
    }

    public void setORG_NAME(String ORG_NAME) {
        this.ORG_NAME = ORG_NAME;
    }

    public OrgInviteEntity(int ID_ORG_USER_APPLY, int ID_ORGANIZATION, int ID_USER, Date DATE, String MESSAGE, int STATE, String USER_NAME, String ORG_NAME) {
        this.ID_ORG_USER_APPLY = ID_ORG_USER_APPLY;
        this.ID_ORGANIZATION = ID_ORGANIZATION;
        this.ID_USER = ID_USER;
        this.DATE = DATE;
        this.MESSAGE = MESSAGE;
        this.STATE = STATE;
        this.USER_NAME = USER_NAME;
        this.ORG_NAME = ORG_NAME;
    }

    public OrgInviteEntity() {
    }
}
