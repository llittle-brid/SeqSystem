package entity;

import java.sql.Date;
import java.sql.Timestamp;

public class InformationEntity {
    /**
     * 下面是机构请求的内容
     */
    private String ORG_NAME;
    private  Integer ID_ORGANIZATION;
    private String NAME;
    /**
     * 下面为公用字段
     */
    private int ID_USER;
    private Timestamp DATE;
    private int STATE;
    private String MESSAGE;
    /**
     * 下面是项目请求视图的内容
     */
    private String PRO_NAME;
    private  Integer ID_PROJECT;
    //获取机构名


    public String getORG_NAME() {
        return ORG_NAME;
    }

    public void setORG_NAME(String ORG_NAME) {
        this.ORG_NAME = ORG_NAME;
    }

    public Integer getID_ORGANIZATION() {
        return ID_ORGANIZATION;
    }

    public void setID_ORGANIZATION(Integer ID_ORGANIZATION) {
        this.ID_ORGANIZATION = ID_ORGANIZATION;
    }

    public String getNAME() {
        return NAME;
    }

    public void setNAME(String NAME) {
        this.NAME = NAME;
    }

    public int getID_USER() {
        return ID_USER;
    }

    public void setID_USER(int ID_USER) {
        this.ID_USER = ID_USER;
    }

    public Timestamp getDATE() {
        return DATE;
    }

    public void setDATE(Timestamp DATE) {
        this.DATE = DATE;
    }

    public int getSTATE() {
        return STATE;
    }

    public void setSTATE(int STATE) {
        this.STATE = STATE;
    }

    public String getMESSAGE() {
        return MESSAGE;
    }

    public void setMESSAGE(String MESSAGE) {
        this.MESSAGE = MESSAGE;
    }

    public String getPRO_NAME() {
        return PRO_NAME;
    }

    public void setPRO_NAME(String PRO_NAME) {
        this.PRO_NAME = PRO_NAME;
    }

    public Integer getID_PROJECT() {
        return ID_PROJECT;
    }

    public void setID_PROJECT(Integer ID_PROJECT) {
        this.ID_PROJECT = ID_PROJECT;
    }

    public InformationEntity() {
    }

    public InformationEntity(String ORG_NAME, Integer ID_ORGANIZATION, String NAME, int ID_USER, Timestamp DATE, int STATE, String MESSAGE, String PRO_NAME, Integer ID_PROJECT) {
        this.ORG_NAME = ORG_NAME;
        this.ID_ORGANIZATION = ID_ORGANIZATION;
        this.NAME = NAME;
        this.ID_USER = ID_USER;
        this.DATE = DATE;
        this.STATE = STATE;
        this.MESSAGE = MESSAGE;
        this.PRO_NAME = PRO_NAME;
        this.ID_PROJECT = ID_PROJECT;
    }
}
