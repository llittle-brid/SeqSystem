package daoImp;

import dao.DAO;
import dao.OrgInviteDao;
import entity.OrgInviteEntity;

import java.sql.Timestamp;
import java.util.List;

public class OrgInviteDaoImp extends DAO<OrgInviteEntity> implements OrgInviteDao {
    @Override
    public boolean inviteUser(OrgInviteEntity a) {
        String sql1 = "select ID_USER from USER where NAME = ?";
        int id_user = getForValue(sql1,a.getUSER_NAME());
        String sql2 = "select ID_ORGANIZATION from ORGANIZATION where NAME=?";
        int id_org = getForValue(sql2,a.getORG_NAME());
        Timestamp date = new Timestamp(new java.util.Date().getTime());
        String sql3 = "insert into ORG_USER_APPLY (ID_ORGANIZATION,ID_USER,DATE,MESSAGE) value(?,?,?,?)";
        update(sql3,id_org,id_user,date,a.getMESSAGE());
        return true;
    }

    @Override
    public boolean reInviteUser(OrgInviteEntity a) {
        String sql1 = "select ID_USER from USER where NAME = ?";
        int id_user = getForValue(sql1,a.getUSER_NAME());
        String sql2 = "select ID_ORGANIZATION from ORGANIZATION where NAME=?";
        int id_org = getForValue(sql2,a.getORG_NAME());
        Timestamp date = new Timestamp(new java.util.Date().getTime());
        String sql3 = "update ORG_USER_APPLY set STATE = 0,DATE=? where ID_USER=? and ID_ORGANIZATION=?";
        update(sql3,date,id_user,id_org);
        return true;
    }

    @Override
    public List<OrgInviteEntity> getlist(String name) {
        String sql1="select * from VIEW_showORGINVITE where ORG_NAME=?";
        List<OrgInviteEntity> list=getForList(sql1,name);
        return list;
    }

    @Override
    public boolean grantOrg(int advance_id, int current_id , String org_name) {
        String sql1="update ORGANIZATION set ID_USER=? where NAME=?";
        update(sql1,current_id,org_name);
        return true;
    }

    @Override
    public boolean deleteUser(int user_id, String org_name) {
        String sql1="select ID_ORGANIZATION from ORGANIZATION where NAME=?";
        int org_id = getForValue(sql1,org_name);
        String sql2="delete from ORG_MEMBER where ID_USER=? and ID_ORGANIZATION=?";
        update(sql2,user_id,org_id);
        return true;
    }
}
