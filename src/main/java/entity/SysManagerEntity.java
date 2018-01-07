package entity;

import java.sql.Timestamp;

public class SysManagerEntity {
    private int ID_ORGANIZATION;
    private String NAME;
    private int ID_USER;
    private Timestamp TIME;
    private String ADIMIN_NAME;
    private int COUNT_PROJECT;
    private int NUMBER_USER;

    public int getID_ORGANIZATION() {
        return ID_ORGANIZATION;
    }

    public void setID_ORGANIZATION(int ID_ORGANIZATION) {
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

    public Timestamp getTIME() {
        return TIME;
    }

    public void setTIME(Timestamp TIME) {
        this.TIME = TIME;
    }

    public String getADIMIN_NAME() {
        return ADIMIN_NAME;
    }

    public void setADIMIN_NAME(String ADIMIN_NAME) {
        this.ADIMIN_NAME = ADIMIN_NAME;
    }

    public int getCOUNT_PROJECT() {
        return COUNT_PROJECT;
    }

    public void setCOUNT_PROJECT(int COUNT_PROJECT) {
        this.COUNT_PROJECT = COUNT_PROJECT;
    }

    public int getNUMBER_USER() {
        return NUMBER_USER;
    }

    public void setNUMBER_USER(int NUMBER_USER) {
        this.NUMBER_USER = NUMBER_USER;
    }

    public SysManagerEntity(int ID_ORGANIZATION, String NAME, int ID_USER, Timestamp TIME, String ADIMIN_NAME, int COUNT_PROJECT, int NUMBER_USER) {
        this.ID_ORGANIZATION = ID_ORGANIZATION;
        this.NAME = NAME;
        this.ID_USER = ID_USER;
        this.TIME = TIME;
        this.ADIMIN_NAME = ADIMIN_NAME;
        this.COUNT_PROJECT = COUNT_PROJECT;
        this.NUMBER_USER = NUMBER_USER;
    }

    public SysManagerEntity() {
    }
}