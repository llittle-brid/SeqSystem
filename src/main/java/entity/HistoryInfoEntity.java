package entity;

import java.sql.Date;

public class HistoryInfoEntity {
    private int ID_USER;
    private String CONTENT;
    private Date DATE;
    private  int ADMIN_ID;
    private  String NAME;

    public int getID_USER() {
        return ID_USER;
    }

    public void setID_USER(int ID_USER) {
        this.ID_USER = ID_USER;
    }

    public int getADMIN_ID() {
        return ADMIN_ID;
    }

    public void setADMIN_ID(int ADMIN_ID) {
        this.ADMIN_ID = ADMIN_ID;
    }

    public Date getDate() {
        return DATE;
    }

    public void setDATE(Date DATE) {
        this.DATE = DATE;
    }

    public String  getCONTENT() {
        return CONTENT;
    }

    public void setCONTENT(String CONTENT) {
        this.CONTENT = CONTENT;
    }

    public String  getNAME() {
        return NAME;
    }

    public void setNAME(String NAME) {
        this.NAME = NAME;
    }

    public HistoryInfoEntity(){}
    public HistoryInfoEntity(int ID_USER, String CONTENT, Date DATE, int ADMIN_ID, String NAME) {
        this.ID_USER = ID_USER;
        this.DATE = DATE;
        this.CONTENT = CONTENT;
        this.ADMIN_ID = ADMIN_ID;
        this.NAME = NAME;
    }
}
