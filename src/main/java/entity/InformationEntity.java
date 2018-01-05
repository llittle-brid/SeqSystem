package entity;

import java.sql.Date;

public class InformationEntity {
    private String ORG_NAME;
    private  Integer ID_ORGANIZATION;
    private int ID_USER;
    private Date date;
    private int STATE;
    private String MESSAGE;
    private String PRO_NAME;
    private  Integer ID_PROJECT;

    public String getORG_NAME() {
        return ORG_NAME;
    }
    public void setORG_NAME(String ORG_NAME){
        this.ORG_NAME = ORG_NAME;
    }

    public String getPRO_NAME() {
        return PRO_NAME;
    }
    public void setPRO_NAME(String PRO_NAME){
        this.PRO_NAME = PRO_NAME;
    }

    public Date getdate() {
        return date;
    }
    public void setdate(Date date){
        this.date = date;
    }

    public int getID_USER() {
        return ID_USER;
    }
    public void setID_USER(int ID_USER){
        this.ID_USER = ID_USER;
    }

    public Integer getID_ORGANIZATION() {
        return ID_ORGANIZATION;
    }
    public void setID_ORGANIZATION(Integer ID_ORGANIZATION){
        this.ID_ORGANIZATION = ID_ORGANIZATION;
    }

    public Integer getID_PROJECT() {
        return ID_PROJECT;
    }
    public void setID_PROJECT( Integer ID_PROJECT){
        this.ID_PROJECT = ID_PROJECT;
    }

    public int getSTATE() {
        return STATE;
    }
    public void setSTATE(int STATE){
        this.STATE = STATE;
    }

    public String getMESSAGE() {
        return MESSAGE;
    }
    public void setMESSAGE(String MESSAGE){
        this.MESSAGE = MESSAGE;
    }
    public InformationEntity(String ORG_NAME, int ID_USER, Date date, int STATE, String MESSAGE, String PRO_NAME, Integer ID_ORGANIZATION, Integer ID_PROJECT) {
        this.ORG_NAME = ORG_NAME;
        this.ID_USER = ID_USER;
        this.date = date;
        this.STATE = STATE;
        this.MESSAGE = MESSAGE;
        this.PRO_NAME = PRO_NAME;
        this.ID_ORGANIZATION = ID_ORGANIZATION;
        this.ID_PROJECT = ID_PROJECT;
    }

    public InformationEntity() {   }
}
