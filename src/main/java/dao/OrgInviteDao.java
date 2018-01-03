package dao;

import entity.OrgInviteEntity;

import java.util.List;

public interface OrgInviteDao {
    boolean inviteUser(OrgInviteEntity a);
    boolean reInviteUser(OrgInviteEntity a);
    List<OrgInviteEntity> getlist(String name);
    boolean grantOrg(int advance_id,int current_id,String org_name);
    boolean deleteUser(int id,String org_name);
}
