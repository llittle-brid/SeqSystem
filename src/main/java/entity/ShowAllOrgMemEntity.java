package entity;

import java.awt.peer.PanelPeer;

public class ShowAllOrgMemEntity {
    private int ID_ORGANIZATION;
    private int ID_USER;
    private String NAME;
    private String ADDRESS;
    private String QQ;
    private String MAIL;
    private String TEL;

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

    public String getNAME() {
        return NAME;
    }

    public void setNAME(String NAME) {
        this.NAME = NAME;
    }

    public String getADDRESS() {
        return ADDRESS;
    }

    public void setADDRESS(String ADDRESS) {
        this.ADDRESS = ADDRESS;
    }

    public String getQQ() {
        return QQ;
    }

    public void setQQ(String QQ) {
        this.QQ = QQ;
    }

    public String getMAIL() {
        return MAIL;
    }

    public void setMAIL(String MAIL) {
        this.MAIL = MAIL;
    }

    public String getTEL() {
        return TEL;
    }

    public void setTEL(String TEL) {
        this.TEL = TEL;
    }

    public ShowAllOrgMemEntity(int ID_ORGANIZATION, int ID_USER, String NAME, String ADDRESS, String QQ, String MAIL, String TEL) {
        this.ID_ORGANIZATION = ID_ORGANIZATION;
        this.ID_USER = ID_USER;
        this.NAME = NAME;
        this.ADDRESS = ADDRESS;
        this.QQ = QQ;
        this.MAIL = MAIL;
        this.TEL = TEL;
    }
}
