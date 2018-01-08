package entity;

import java.sql.Date;
import java.sql.Timestamp;

public class HistoryInfoEntity {
    private int ID_USER;
    private String CONTENT;
    private Timestamp DATE;
    private  int ADMIN_ID;
    private  String NAME;

    public int getID_USER() {
        return ID_USER;
    }

    public void setID_USER(int ID_USER) {
        this.ID_USER = ID_USER;
    }

    public String getCONTENT() {
        return CONTENT;
    }

    public void setCONTENT(String CONTENT) {
        this.CONTENT = CONTENT;
    }

    public Timestamp getDATE() {
        return DATE;
    }

    public void setDATE(Timestamp DATE) {
        this.DATE = DATE;
    }

    public int getADMIN_ID() {
        return ADMIN_ID;
    }

    public void setADMIN_ID(int ADMIN_ID) {
        this.ADMIN_ID = ADMIN_ID;
    }

    public String getNAME() {
        return NAME;
    }

    public void setNAME(String NAME) {
        this.NAME = NAME;
    }

    public HistoryInfoEntity() {
    }

    public HistoryInfoEntity(int ID_USER, String CONTENT, Timestamp DATE, int ADMIN_ID, String NAME) {
        this.ID_USER = ID_USER;
        this.CONTENT = CONTENT;
        this.DATE = DATE;
        this.ADMIN_ID = ADMIN_ID;
        this.NAME = NAME;
    }
}
