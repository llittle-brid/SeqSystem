package daoImp;
import dao.AllOrgMemberDao;
import dao.DAO;
import entity.ShowAllOrgMemEntity;
import java.util.List;


public class AllOrgMemberDaoImp extends DAO<ShowAllOrgMemEntity> implements AllOrgMemberDao {
    @Override
    public List<ShowAllOrgMemEntity> getAllMember() {
        System.out.println("location:getAllMember1");
        String sql = "select * from VIEW_showORGMEMBER";
        System.out.println("location:getAllMember2");
        List<ShowAllOrgMemEntity> list=getForList(sql);
        System.out.println("location:getAllMember3");
        return list;
    }
}
