package entity;

public class OrgMemberEntity {
    private String user_name;
    private String user_id;
    private String org_name;
    private String org_id;

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getOrg_name() {
        return org_name;
    }

    public void setOrg_name(String org_name) {
        this.org_name = org_name;
    }

    public String getOrg_id() {
        return org_id;
    }

    public void setOrg_id(String org_id) {
        this.org_id = org_id;
    }

    public OrgMemberEntity(String user_name, String user_id, String org_name, String org_id) {
        this.user_name = user_name;
        this.user_id = user_id;
        this.org_name = org_name;
        this.org_id = org_id;
    }

    public OrgMemberEntity() {
    }
}
