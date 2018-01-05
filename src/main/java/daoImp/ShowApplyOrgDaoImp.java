package daoImp;

import dao.DAO;
import dao.ShowApplyOrgDao;
import entity.ShowApplyOrganizationEntity;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;

public class ShowApplyOrgDaoImp extends DAO<ShowApplyOrganizationEntity> implements ShowApplyOrgDao {
    @Override
    public List<ShowApplyOrganizationEntity> getALL() {
        String sql="select * from VIEW_showAPPLYORG where STATE=0";
        List<ShowApplyOrganizationEntity> ShowApply = getForList(sql);
        return ShowApply;
    }

    @Override
    public List<ShowApplyOrganizationEntity> getOthers() {
        String sql="select * from VIEW_showAPPLYORG where STATE=1 or STATE=-1";
        List<ShowApplyOrganizationEntity> ShowOthers = getForList(sql);
        return ShowOthers;
    }

    @Override
    public ShowApplyOrganizationEntity getOne(int id) {
        String sql="select * from VIEW_showAPPLYORG where ID_ORG_APPLY=?";
        ShowApplyOrganizationEntity One= get(sql,id);
        return One;
    }

    @Override
    public List<ShowApplyOrganizationEntity> createOrg(ShowApplyOrganizationEntity create) {
        String sql1="update ORG_APPLY set STATE=1 where ID_ORG_APPLY=?";
        String sql2="insert into ORGANIZATION (NAME,ID_USER,TIME) value(?,?,?)";
        String sql3="select ID_ORGANIZATION from ORGANIZATION where NAME=?";
        String sql4="insert into ORG_MEMBER (ID_USER,ID_ORGANIZATION) value(?,?)";
        Timestamp NowTime = new Timestamp(new java.util.Date().getTime());
        update(sql1,create.getId_org_apply());
        update(sql2,create.getOrg_name(),create.getId_user(),NowTime);
        int id_org=getForValue(sql3,create.getOrg_name())
;       update(sql4,create.getId_user(),id_org);
        String sql="select * from VIEW_showAPPLYORG where STATE=0";
        List<ShowApplyOrganizationEntity> ShowApply = getForList(sql);
        return ShowApply;
    }

    @Override
    public boolean refuseOrg(ShowApplyOrganizationEntity refuse) {
        String sql1="update ORG_APPLY set STATE=-1 where ID_ORG_APPLY=?";
        update(sql1,refuse.getId_org_apply());
        return true;
    }
}
