package entity;

public class UserStructureEntity {
    private String roleName;
    private String describe;
    private String permissions;

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public String getPermissions() {
        return permissions;
    }

    public void setPermissions(String permissions) {
        this.permissions = permissions;
    }

    public UserStructureEntity(String roleName, String describe, String permissions) {
        this.roleName = roleName;
        this.describe = describe;
        this.permissions = permissions;
    }

    public UserStructureEntity() {
    }
}
