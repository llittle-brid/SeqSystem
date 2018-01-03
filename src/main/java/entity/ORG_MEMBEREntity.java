package entity;

public class ORG_MEMBEREntity {
    private int ID_ORG_MEMBER;
    private int IDofUSER;
    private int IDofORGANIZATION;
    //获取编号
    public int getID_ORG_MEMBER() {
        return ID_ORG_MEMBER;
    }
    public void setID_ORG_MEMBER(int ID_ORG_MEMBER) {
        this.ID_ORG_MEMBER = ID_ORG_MEMBER;
    }
    //获取用户ID
    public int getIDofUSER() {
        return IDofUSER;
    }
    public void setIDofUSER(int IDofUSER) {
        this.IDofUSER = IDofUSER;
    }
    //获取机构ID
    public int getIDofORGANIZATION() {
        return IDofORGANIZATION;
    }
    public void setIDofORGANIZATION(int IDofORGANIZATION) {
        this.IDofORGANIZATION = IDofORGANIZATION;
    }
    public ORG_MEMBEREntity(int ID_ORG_MEMBER, int IDofUSER, int IDofORGANIZATION) {
        this.ID_ORG_MEMBER = ID_ORG_MEMBER;
        this.IDofUSER = IDofUSER;
        this.IDofORGANIZATION = IDofORGANIZATION;
    }

    public ORG_MEMBEREntity() {   }
}
