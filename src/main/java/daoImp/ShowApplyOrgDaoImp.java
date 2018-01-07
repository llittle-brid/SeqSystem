package daoImp;

import dao.DAO;
import dao.ShowApplyOrgDao;
import entity.ShowApplyOrganizationEntity;

import java.util.List;

public class ShowApplyOrgDaoImp extends DAO<ShowApplyOrganizationEntity> implements ShowApplyOrgDao {
    @Override
    public List<ShowApplyOrganizationEntity> getALL() {
        String sql="select * from VIEW_showAPPLYORG";
        List<ShowApplyOrganizationEntity> ShowApply = getForList(sql);
        return ShowApply;
    }
}
