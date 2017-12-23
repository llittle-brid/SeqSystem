package daoImp;

import dao.DAO;
import dao.ShowExitOrgDao;
import entity.ShowExitOrgEntity;

import java.util.List;

public class ShowExitOrgDaoImp extends DAO<ShowExitOrgEntity> implements ShowExitOrgDao {
    @Override
    public List<ShowExitOrgEntity> getALL() {
        String sql="select * from VIEW_showORG2";
        List<ShowExitOrgEntity> ShowOrg = getForList(sql);
        return ShowOrg;
    }
}
