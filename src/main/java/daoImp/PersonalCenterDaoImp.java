//        Created by IntelliJ IDEA.
//        User: wwc
//        Date: 22/12/2017
//        Time: 15:55

package daoImp;

import dao.DAO;
import dao.PersonalCenterDao;
import entity.PersonalCenterEntity;

import java.util.ArrayList;
import java.util.List;

public class PersonalCenterDaoImp extends DAO<PersonalCenterEntity> implements PersonalCenterDao {

    @Override
    public List<PersonalCenterEntity> getAll(int ID) {
        String sql = "select * from VIEW_showMYORG where ID_USER = ?";
        List list = new ArrayList();
        list = getForList(sql,ID);
        return list;
    }

    @Override
    public void quitorg(int ID,int ID_ORG){
        String sql = "delete from ORG_MEMBER where ID_USER = ? and ID_ORGANIZATION = ?";
        System.out.println("out of Org");
        update(sql,ID, ID_ORG);
    };
}
