package daoImp;

import dao.AllOrgMemberDao;
import dao.DAO;
import entity.ShowAllOrgMemEntity;
import java.util.List;


public class AllOrgMemberDaoImp extends DAO<ShowAllOrgMemEntity> implements AllOrgMemberDao {
    @Override
    public List<ShowAllOrgMemEntity> getAllMember() {
        String sql = "select * from VIEW_showORGMEMBER";
        List<ShowAllOrgMemEntity> list=getForList(sql);
        return list;
    }
}
