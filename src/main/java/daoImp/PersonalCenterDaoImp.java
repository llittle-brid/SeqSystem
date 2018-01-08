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
    public boolean quitorg(int ID,int ID_ORG){
        String sql0 = "select ID_USER from ORGANIZATION where ID_ORGANIZATION = ?";
        int ID_USER = getForValue(sql0,ID_ORG);
        if(ID == ID_USER){
            return false;
        }
        else{
            String sql1 = "delete from ORG_MEMBER where ID_USER = ? and ID_ORGANIZATION = ?";
            System.out.println("out of Org");
            update(sql1,ID, ID_ORG);
            return true;
        }
    };
}
