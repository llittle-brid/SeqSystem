//        Created by IntelliJ IDEA.
//        User: wwc
//        Date: 22/12/2017
//        Time: 15:55

package entity;

import java.sql.Date;

public class SysManagerEntity {
    int ID_ORGANIZATION;
    String NAME;
    int ID_USER;
    Date TIME;
    String ADIMIN_NAME;
    int COUNT_PROJECT;
    int NUMBER_USER;

//获取机构ID
    public int getID_ORGANIZATION() {
        return ID_ORGANIZATION;
    }

    public void setID_ORGANIZATION(int ID_ORGANIZATION) {
        this.ID_ORGANIZATION = ID_ORGANIZATION;
    }
//获取机构名称
    public String getNAME() {
        return NAME;
    }

    public void setNAME(String NAME) {
        this.NAME = NAME;
    }
//获取机构管理员ID
    public int getID_USER() {
        return ID_USER;
    }

    public void setID_USER(int ID_USER) {
        this.ID_USER = ID_USER;
    }
//获取管理员名字
    public String  getADIMIN_NAME() {
        return ADIMIN_NAME;
    }

    public void setADIMIN_NAME(String ADIMIN_NAME) {
        this.ADIMIN_NAME = ADIMIN_NAME;
    }
//获取机构创建时间
    public Date getTIME() {
        return TIME;
    }

    public void setTIME(Date TIME) {
        this.TIME = TIME;
    }
//获取机构下属项目数
    public int getCOUNT_PROJECT() {
        return COUNT_PROJECT;
    }

    public void setCOUNT_PROJECT(int COUNT_PROJECT) {
        this.COUNT_PROJECT = COUNT_PROJECT;
    }
//获取机构下属人数
    public int getNUMBER_USER() {
        return NUMBER_USER;
    }

    public void setNUMBER_USER(int NUMBER_USER) {
        this.NUMBER_USER = NUMBER_USER;
    }

    public SysManagerEntity(int ID_ORGANIZATION, String NAME, int ID_USER, Date TIME, String ADIMIN_NAME, int COUNT_PROJECT, int NUMBER_USER) {
        this.ID_ORGANIZATION = ID_ORGANIZATION;
        this.ID_USER = ID_USER;
        this.NAME = NAME;
        this.TIME = TIME;
        this.ADIMIN_NAME = ADIMIN_NAME;
        this.COUNT_PROJECT = COUNT_PROJECT;
        this.NUMBER_USER = NUMBER_USER;
    }

    public SysManagerEntity() {
    }
}
