//        Created by IntelliJ IDEA.
//        User: wwc
//        Date: 22/12/2017
//        Time: 15:55

package entity;

public class PersonalCenterEntity {
    int ID_ORGANIZATION;
    String ORGANIZATIONNAME;
    String ADMIN_NME;
    int NUM_USER;
    int ID_USER;

//获取机构ID
    public int getID_ORGANIZATION() {
        return ID_ORGANIZATION;
    }

    public void setID_ORGANIZATION(int ID_ORGANIZATION) {
        this.ID_ORGANIZATION = ID_ORGANIZATION;
    }
//获取机构名称
    public String getORGANIZATIONNAME() {
        return ORGANIZATIONNAME;
    }

    public void setORGANIZATIONNAME(String ORGANIZATIONNAME) {
        this.ORGANIZATIONNAME = ORGANIZATIONNAME;
    }

//获取管理员名字
    public String  getADMIN_NME() {
        return ADMIN_NME;
    }

    public void setADMIN_NME(String ADMIN_NME) {
        this.ADMIN_NME = ADMIN_NME;
    }

//获取机构下属人数
    public int getNUM_USER() {
        return NUM_USER;
    }

    public void setNUM_USER(int NUM_USER) {
        this.NUM_USER = NUM_USER;
    }
//获取机构下的每个人ID
    public int getID_USER() {
        return ID_USER;
    }

    public void setID_USER(int ID_USER) {
        this.ID_USER = ID_USER;
    }

    public PersonalCenterEntity(int ID_ORGANIZATION, String ORGANIZATIONNAME, String ADMIN_NME, int NUM_USER, int ID_USER) {
        this.ID_ORGANIZATION = ID_ORGANIZATION;
        this.ORGANIZATIONNAME = ORGANIZATIONNAME;
        this.ADMIN_NME = ADMIN_NME;
        this.NUM_USER = NUM_USER;
        this.ID_USER = ID_USER;
    }

    public PersonalCenterEntity() {
    }
}
